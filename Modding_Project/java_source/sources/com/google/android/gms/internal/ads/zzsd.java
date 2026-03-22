package com.google.android.gms.internal.ads;

import android.os.Build;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzsd {
    public static final boolean zza;

    static {
        boolean z = false;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z = true;
            }
        }
        zza = z;
    }
}
