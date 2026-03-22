package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Tasks;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevf implements zzetv {
    private final zzbzn zza;
    private final ScheduledExecutorService zzb;
    private final zzgdj zzc;

    public zzevf(String str, zzbaw zzbawVar, zzbzn zzbznVar, ScheduledExecutorService scheduledExecutorService, zzgdj zzgdjVar) {
        this.zza = zzbznVar;
        this.zzb = scheduledExecutorService;
        this.zzc = zzgdjVar;
    }

    public static /* synthetic */ zzevg zzc(zzevf zzevfVar, Exception exc) {
        zzevfVar.zza.zzw(exc, "AppSetIdInfoGmscoreSignal");
        return new zzevg(null, -1);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 43;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdh)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdm)).booleanValue()) {
                ListenableFuture zza = zzfry.zza(Tasks.forResult(null), null);
                zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzevd
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                        if (appSetIdInfo == null) {
                            return zzgcy.zzh(new zzevg(null, -1));
                        }
                        return zzgcy.zzh(new zzevg(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                    }
                };
                zzgdj zzgdjVar = this.zzc;
                ListenableFuture zzn = zzgcy.zzn(zza, zzgcfVar, zzgdjVar);
                if (((Boolean) zzbei.zza.zze()).booleanValue()) {
                    zzn = zzgcy.zzo(zzn, ((Long) zzbei.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzb);
                }
                return zzgcy.zze(zzn, Exception.class, new zzfur() { // from class: com.google.android.gms.internal.ads.zzeve
                    @Override // com.google.android.gms.internal.ads.zzfur
                    public final Object apply(Object obj) {
                        return zzevf.zzc(zzevf.this, (Exception) obj);
                    }
                }, zzgdjVar);
            }
        }
        return zzgcy.zzh(new zzevg(null, -1));
    }
}
