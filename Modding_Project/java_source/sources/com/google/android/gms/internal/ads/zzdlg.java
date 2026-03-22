package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdlg implements zzgcu {
    final /* synthetic */ zzdrl zza;
    final /* synthetic */ zzdlh zzb;

    public zzdlg(zzdlh zzdlhVar, zzdrl zzdrlVar) {
        this.zza = zzdrlVar;
        this.zzb = zzdlhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zzb(Object obj) {
        zzdrx zzdrxVar;
        zzdrxVar = this.zzb.zzd;
        zzdrxVar.zza().putLong(this.zza.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
    }
}
