package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfbk implements zzelg {
    final /* synthetic */ zzfbl zza;

    public zzfbk(zzfbl zzfblVar) {
        this.zza = zzfblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final void zza() {
        zzfbl zzfblVar = this.zza;
        synchronized (zzfblVar) {
            zzfblVar.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdoh zzdohVar;
        zzfch zzfchVar;
        zzfbl zzfblVar = this.zza;
        zzdoh zzdohVar2 = (zzdoh) obj;
        synchronized (zzfblVar) {
            try {
                zzfblVar.zzi = zzdohVar2;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdP)).booleanValue()) {
                    zzfci zzd = zzdohVar2.zzd();
                    zzfchVar = zzfblVar.zzd;
                    zzd.zza = zzfchVar;
                }
                zzdohVar = zzfblVar.zzi;
                zzdohVar.zzk();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
