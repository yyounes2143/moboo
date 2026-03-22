package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzbex;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zze extends com.google.android.gms.ads.internal.util.client.zzo {
    public static final /* synthetic */ int zza = 0;

    public static void zza(String str) {
        if (zzc() && str != null && str.length() > 4000) {
            for (String str2 : com.google.android.gms.ads.internal.util.client.zzo.zzb.zzd(str)) {
            }
        }
    }

    public static void zzb(String str, Throwable th) {
        zzc();
    }

    public static boolean zzc() {
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(2) && ((Boolean) zzbex.zza.zze()).booleanValue()) {
            return true;
        }
        return false;
    }
}
