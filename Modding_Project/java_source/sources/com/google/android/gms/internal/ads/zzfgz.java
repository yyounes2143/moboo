package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfgz implements zzddd, zzcwj, zzddh {
    private final zzfhn zza;
    private final zzfhc zzb;

    public zzfgz(Context context, zzfhn zzfhnVar) {
        this.zza = zzfhnVar;
        this.zzb = zzfhb.zza(context, 13);
    }

    @Override // com.google.android.gms.internal.ads.zzddh
    public final void zzb() {
        if (((Boolean) zzbeo.zzd.zze()).booleanValue()) {
            zzfhn zzfhnVar = this.zza;
            zzfhc zzfhcVar = this.zzb;
            zzfhcVar.zzg(true);
            zzfhnVar.zza(zzfhcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddd
    public final void zzj() {
        if (((Boolean) zzbeo.zzd.zze()).booleanValue()) {
            this.zzb.zzi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwj
    public final void zzr(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbeo.zzd.zze()).booleanValue()) {
            zzfhn zzfhnVar = this.zza;
            zzfhc zzfhcVar = this.zzb;
            zzfhcVar.zzc(zzeVar.zza().toString());
            zzfhcVar.zzg(false);
            zzfhnVar.zza(zzfhcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddh
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzddd
    public final void zzi() {
    }
}
