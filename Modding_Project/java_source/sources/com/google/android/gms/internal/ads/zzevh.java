package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevh implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzevh(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar3;
        this.zzc = zzhgeVar4;
    }

    public static zzevf zza(String str, zzbaw zzbawVar, zzbzn zzbznVar, ScheduledExecutorService scheduledExecutorService, zzgdj zzgdjVar) {
        return new zzevf(str, zzbawVar, zzbznVar, scheduledExecutorService, zzgdjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzevf(((zzewc) this.zza).zza(), zzcko.zza(), (zzbzn) this.zzb.zzb(), (ScheduledExecutorService) this.zzc.zzb(), zzffn.zzc());
    }
}
