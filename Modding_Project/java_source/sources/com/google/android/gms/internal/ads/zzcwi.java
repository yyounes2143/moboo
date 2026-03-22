package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcwi implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzcwi(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcwg(((zzcwh) this.zza).zzb(), ((zzhgh) this.zzb).zzb(), zzffn.zzc(), (ScheduledExecutorService) this.zzc.zzb());
    }
}
