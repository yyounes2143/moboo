package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbnp implements zzcah {
    final /* synthetic */ zzbny zza;
    final /* synthetic */ zzfhc zzb;
    final /* synthetic */ zzbnz zzc;

    public zzbnp(zzbnz zzbnzVar, zzbny zzbnyVar, zzfhc zzfhcVar) {
        this.zza = zzbnyVar;
        this.zzb = zzfhcVar;
        this.zzc = zzbnzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcah
    public final void zza() {
        Object obj;
        zzfhq zzfhqVar;
        zzfhq zzfhqVar2;
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Trying to acquire lock");
        zzbnz zzbnzVar = this.zzc;
        obj = zzbnzVar.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Lock acquired");
                zzbnzVar.zzi = 1;
                com.google.android.gms.ads.internal.util.zze.zza("Failed loading new engine. Marking new engine destroyable.");
                this.zza.zzb();
                if (((Boolean) zzbeo.zzd.zze()).booleanValue()) {
                    zzfhqVar = zzbnzVar.zze;
                    if (zzfhqVar != null) {
                        zzfhqVar2 = zzbnzVar.zze;
                        zzfhc zzfhcVar = this.zzb;
                        zzfhcVar.zzc("Failed loading new engine");
                        zzfhcVar.zzg(false);
                        zzfhqVar2.zzc(zzfhcVar.zzm());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Lock released");
    }
}
