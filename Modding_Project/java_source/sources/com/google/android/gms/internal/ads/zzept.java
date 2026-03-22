package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzept implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;

    public zzept(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzent zzb = ((zzenv) this.zza).zzb();
        zzeon zzeonVar = (zzeon) this.zzb.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.zzd.zzb();
        if (((List) this.zzc.zzb()).contains("54")) {
            return new zzesh(zzeonVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmD)).intValue(), scheduledExecutorService);
        }
        return new zzesh(zzb, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmD)).intValue(), scheduledExecutorService);
    }
}
