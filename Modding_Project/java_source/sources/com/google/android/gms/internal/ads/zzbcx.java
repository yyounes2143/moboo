package com.google.android.gms.internal.ads;

import android.os.StrictMode;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbcx {
    public static Object zza(zzfvu zzfvuVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return zzfvuVar.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
