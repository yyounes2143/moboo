package com.mbridge.msdk.dycreator.bus;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class BackgroundPoster implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final PendingPostQueue f8892a = new PendingPostQueue();
    private volatile boolean b;
    private final EventBus c;

    public BackgroundPoster(EventBus eventBus) {
        this.c = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        PendingPost a2 = PendingPost.a(subscription, obj);
        synchronized (this) {
            try {
                this.f8892a.a(a2);
                if (!this.b) {
                    this.b = true;
                    EventBus.n.execute(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                try {
                    PendingPost a2 = this.f8892a.a(1000);
                    if (a2 == null) {
                        synchronized (this) {
                            a2 = this.f8892a.a();
                            if (a2 == null) {
                                this.b = false;
                                this.b = false;
                                return;
                            }
                        }
                    }
                    this.c.a(a2);
                } catch (InterruptedException unused) {
                    Thread.currentThread().getName();
                    this.b = false;
                    return;
                }
            } catch (Throwable th) {
                this.b = false;
                throw th;
            }
        }
    }
}
