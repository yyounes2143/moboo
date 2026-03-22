package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzbiu implements zzbjw {
    public final /* synthetic */ zzddy zza;
    public final /* synthetic */ zzcmn zzb;

    public /* synthetic */ zzbiu(zzddy zzddyVar, zzcmn zzcmnVar) {
        this.zza = zzddyVar;
        this.zzb = zzcmnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        zzcfb zzcfbVar = (zzcfb) obj;
        zzbjv.zzc(map, this.zza);
        final String str = (String) map.get("u");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from click GMSG.");
            return;
        }
        final zzcmn zzcmnVar = this.zzb;
        zzgcp zzw = zzgcp.zzw(zzbjv.zza(zzcfbVar, str));
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzbix
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj2) {
                zzcmn zzcmnVar2;
                String str2 = (String) obj2;
                zzbjw zzbjwVar = zzbjv.zza;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkp)).booleanValue() && (zzcmnVar2 = zzcmn.this) != null && zzcmn.zzj(str)) {
                    return zzcmnVar2.zze(str2, com.google.android.gms.ads.internal.client.zzbb.zze());
                }
                return zzgcy.zzh(str2);
            }
        };
        zzgdj zzgdjVar = zzcaa.zza;
        zzgcy.zzr((zzgcp) zzgcy.zzn(zzw, zzgcfVar, zzgdjVar), new zzbjk(zzcfbVar), zzgdjVar);
    }
}
