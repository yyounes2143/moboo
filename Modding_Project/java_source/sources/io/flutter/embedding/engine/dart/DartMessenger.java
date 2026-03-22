package io.flutter.embedding.engine.dart;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.dart.DartMessenger;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.util.TraceSection;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class DartMessenger implements BinaryMessenger, PlatformMessageHandler {
    private static final String TAG = "DartMessenger";
    @NonNull
    private Map<String, List<BufferedMessageInfo>> bufferedMessages;
    @NonNull
    private WeakHashMap<BinaryMessenger.TaskQueue, DartMessengerTaskQueue> createdTaskQueues;
    @NonNull
    private final AtomicBoolean enableBufferingIncomingMessages;
    @NonNull
    private final FlutterJNI flutterJNI;
    @NonNull
    private final Object handlersLock;
    @NonNull
    private final Map<String, HandlerInfo> messageHandlers;
    private int nextReplyId;
    @NonNull
    private final Map<Integer, BinaryMessenger.BinaryReply> pendingReplies;
    @NonNull
    private final DartMessengerTaskQueue platformTaskQueue;
    @NonNull
    private TaskQueueFactory taskQueueFactory;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class BufferedMessageInfo {
        @NonNull
        public final ByteBuffer message;
        long messageData;
        int replyId;

        public BufferedMessageInfo(@NonNull ByteBuffer byteBuffer, int i, long j) {
            this.message = byteBuffer;
            this.replyId = i;
            this.messageData = j;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class ConcurrentTaskQueue implements DartMessengerTaskQueue {
        @NonNull
        private final ExecutorService executor;

        public ConcurrentTaskQueue(ExecutorService executorService) {
            this.executor = executorService;
        }

        @Override // io.flutter.embedding.engine.dart.DartMessenger.DartMessengerTaskQueue
        public void dispatch(@NonNull Runnable runnable) {
            this.executor.execute(runnable);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface DartMessengerTaskQueue {
        void dispatch(@NonNull Runnable runnable);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class DefaultTaskQueueFactory implements TaskQueueFactory {
        ExecutorService executorService = FlutterInjector.instance().executorService();

        @Override // io.flutter.embedding.engine.dart.DartMessenger.TaskQueueFactory
        public DartMessengerTaskQueue makeBackgroundTaskQueue(BinaryMessenger.TaskQueueOptions taskQueueOptions) {
            if (taskQueueOptions.getIsSerial()) {
                return new SerialTaskQueue(this.executorService);
            }
            return new ConcurrentTaskQueue(this.executorService);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class HandlerInfo {
        @NonNull
        public final BinaryMessenger.BinaryMessageHandler handler;
        @Nullable
        public final DartMessengerTaskQueue taskQueue;

        public HandlerInfo(@NonNull BinaryMessenger.BinaryMessageHandler binaryMessageHandler, @Nullable DartMessengerTaskQueue dartMessengerTaskQueue) {
            this.handler = binaryMessageHandler;
            this.taskQueue = dartMessengerTaskQueue;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Reply implements BinaryMessenger.BinaryReply {
        private final AtomicBoolean done = new AtomicBoolean(false);
        @NonNull
        private final FlutterJNI flutterJNI;
        private final int replyId;

        public Reply(@NonNull FlutterJNI flutterJNI, int i) {
            this.flutterJNI = flutterJNI;
            this.replyId = i;
        }

        @Override // io.flutter.plugin.common.BinaryMessenger.BinaryReply
        public void reply(@Nullable ByteBuffer byteBuffer) {
            if (!this.done.getAndSet(true)) {
                if (byteBuffer == null) {
                    this.flutterJNI.invokePlatformMessageEmptyResponseCallback(this.replyId);
                    return;
                } else {
                    this.flutterJNI.invokePlatformMessageResponseCallback(this.replyId, byteBuffer, byteBuffer.position());
                    return;
                }
            }
            throw new IllegalStateException("Reply already submitted");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SerialTaskQueue implements DartMessengerTaskQueue {
        @NonNull
        private final ExecutorService executor;
        @NonNull
        private final ConcurrentLinkedQueue<Runnable> queue = new ConcurrentLinkedQueue<>();
        @NonNull
        private final AtomicBoolean isRunning = new AtomicBoolean(false);

        public SerialTaskQueue(ExecutorService executorService) {
            this.executor = executorService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void flush() {
            if (this.isRunning.compareAndSet(false, true)) {
                try {
                    Runnable poll = this.queue.poll();
                    if (poll != null) {
                        poll.run();
                    }
                } finally {
                    this.isRunning.set(false);
                    if (!this.queue.isEmpty()) {
                        this.executor.execute(new Runnable() { // from class: io.flutter.embedding.engine.dart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                DartMessenger.SerialTaskQueue.this.flush();
                            }
                        });
                    }
                }
            }
        }

        @Override // io.flutter.embedding.engine.dart.DartMessenger.DartMessengerTaskQueue
        public void dispatch(@NonNull Runnable runnable) {
            this.queue.add(runnable);
            this.executor.execute(new Runnable() { // from class: io.flutter.embedding.engine.dart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    DartMessenger.SerialTaskQueue.this.flush();
                }
            });
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TaskQueueFactory {
        DartMessengerTaskQueue makeBackgroundTaskQueue(BinaryMessenger.TaskQueueOptions taskQueueOptions);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TaskQueueToken implements BinaryMessenger.TaskQueue {
        private TaskQueueToken() {
        }
    }

    public DartMessenger(@NonNull FlutterJNI flutterJNI, @NonNull TaskQueueFactory taskQueueFactory) {
        this.messageHandlers = new HashMap();
        this.bufferedMessages = new HashMap();
        this.handlersLock = new Object();
        this.enableBufferingIncomingMessages = new AtomicBoolean(false);
        this.pendingReplies = new HashMap();
        this.nextReplyId = 1;
        this.platformTaskQueue = new PlatformTaskQueue();
        this.createdTaskQueues = new WeakHashMap<>();
        this.flutterJNI = flutterJNI;
        this.taskQueueFactory = taskQueueFactory;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DartMessenger dartMessenger, String str, int i, HandlerInfo handlerInfo, ByteBuffer byteBuffer, long j) {
        dartMessenger.getClass();
        TraceSection.endAsyncSection("PlatformChannel ScheduleHandler on " + str, i);
        try {
            TraceSection scoped = TraceSection.scoped("DartMessenger#handleMessageFromDart on " + str);
            dartMessenger.invokeHandler(handlerInfo, byteBuffer, i);
            if (byteBuffer != null && byteBuffer.isDirect()) {
                byteBuffer.limit(0);
            }
            if (scoped != null) {
                scoped.close();
            }
        } finally {
            dartMessenger.flutterJNI.cleanupMessageData(j);
        }
    }

    private void dispatchMessageToQueue(@NonNull final String str, @Nullable final HandlerInfo handlerInfo, @Nullable final ByteBuffer byteBuffer, final int i, final long j) {
        DartMessengerTaskQueue dartMessengerTaskQueue;
        if (handlerInfo != null) {
            dartMessengerTaskQueue = handlerInfo.taskQueue;
        } else {
            dartMessengerTaskQueue = null;
        }
        DartMessengerTaskQueue dartMessengerTaskQueue2 = dartMessengerTaskQueue;
        TraceSection.beginAsyncSection("PlatformChannel ScheduleHandler on " + str, i);
        Runnable runnable = new Runnable() { // from class: io.flutter.embedding.engine.dart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                DartMessenger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DartMessenger.this, str, i, handlerInfo, byteBuffer, j);
            }
        };
        if (dartMessengerTaskQueue2 == null) {
            dartMessengerTaskQueue2 = this.platformTaskQueue;
        }
        dartMessengerTaskQueue2.dispatch(runnable);
    }

    private static void handleError(Error error) {
        Thread currentThread = Thread.currentThread();
        if (currentThread.getUncaughtExceptionHandler() != null) {
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, error);
            return;
        }
        throw error;
    }

    private void invokeHandler(@Nullable HandlerInfo handlerInfo, @Nullable ByteBuffer byteBuffer, int i) {
        if (handlerInfo != null) {
            try {
                Log.v(TAG, "Deferring to registered handler to process message.");
                handlerInfo.handler.onMessage(byteBuffer, new Reply(this.flutterJNI, i));
                return;
            } catch (Error e) {
                handleError(e);
                return;
            } catch (Exception e2) {
                Log.e(TAG, "Uncaught exception in binary message listener", e2);
                this.flutterJNI.invokePlatformMessageEmptyResponseCallback(i);
                return;
            }
        }
        Log.v(TAG, "No registered handler for message. Responding to Dart with empty reply message.");
        this.flutterJNI.invokePlatformMessageEmptyResponseCallback(i);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void disableBufferingIncomingMessages() {
        Map<String, List<BufferedMessageInfo>> map;
        synchronized (this.handlersLock) {
            this.enableBufferingIncomingMessages.set(false);
            map = this.bufferedMessages;
            this.bufferedMessages = new HashMap();
        }
        for (Map.Entry<String, List<BufferedMessageInfo>> entry : map.entrySet()) {
            for (BufferedMessageInfo bufferedMessageInfo : entry.getValue()) {
                dispatchMessageToQueue(entry.getKey(), null, bufferedMessageInfo.message, bufferedMessageInfo.replyId, bufferedMessageInfo.messageData);
            }
        }
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void enableBufferingIncomingMessages() {
        this.enableBufferingIncomingMessages.set(true);
    }

    @UiThread
    public int getPendingChannelResponseCount() {
        return this.pendingReplies.size();
    }

    @Override // io.flutter.embedding.engine.dart.PlatformMessageHandler
    public void handleMessageFromDart(@NonNull String str, @Nullable ByteBuffer byteBuffer, int i, long j) {
        HandlerInfo handlerInfo;
        boolean z;
        Log.v(TAG, "Received message from Dart over channel '" + str + "'");
        synchronized (this.handlersLock) {
            try {
                handlerInfo = this.messageHandlers.get(str);
                if (this.enableBufferingIncomingMessages.get() && handlerInfo == null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    if (!this.bufferedMessages.containsKey(str)) {
                        this.bufferedMessages.put(str, new LinkedList());
                    }
                    this.bufferedMessages.get(str).add(new BufferedMessageInfo(byteBuffer, i, j));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            dispatchMessageToQueue(str, handlerInfo, byteBuffer, i, j);
        }
    }

    @Override // io.flutter.embedding.engine.dart.PlatformMessageHandler
    public void handlePlatformMessageResponse(int i, @Nullable ByteBuffer byteBuffer) {
        Log.v(TAG, "Received message reply from Dart.");
        BinaryMessenger.BinaryReply remove = this.pendingReplies.remove(Integer.valueOf(i));
        if (remove != null) {
            try {
                Log.v(TAG, "Invoking registered callback for reply from Dart.");
                remove.reply(byteBuffer);
                if (byteBuffer != null && byteBuffer.isDirect()) {
                    byteBuffer.limit(0);
                }
            } catch (Error e) {
                handleError(e);
            } catch (Exception e2) {
                Log.e(TAG, "Uncaught exception in binary message reply handler", e2);
            }
        }
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public /* synthetic */ BinaryMessenger.TaskQueue makeBackgroundTaskQueue() {
        return io.flutter.plugin.common.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    @UiThread
    public void send(@NonNull String str, @NonNull ByteBuffer byteBuffer) {
        Log.v(TAG, "Sending message over channel '" + str + "'");
        send(str, byteBuffer, null);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void setMessageHandler(@NonNull String str, @Nullable BinaryMessenger.BinaryMessageHandler binaryMessageHandler) {
        setMessageHandler(str, binaryMessageHandler, null);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public BinaryMessenger.TaskQueue makeBackgroundTaskQueue(BinaryMessenger.TaskQueueOptions taskQueueOptions) {
        DartMessengerTaskQueue makeBackgroundTaskQueue = this.taskQueueFactory.makeBackgroundTaskQueue(taskQueueOptions);
        TaskQueueToken taskQueueToken = new TaskQueueToken();
        this.createdTaskQueues.put(taskQueueToken, makeBackgroundTaskQueue);
        return taskQueueToken;
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void setMessageHandler(@NonNull String str, @Nullable BinaryMessenger.BinaryMessageHandler binaryMessageHandler, @Nullable BinaryMessenger.TaskQueue taskQueue) {
        DartMessengerTaskQueue dartMessengerTaskQueue;
        if (binaryMessageHandler == null) {
            Log.v(TAG, "Removing handler for channel '" + str + "'");
            synchronized (this.handlersLock) {
                this.messageHandlers.remove(str);
            }
            return;
        }
        if (taskQueue != null) {
            dartMessengerTaskQueue = this.createdTaskQueues.get(taskQueue);
            if (dartMessengerTaskQueue == null) {
                throw new IllegalArgumentException("Unrecognized TaskQueue, use BinaryMessenger to create your TaskQueue (ex makeBackgroundTaskQueue).");
            }
        } else {
            dartMessengerTaskQueue = null;
        }
        Log.v(TAG, "Setting handler for channel '" + str + "'");
        synchronized (this.handlersLock) {
            try {
                this.messageHandlers.put(str, new HandlerInfo(binaryMessageHandler, dartMessengerTaskQueue));
                List<BufferedMessageInfo> remove = this.bufferedMessages.remove(str);
                if (remove == null) {
                    return;
                }
                for (BufferedMessageInfo bufferedMessageInfo : remove) {
                    dispatchMessageToQueue(str, this.messageHandlers.get(str), bufferedMessageInfo.message, bufferedMessageInfo.replyId, bufferedMessageInfo.messageData);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer, @Nullable BinaryMessenger.BinaryReply binaryReply) {
        TraceSection scoped = TraceSection.scoped("DartMessenger#send on " + str);
        try {
            Log.v(TAG, "Sending message with callback over channel '" + str + "'");
            int i = this.nextReplyId;
            this.nextReplyId = i + 1;
            if (binaryReply != null) {
                this.pendingReplies.put(Integer.valueOf(i), binaryReply);
            }
            if (byteBuffer == null) {
                this.flutterJNI.dispatchEmptyPlatformMessage(str, i);
            } else {
                this.flutterJNI.dispatchPlatformMessage(str, byteBuffer, byteBuffer.position(), i);
            }
            if (scoped != null) {
                scoped.close();
            }
        } catch (Throwable th) {
            if (scoped != null) {
                try {
                    scoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public DartMessenger(@NonNull FlutterJNI flutterJNI) {
        this(flutterJNI, new DefaultTaskQueueFactory());
    }
}
