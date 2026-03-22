package com.google.android.gms.common.util;

import android.os.Looper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zze {
    public static boolean zza() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return true;
        }
        return false;
    }
}
