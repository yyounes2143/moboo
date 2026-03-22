package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdnm implements zzgcu {
    final /* synthetic */ zzfbu zza;
    final /* synthetic */ zzfbx zzb;
    final /* synthetic */ zzcmn zzc;
    final /* synthetic */ zzdns zzd;

    public zzdnm(zzdns zzdnsVar, zzfbu zzfbuVar, zzfbx zzfbxVar, zzcmn zzcmnVar) {
        this.zza = zzfbuVar;
        this.zzb = zzfbxVar;
        this.zzc = zzcmnVar;
        this.zzd = zzdnsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzebt zzebtVar;
        zzfjr zzfjrVar;
        zzebt zzebtVar2;
        zzdsd zzdsdVar;
        zzcfb zzcfbVar = (zzcfb) obj;
        zzfbu zzfbuVar = this.zza;
        zzcfbVar.zzW(zzfbuVar, this.zzb);
        zzcgt zzN = zzcfbVar.zzN();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkt)).booleanValue() && zzN != null) {
            zzcmn zzcmnVar = this.zzc;
            zzdns zzdnsVar = this.zzd;
            zzebtVar = zzdnsVar.zzi;
            zzfjrVar = zzdnsVar.zzj;
            zzN.zzM(zzcmnVar, zzebtVar, zzfjrVar);
            zzebtVar2 = zzdnsVar.zzi;
            zzdsdVar = zzdnsVar.zzd;
            zzN.zzO(zzcmnVar, zzebtVar2, zzdsdVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznk)).booleanValue() && zzN != null) {
            zzN.zzP(zzfbuVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
    }
}
