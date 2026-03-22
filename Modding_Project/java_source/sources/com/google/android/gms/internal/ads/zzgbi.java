package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgbi {
    public static byte zza(long j) {
        boolean z;
        if ((j >> 8) == 0) {
            z = true;
        } else {
            z = false;
        }
        zzfvc.zzh(z, "out of range: %s", j);
        return (byte) j;
    }
}
