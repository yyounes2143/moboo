package io.flutter.plugin.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface BinaryMessenger {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface BinaryMessageHandler {
        @UiThread
        void onMessage(@Nullable ByteBuffer byteBuffer, @NonNull BinaryReply binaryReply);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface BinaryReply {
        void reply(@Nullable ByteBuffer byteBuffer);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TaskQueue {
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TaskQueueOptions {
        private boolean isSerial = true;

        public boolean getIsSerial() {
            return this.isSerial;
        }

        public TaskQueueOptions setIsSerial(boolean z) {
            this.isSerial = z;
            return this;
        }
    }

    void disableBufferingIncomingMessages();

    void enableBufferingIncomingMessages();

    @UiThread
    TaskQueue makeBackgroundTaskQueue();

    @UiThread
    TaskQueue makeBackgroundTaskQueue(TaskQueueOptions taskQueueOptions);

    @UiThread
    void send(@NonNull String str, @Nullable ByteBuffer byteBuffer);

    @UiThread
    void send(@NonNull String str, @Nullable ByteBuffer byteBuffer, @Nullable BinaryReply binaryReply);

    @UiThread
    void setMessageHandler(@NonNull String str, @Nullable BinaryMessageHandler binaryMessageHandler);

    @UiThread
    void setMessageHandler(@NonNull String str, @Nullable BinaryMessageHandler binaryMessageHandler, @Nullable TaskQueue taskQueue);
}
