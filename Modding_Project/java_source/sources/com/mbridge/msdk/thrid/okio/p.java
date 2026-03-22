package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class p {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    static o f9647a;
    static long b;

    private p() {
    }

    public static o a() {
        synchronized (p.class) {
            try {
                o oVar = f9647a;
                if (oVar != null) {
                    f9647a = oVar.f;
                    oVar.f = null;
                    b -= 8192;
                    return oVar;
                }
                return new o();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(o oVar) {
        if (oVar.f == null && oVar.g == null) {
            if (oVar.d) {
                return;
            }
            synchronized (p.class) {
                try {
                    long j = b + 8192;
                    if (j > 65536) {
                        return;
                    }
                    b = j;
                    oVar.f = f9647a;
                    oVar.c = 0;
                    oVar.b = 0;
                    f9647a = oVar;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
