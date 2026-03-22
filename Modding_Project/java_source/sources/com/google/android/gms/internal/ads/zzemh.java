package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzemh implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzemh(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzemf((ListenableFuture) this.zza.zzb(), zzffn.zzc(), (ScheduledExecutorService) this.zzb.zzb());
    }
}
