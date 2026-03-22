package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbno implements zzcaj {
    final /* synthetic */ zzbny zza;
    final /* synthetic */ zzfhc zzb;
    final /* synthetic */ zzbnz zzc;

    public zzbno(zzbnz zzbnzVar, zzbny zzbnyVar, zzfhc zzfhcVar) {
        this.zza = zzbnyVar;
        this.zzb = zzfhcVar;
        this.zzc = zzbnzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcaj
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Object obj2;
        zzbny zzbnyVar;
        zzfhq zzfhqVar;
        zzfhq zzfhqVar2;
        zzbny zzbnyVar2;
        zzbny zzbnyVar3;
        zzbmu zzbmuVar = (zzbmu) obj;
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Trying to acquire lock");
        zzbnz zzbnzVar = this.zzc;
        obj2 = zzbnzVar.zza;
        synchronized (obj2) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Lock acquired");
                zzbnzVar.zzi = 0;
                zzbnyVar = zzbnzVar.zzh;
                if (zzbnyVar != null) {
                    zzbny zzbnyVar4 = this.zza;
                    zzbnyVar2 = zzbnzVar.zzh;
                    if (zzbnyVar4 != zzbnyVar2) {
                        com.google.android.gms.ads.internal.util.zze.zza("New JS engine is loaded, marking previous one as destroyable.");
                        zzbnyVar3 = zzbnzVar.zzh;
                        zzbnyVar3.zzb();
                    }
                }
                zzbnzVar.zzh = this.zza;
                if (((Boolean) zzbeo.zzd.zze()).booleanValue()) {
                    zzfhqVar = zzbnzVar.zze;
                    if (zzfhqVar != null) {
                        zzfhqVar2 = zzbnzVar.zze;
                        zzfhc zzfhcVar = this.zzb;
                        zzfhcVar.zzg(true);
                        zzfhqVar2.zzc(zzfhcVar.zzm());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Lock released");
    }
}
