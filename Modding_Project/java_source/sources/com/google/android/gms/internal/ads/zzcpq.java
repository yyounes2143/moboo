package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcpq implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzcpq(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzesh(((zzerj) this.zza).zzb(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmJ)).intValue(), (ScheduledExecutorService) this.zzb.zzb());
    }
}
