package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzepx implements zzhfv {
    private final zzhge zza;

    public zzepx(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfyh zzn;
        zzeop zza = zzeor.zza();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.zza.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeq)).booleanValue()) {
            zzn = zzfyh.zzo(new zzesh(zza, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzer)).intValue(), scheduledExecutorService));
        } else {
            zzn = zzfyh.zzn();
        }
        zzhgd.zzb(zzn);
        return zzn;
    }
}
