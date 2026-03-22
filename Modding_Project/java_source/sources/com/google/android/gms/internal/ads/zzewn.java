package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzewn implements zzetv {
    private final zzbzn zza;
    private final boolean zzb;
    private final boolean zzc;
    private final ScheduledExecutorService zzd;
    private final zzgdj zze;
    private final int zzf;
    private final int zzg;

    public zzewn(zzbzn zzbznVar, boolean z, boolean z2, zzbzc zzbzcVar, zzgdj zzgdjVar, String str, ScheduledExecutorService scheduledExecutorService, int i, int i2) {
        this.zza = zzbznVar;
        this.zzb = z;
        this.zzc = z2;
        this.zze = zzgdjVar;
        this.zzd = scheduledExecutorService;
        this.zzf = i;
        this.zzg = i2;
    }

    public static /* synthetic */ zzewo zzc(zzewn zzewnVar, Exception exc) {
        zzewnVar.zza.zzw(exc, "TrustlessTokenSignal");
        return new zzewo(null);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 50;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        boolean z;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhh)).booleanValue() && this.zzc) {
            return zzgcy.zzh(new zzewo(null));
        }
        if (this.zzg != 2) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhj)).booleanValue()) {
                z = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhk)).split(",")).contains(String.valueOf(this.zzf));
            } else {
                z = this.zzb;
            }
            if (!z) {
                return zzgcy.zzh(new zzewo(null));
            }
            ListenableFuture zzh = zzgcy.zzh(null);
            zzfur zzfurVar = new zzfur() { // from class: com.google.android.gms.internal.ads.zzewl
                @Override // com.google.android.gms.internal.ads.zzfur
                public final Object apply(Object obj) {
                    return new zzewo((String) obj);
                }
            };
            zzgdj zzgdjVar = this.zze;
            return zzgcy.zze(zzgcy.zzo(zzgcy.zzm(zzh, zzfurVar, zzgdjVar), ((Long) zzbfj.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzd), Exception.class, new zzfur() { // from class: com.google.android.gms.internal.ads.zzewm
                @Override // com.google.android.gms.internal.ads.zzfur
                public final Object apply(Object obj) {
                    return zzewn.zzc(zzewn.this, (Exception) obj);
                }
            }, zzgdjVar);
        }
        return zzgcy.zzh(new zzewo(null));
    }
}
