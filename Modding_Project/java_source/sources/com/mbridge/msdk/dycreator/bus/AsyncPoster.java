package com.mbridge.msdk.dycreator.bus;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
class AsyncPoster implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final PendingPostQueue f8891a = new PendingPostQueue();
    private final EventBus b;

    public AsyncPoster(EventBus eventBus) {
        this.b = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        this.f8891a.a(PendingPost.a(subscription, obj));
        EventBus.n.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        PendingPost a2 = this.f8891a.a();
        if (a2 != null) {
            this.b.a(a2);
            return;
        }
        throw new IllegalStateException("No pending post available");
    }
}
