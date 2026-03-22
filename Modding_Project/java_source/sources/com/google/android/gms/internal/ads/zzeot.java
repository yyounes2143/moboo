package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeot implements zzetv {
    private final zzgdj zza;
    private final zzdpy zzb;
    private final String zzc;
    private final zzfcp zzd;

    public zzeot(zzgdj zzgdjVar, zzdpy zzdpyVar, zzfcp zzfcpVar, String str) {
        this.zza = zzgdjVar;
        this.zzb = zzdpyVar;
        this.zzd = zzfcpVar;
        this.zzc = str;
    }

    public static /* synthetic */ zzeou zzc(zzeot zzeotVar) {
        zzfcp zzfcpVar = zzeotVar.zzd;
        zzdpy zzdpyVar = zzeotVar.zzb;
        return new zzeou(zzdpyVar.zzb(zzfcpVar.zzf, zzeotVar.zzc), zzdpyVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 17;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeos
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeot.zzc(zzeot.this);
            }
        });
    }
}
