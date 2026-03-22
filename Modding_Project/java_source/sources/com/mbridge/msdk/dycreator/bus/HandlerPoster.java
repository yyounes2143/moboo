package com.mbridge.msdk.dycreator.bus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class HandlerPoster extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final PendingPostQueue f8898a;
    private final int b;
    private final EventBus c;
    private boolean d;

    public HandlerPoster(EventBus eventBus, Looper looper, int i) {
        super(looper);
        this.c = eventBus;
        this.b = i;
        this.f8898a = new PendingPostQueue();
    }

    public void a(Subscription subscription, Object obj) {
        PendingPost a2 = PendingPost.a(subscription, obj);
        synchronized (this) {
            try {
                this.f8898a.a(a2);
                if (!this.d) {
                    this.d = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new EventBusException("Could not send handler message");
                    }
                }
            } finally {
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                PendingPost a2 = this.f8898a.a();
                if (a2 == null) {
                    synchronized (this) {
                        a2 = this.f8898a.a();
                        if (a2 == null) {
                            this.d = false;
                            return;
                        }
                    }
                }
                this.c.a(a2);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.b);
            if (sendMessage(obtainMessage())) {
                this.d = true;
                return;
            }
            throw new EventBusException("Could not send handler message");
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }
}
