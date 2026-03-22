package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeqa implements zzhfv {
    private final zzhge zza;

    public zzeqa(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzesh(zzeqx.zza(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmy)).intValue(), (ScheduledExecutorService) this.zza.zzb());
    }
}
