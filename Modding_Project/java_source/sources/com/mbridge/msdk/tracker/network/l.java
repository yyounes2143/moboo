package com.mbridge.msdk.tracker.network;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class l {
    private static volatile l b;

    /* renamed from: a  reason: collision with root package name */
    private u f9678a;

    private l() {
    }

    public static l a() {
        if (b == null) {
            synchronized (l.class) {
                try {
                    if (b == null) {
                        b = new l();
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public u b() {
        if (this.f9678a == null) {
            u a2 = com.mbridge.msdk.tracker.network.toolbox.o.a(new com.mbridge.msdk.tracker.network.toolbox.b(new com.mbridge.msdk.tracker.network.toolbox.m()), null, 10, new com.mbridge.msdk.tracker.network.toolbox.l());
            this.f9678a = a2;
            a2.b();
        }
        return this.f9678a;
    }
}
