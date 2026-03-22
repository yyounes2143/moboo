package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes4.dex */
public final class zzbdc {
    public static boolean zza(@Nullable zzbdk zzbdkVar, @Nullable zzbdh zzbdhVar, String... strArr) {
        if (zzbdhVar == null) {
            return false;
        }
        zzbdkVar.zze(zzbdhVar, com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime(), strArr);
        return true;
    }
}
