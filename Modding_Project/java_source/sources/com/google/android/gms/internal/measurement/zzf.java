package com.google.android.gms.internal.measurement;

import com.google.common.annotations.VisibleForTesting;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzf {
    @VisibleForTesting
    final zzaw zza;
    @VisibleForTesting
    final zzg zzb;
    @VisibleForTesting
    final zzg zzc;
    @VisibleForTesting
    final zzj zzd;

    public zzf() {
        zzaw zzawVar = new zzaw();
        this.zza = zzawVar;
        zzg zzgVar = new zzg(null, zzawVar);
        this.zzc = zzgVar;
        this.zzb = zzgVar.zzc();
        zzj zzjVar = new zzj();
        this.zzd = zzjVar;
        zzgVar.zze("require", new zzw(zzjVar));
        zzjVar.zza("internal.platform", zze.zza);
        zzgVar.zze("runtime.counter", new zzah(Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)));
    }

    public final zzao zza(zzg zzgVar, zzje... zzjeVarArr) {
        zzao zzaoVar = zzao.zzf;
        for (zzje zzjeVar : zzjeVarArr) {
            zzaoVar = zzi.zzb(zzjeVar);
            zzh.zzl(this.zzc);
            if ((zzaoVar instanceof zzap) || (zzaoVar instanceof zzan)) {
                zzaoVar = this.zza.zzb(zzgVar, zzaoVar);
            }
        }
        return zzaoVar;
    }
}
