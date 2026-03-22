package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeyx implements zzezl {
    private final zzfec zza;
    private final Executor zzb;
    private final zzgcu zzc = new zzeyv(this);

    public zzeyx(zzfec zzfecVar, Executor executor) {
        this.zza = zzfecVar;
        this.zzb = executor;
    }

    public static /* synthetic */ ListenableFuture zza(zzeyx zzeyxVar, zzcuz zzcuzVar, zzezf zzezfVar) {
        zzfec zzfecVar = zzeyxVar.zza;
        zzfem zzfemVar = zzezfVar.zzb;
        zzbvl zzbvlVar = zzezfVar.zza;
        zzfel zzb = zzfecVar.zzb(zzfemVar);
        if (zzb != null && zzbvlVar != null) {
            zzgcy.zzr(zzcuzVar.zzb().zzg(zzbvlVar), zzeyxVar.zzc, zzeyxVar.zzb);
        }
        return zzgcy.zzh(new zzeyw(zzfemVar, zzbvlVar, zzb));
    }

    public final ListenableFuture zzb(zzezm zzezmVar, zzezk zzezkVar, final zzcuz zzcuzVar) {
        zzfec zzfecVar = this.zza;
        Executor executor = this.zzb;
        return (zzgcp) zzgcy.zze((zzgcp) zzgcy.zzn(zzgcp.zzw(new zzezh(zzfecVar, zzcuzVar, executor).zzc()), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeyt
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzeyx.zza(zzeyx.this, zzcuzVar, (zzezf) obj);
            }
        }, executor), Exception.class, new zzeyu(this), executor);
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzezm zzezmVar, zzezk zzezkVar, Object obj) {
        return zzb(zzezmVar, zzezkVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
