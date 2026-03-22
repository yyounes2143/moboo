package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeur implements zzetu {
    @VisibleForTesting
    final String zza;
    final int zzb;

    public /* synthetic */ zzeur(String str, int i, zzeuq zzeuqVar) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcuv zzcuvVar = (zzcuv) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkI)).booleanValue()) {
            String str = this.zza;
            if (!TextUtils.isEmpty(str)) {
                zzcuvVar.zza.putString("topics", str);
            }
            int i = this.zzb;
            if (i != -1) {
                zzcuvVar.zza.putInt("atps", i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
