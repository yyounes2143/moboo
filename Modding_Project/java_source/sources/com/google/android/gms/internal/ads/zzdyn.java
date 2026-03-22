package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdyn implements zzdyp {
    private final Map zza;
    private final zzgdj zzb;
    private final zzcyt zzc;

    public zzdyn(Map map, zzgdj zzgdjVar, zzcyt zzcytVar) {
        this.zza = map;
        this.zzb = zzgdjVar;
        this.zzc = zzcytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyp
    public final ListenableFuture zzc(final zzbvl zzbvlVar) {
        this.zzc.zzdn(zzbvlVar);
        ListenableFuture zzg = zzgcy.zzg(new zzdwf(3));
        for (String str : ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzix)).split(",")) {
            final zzhgk zzhgkVar = (zzhgk) this.zza.get(str.trim());
            if (zzhgkVar != null) {
                zzg = zzgcy.zzf(zzg, zzdwf.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdyl
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        zzdwf zzdwfVar = (zzdwf) obj;
                        return ((zzdyp) zzhgk.this.zzb()).zzc(zzbvlVar);
                    }
                }, this.zzb);
            }
        }
        zzgcy.zzr(zzg, new zzdym(this), zzcaa.zzg);
        return zzg;
    }
}
