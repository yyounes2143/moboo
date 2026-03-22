package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeqc implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzeqc(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzesh(((zzerf) this.zza).zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmL)).intValue(), (ScheduledExecutorService) this.zzb.zzb());
    }
}
