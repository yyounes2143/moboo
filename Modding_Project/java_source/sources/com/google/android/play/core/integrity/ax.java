package com.google.android.play.core.integrity;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class ax {

    /* renamed from: a  reason: collision with root package name */
    private static aw f7700a;

    public static synchronized aw a(Context context) {
        aw awVar;
        synchronized (ax.class) {
            try {
                if (f7700a == null) {
                    u uVar = new u(null);
                    uVar.a(com.google.android.play.integrity.internal.ag.a(context));
                    f7700a = uVar.b();
                }
                awVar = f7700a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return awVar;
    }
}
