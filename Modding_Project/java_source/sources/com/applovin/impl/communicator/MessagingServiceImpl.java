package com.applovin.impl.communicator;

import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorMessagingService;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MessagingServiceImpl implements AppLovinCommunicatorMessagingService {

    /* renamed from: a  reason: collision with root package name */
    private ScheduledThreadPoolExecutor f3104a;
    private final Object b = new Object();
    private final Map c = new HashMap();
    private final Object d = new Object();

    private Queue a(String str) {
        LinkedList linkedList;
        synchronized (this.d) {
            try {
                Queue queue = (Queue) this.c.get(str);
                if (queue != null) {
                    linkedList = new LinkedList(queue);
                } else {
                    linkedList = new LinkedList();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return linkedList;
    }

    private void b(CommunicatorMessageImpl communicatorMessageImpl) {
        if (!communicatorMessageImpl.sticky) {
            return;
        }
        synchronized (this.d) {
            try {
                Queue queue = (Queue) this.c.get(communicatorMessageImpl.getTopic());
                if (queue != null) {
                    queue.add(communicatorMessageImpl);
                    if (queue.size() > 10) {
                        queue.remove();
                    }
                } else {
                    LinkedList linkedList = new LinkedList();
                    linkedList.add(communicatorMessageImpl);
                    this.c.put(communicatorMessageImpl.getTopic(), linkedList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void c(final CommunicatorMessageImpl communicatorMessageImpl) {
        ScheduledThreadPoolExecutor a2 = a();
        this.f3104a = a2;
        a2.execute(new Runnable() { // from class: com.applovin.impl.communicator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinBroadcastManager.sendBroadcastSync(CommunicatorMessageImpl.this, null);
            }
        });
    }

    public void maybeSendStickyMessages(String str) {
        for (CommunicatorMessageImpl communicatorMessageImpl : a(str)) {
            c(communicatorMessageImpl);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorMessagingService
    public void publish(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        c(appLovinCommunicatorMessage);
        b(appLovinCommunicatorMessage);
    }

    public String toString() {
        return "MessagingServiceImpl{}";
    }

    private ScheduledThreadPoolExecutor a() {
        synchronized (this.b) {
            try {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f3104a;
                if (scheduledThreadPoolExecutor != null) {
                    return scheduledThreadPoolExecutor;
                }
                return new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.applovin.impl.communicator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.util.concurrent.ThreadFactory
                    public final Thread newThread(Runnable runnable) {
                        Thread a2;
                        a2 = MessagingServiceImpl.a(runnable);
                        return a2;
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread a(Runnable runnable) {
        Thread thread = new Thread(runnable, "AppLovinSdk:communicator");
        thread.setPriority(1);
        thread.setDaemon(true);
        return thread;
    }
}
