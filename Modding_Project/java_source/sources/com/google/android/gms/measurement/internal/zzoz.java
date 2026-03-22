package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import j$.util.Objects;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzoz implements Callable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzpg zzb;

    public zzoz(zzpg zzpgVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzpgVar);
        this.zzb = zzpgVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzr zzrVar = this.zza;
        zzpg zzpgVar = this.zzb;
        zzjl zzB = zzpgVar.zzB((String) Preconditions.checkNotNull(zzrVar.zza));
        zzjk zzjkVar = zzjk.ANALYTICS_STORAGE;
        if (zzB.zzo(zzjkVar) && zzjl.zzf(zzrVar.zzs, 100).zzo(zzjkVar)) {
            return zzpgVar.zzao(zzrVar).zzd();
        }
        zzpgVar.zzaV().zzk().zza("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
