package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeym implements zzezl {
    private zzcuz zza;
    private final Executor zzb = zzgdq.zzc();

    public final zzcuz zza() {
        return this.zza;
    }

    public final ListenableFuture zzb(zzezm zzezmVar, zzezk zzezkVar, @Nullable zzcuz zzcuzVar) {
        zzcuy zza = zzezkVar.zza(zzezmVar.zzb);
        zza.zzb(new zzezp(true));
        zzcuz zzcuzVar2 = (zzcuz) zza.zzh();
        this.zza = zzcuzVar2;
        final zzcsb zzb = zzcuzVar2.zzb();
        final zzfel zzfelVar = new zzfel();
        zzgcp zzw = zzgcp.zzw(zzb.zzi());
        zzgcf zzgcfVar = new zzgcf(this) { // from class: com.google.android.gms.internal.ads.zzeyk
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                zzfcg zzfcgVar = (zzfcg) obj;
                zzfelVar.zzb = zzfcgVar;
                Iterator it = zzfcgVar.zzb.zza.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (it.hasNext()) {
                        for (String str : ((zzfbu) it.next()).zza) {
                            if (!str.contains("FirstPartyRenderer")) {
                                break loop0;
                            }
                            z = true;
                        }
                    } else if (z) {
                        return zzb.zzh(zzgcy.zzh(zzfcgVar));
                    }
                }
                return zzgcy.zzh(null);
            }
        };
        Executor executor = this.zzb;
        return (zzgcp) zzgcy.zzm((zzgcp) zzgcy.zzn(zzw, zzgcfVar, executor), new zzfur() { // from class: com.google.android.gms.internal.ads.zzeyl
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                zzfel zzfelVar2 = zzfel.this;
                zzfelVar2.zzc = (zzcqx) obj;
                return zzfelVar2;
            }
        }, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzezm zzezmVar, zzezk zzezkVar, @Nullable Object obj) {
        return zzb(zzezmVar, zzezkVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* synthetic */ Object zzd() {
        return this.zza;
    }
}
