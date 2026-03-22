package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfbp implements zzelg {
    final /* synthetic */ zzfbr zza;

    public zzfbp(zzfbr zzfbrVar) {
        this.zza = zzfbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final void zza() {
        zzfbr zzfbrVar = this.zza;
        synchronized (zzfbrVar) {
            zzfbrVar.zzd = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdoh zzdohVar;
        zzfch zzfchVar;
        zzfbr zzfbrVar = this.zza;
        zzdoh zzdohVar2 = (zzdoh) obj;
        synchronized (zzfbrVar) {
            try {
                zzfbrVar.zzd = zzdohVar2;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdP)).booleanValue()) {
                    zzfci zzd = zzdohVar2.zzd();
                    zzfchVar = zzfbrVar.zzc;
                    zzd.zza = zzfchVar;
                }
                zzdohVar = zzfbrVar.zzd;
                zzdohVar.zzk();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
