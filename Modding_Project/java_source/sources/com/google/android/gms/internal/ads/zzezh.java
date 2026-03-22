package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzezh {
    private final zzfec zza;
    private final zzcuz zzb;
    private final Executor zzc;
    private zzezf zzd;

    public zzezh(zzfec zzfecVar, zzcuz zzcuzVar, Executor executor) {
        this.zza = zzfecVar;
        this.zzb = zzcuzVar;
        this.zzc = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public final zzfem zze() {
        zzfcp zzf = this.zzb.zzf();
        return this.zza.zzc(zzf.zzd, zzf.zzf, zzf.zzj);
    }

    public final ListenableFuture zzc() {
        ListenableFuture listenableFuture;
        zzezf zzezfVar = this.zzd;
        if (zzezfVar == null) {
            if (!((Boolean) zzbfc.zza.zze()).booleanValue()) {
                zzezf zzezfVar2 = new zzezf(null, zze(), null);
                this.zzd = zzezfVar2;
                listenableFuture = zzgcy.zzh(zzezfVar2);
            } else {
                zzgcp zzw = zzgcp.zzw(this.zzb.zzb().zzf(this.zza.zza()));
                zzeze zzezeVar = new zzeze(this);
                Executor executor = this.zzc;
                listenableFuture = (zzgcp) zzgcy.zze((zzgcp) zzgcy.zzm(zzw, zzezeVar, executor), zzdyq.class, new zzezd(this), executor);
            }
            return zzgcy.zzm(listenableFuture, new zzfur() { // from class: com.google.android.gms.internal.ads.zzezc
                @Override // com.google.android.gms.internal.ads.zzfur
                public final Object apply(Object obj) {
                    return (zzezf) obj;
                }
            }, this.zzc);
        }
        return zzgcy.zzh(zzezfVar);
    }
}
