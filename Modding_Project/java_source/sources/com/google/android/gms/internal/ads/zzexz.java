package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzexz implements zzelg {
    final /* synthetic */ zzeya zza;

    public zzexz(zzeya zzeyaVar) {
        this.zza = zzeyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final void zza() {
        zzeya zzeyaVar = this.zza;
        synchronized (zzeyaVar) {
            zzeyaVar.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzexs zzexsVar;
        zzexs zzexsVar2;
        zzdsd zzdsdVar;
        zzcoj zzcojVar = (zzcoj) obj;
        zzeya zzeyaVar = this.zza;
        synchronized (zzeyaVar) {
            try {
                zzcoj zzcojVar2 = zzeyaVar.zza;
                if (zzcojVar2 != null) {
                    zzcojVar2.zzb();
                }
                zzeyaVar.zza = zzcojVar;
                zzcojVar.zzc(zzeyaVar);
                zzexsVar = zzeyaVar.zzg;
                zzexsVar2 = zzeyaVar.zzg;
                zzdsdVar = zzeyaVar.zzi;
                zzexsVar.zzk(new zzcok(zzcojVar, zzeyaVar, zzexsVar2, zzdsdVar));
                zzcojVar.zzk();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
