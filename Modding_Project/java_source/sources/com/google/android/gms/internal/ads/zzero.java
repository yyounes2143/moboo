package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzero implements zzetv {
    private final zzgdj zza;
    private final zzdvc zzb;

    public zzero(zzgdj zzgdjVar, zzdvc zzdvcVar) {
        this.zza = zzgdjVar;
        this.zzb = zzdvcVar;
    }

    public static /* synthetic */ zzerp zzc(zzero zzeroVar) {
        zzdvc zzdvcVar = zzeroVar.zzb;
        return new zzerp(zzdvcVar.zzc(), zzdvcVar.zzr(), com.google.android.gms.ads.internal.zzv.zzu().zzl(), zzdvcVar.zzp(), zzdvcVar.zzs());
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 23;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzern
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzero.zzc(zzero.this);
            }
        });
    }
}
