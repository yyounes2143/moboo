package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegd implements zzgcu {
    final /* synthetic */ zzfbu zza;
    final /* synthetic */ zzege zzb;

    public zzegd(zzege zzegeVar, zzfbu zzfbuVar) {
        this.zza = zzfbuVar;
        this.zzb = zzegeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzegf zzegfVar;
        zzegf zzegfVar2;
        zzegf zzegfVar3;
        zzege zzegeVar = this.zzb;
        synchronized (zzegeVar) {
            try {
                zzegfVar = zzegeVar.zzh;
                zzfbu zzfbuVar = this.zza;
                zzegfVar.zzb(th, zzfbuVar);
                zzegfVar2 = zzegeVar.zzh;
                zzfbu zza = zzegfVar2.zza();
                if (zzfbuVar.zzav) {
                    while (zza != null) {
                        zzegeVar.zze(zza);
                        zzegfVar3 = zzegeVar.zzh;
                        zza = zzegfVar3.zza();
                    }
                } else if (zza != null) {
                    zzegeVar.zze(zza);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzegf zzegfVar;
        zzegf zzegfVar2;
        zzege zzegeVar = this.zzb;
        zzegv zzegvVar = (zzegv) obj;
        synchronized (zzegeVar) {
            try {
                zzegfVar = zzegeVar.zzh;
                zzegfVar.zzc(zzegvVar, this.zza);
                zzegfVar2 = zzegeVar.zzh;
                zzfbu zza = zzegfVar2.zza();
                if (zza != null) {
                    zzegeVar.zze(zza);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
