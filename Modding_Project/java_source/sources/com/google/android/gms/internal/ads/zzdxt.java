package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdxt implements zzgcu {
    final /* synthetic */ zzdxu zza;

    public zzdxt(zzdxu zzdxuVar) {
        this.zza = zzdxuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcyt zzcytVar;
        zzfcg zzfcgVar = (zzfcg) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcv)).booleanValue()) {
            zzcytVar = this.zza.zzl;
            zzcytVar.zzdo(zzfcgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
    }
}
