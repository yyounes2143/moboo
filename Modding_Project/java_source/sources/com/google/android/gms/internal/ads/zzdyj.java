package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdyj implements zzcyv {
    private final Context zza;
    private final zzbyj zzb;

    public zzdyj(Context context, zzbyj zzbyjVar) {
        this.zza = context;
        this.zzb = zzbyjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdo(zzfcg zzfcgVar) {
        String str = zzfcgVar.zzb.zzb.zze;
        if (!TextUtils.isEmpty(str)) {
            zzbyj zzbyjVar = this.zzb;
            Context context = this.zza;
            zzbyjVar.zzm(context, zzfcgVar.zza.zza.zzd);
            zzbyjVar.zzi(context, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdn(zzbvl zzbvlVar) {
    }
}
