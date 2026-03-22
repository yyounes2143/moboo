package com.mbridge.msdk.foundation.same;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b {
    private static volatile b b;

    /* renamed from: a  reason: collision with root package name */
    private Boolean f9001a = null;

    private b() {
    }

    public static b b() {
        if (b == null) {
            synchronized (b.class) {
                try {
                    if (b == null) {
                        b = new b();
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public Boolean a() {
        return this.f9001a;
    }
}
