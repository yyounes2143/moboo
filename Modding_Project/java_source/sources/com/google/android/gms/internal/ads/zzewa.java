package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzewa implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzewa(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3) {
        this.zza = zzhgeVar2;
        this.zzb = zzhgeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzevy(zzcku.zza(), (ScheduledExecutorService) this.zza.zzb(), ((zzchi) this.zzb).zza());
    }
}
