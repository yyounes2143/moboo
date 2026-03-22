package com.google.android.play.core.integrity;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private static s f7733a;

    public static synchronized s a(Context context) {
        s sVar;
        synchronized (z.class) {
            try {
                if (f7733a == null) {
                    q qVar = new q(null);
                    qVar.a(com.google.android.play.integrity.internal.ag.a(context));
                    f7733a = qVar.b();
                }
                sVar = f7733a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sVar;
    }
}
