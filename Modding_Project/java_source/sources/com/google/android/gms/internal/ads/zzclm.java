package com.google.android.gms.internal.ads;

import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzclm implements zzcld {
    private final zzedd zza;

    public zzclm(zzedd zzeddVar) {
        this.zza = zzeddVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcld
    public final void zza(Map map) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkI)).booleanValue()) {
            return;
        }
        zzgcp zzgcpVar = (zzgcp) zzgcy.zzf(zzgcp.zzw(this.zza.zza(true)), Throwable.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcll
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                Throwable th = (Throwable) obj;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkJ)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzx(th, "GetTopicsApiWithRecordObservationActionHandlerUnsampled");
                } else {
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "GetTopicsApiWithRecordObservationActionHandler");
                }
                return zzgcy.zzh(new GetTopicsResponse(zzfyc.zzn()));
            }
        }, zzcaa.zza);
    }
}
