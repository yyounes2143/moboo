package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdih implements zzgcu {
    final /* synthetic */ String zza = "Google";
    final /* synthetic */ zzdij zzb;

    public zzdih(zzdij zzdijVar, String str, boolean z) {
        this.zzb = zzdijVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfE)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "omid native display exp");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdio zzdioVar;
        zzdio zzdioVar2;
        zzdij zzdijVar = this.zzb;
        zzdioVar = zzdijVar.zze;
        zzdioVar.zzT((zzcfb) obj);
        zzdioVar2 = zzdijVar.zze;
        zzcaf zzp = zzdioVar2.zzp();
        zzeda zzf = zzdijVar.zzf(this.zza, true);
        if (zzf != null && zzp != null) {
            zzp.zzc(zzf);
        } else if (zzp != null) {
            zzp.cancel(false);
        }
    }
}
