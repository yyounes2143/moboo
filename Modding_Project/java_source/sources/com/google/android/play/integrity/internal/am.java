package com.google.android.play.integrity.internal;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class am {
    public static void a(Object obj, Class cls) {
        if (obj != null) {
            return;
        }
        throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
    }
}
