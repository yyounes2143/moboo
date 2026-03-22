package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcmr implements zzcvw {
    private final zzfbx zza;
    private final zzfcg zzb;
    private final zzfjn zzc;
    private final zzfjr zzd;

    public zzcmr(zzfcg zzfcgVar, zzfjr zzfjrVar, zzfjn zzfjnVar) {
        this.zzb = zzfcgVar;
        this.zzd = zzfjrVar;
        this.zzc = zzfjnVar;
        this.zza = zzfcgVar.zzb.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdD(com.google.android.gms.ads.internal.client.zze zzeVar) {
        List list = this.zza.zza;
        this.zzd.zze(this.zzc.zzd(this.zzb, null, list), null);
    }
}
