package com.mbridge.msdk.dycreator.bus;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class PendingPostQueue {

    /* renamed from: a  reason: collision with root package name */
    private PendingPost f8900a;
    private PendingPost b;

    public synchronized void a(PendingPost pendingPost) {
        try {
            if (pendingPost != null) {
                PendingPost pendingPost2 = this.b;
                if (pendingPost2 != null) {
                    pendingPost2.c = pendingPost;
                    this.b = pendingPost;
                } else if (this.f8900a == null) {
                    this.b = pendingPost;
                    this.f8900a = pendingPost;
                } else {
                    throw new IllegalStateException("Head present, but no tail");
                }
                notifyAll();
            } else {
                throw new NullPointerException("null cannot be enqueued");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized PendingPost a() {
        PendingPost pendingPost;
        pendingPost = this.f8900a;
        if (pendingPost != null) {
            PendingPost pendingPost2 = pendingPost.c;
            this.f8900a = pendingPost2;
            if (pendingPost2 == null) {
                this.b = null;
            }
        }
        return pendingPost;
    }

    public synchronized PendingPost a(int i) throws InterruptedException {
        try {
            if (this.f8900a == null) {
                wait(i);
            }
        } catch (Throwable th) {
            throw th;
        }
        return a();
    }
}
