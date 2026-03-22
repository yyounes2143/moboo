package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdxi implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzdxi(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar4;
        this.zzc = zzhgeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzdxh zzb() {
        return new zzdxh((ScheduledExecutorService) this.zza.zzb(), zzffn.zzc(), zzfft.zzc(), ((zzdye) this.zzb).zzb(), zzhfu.zza(this.zzc));
    }
}
