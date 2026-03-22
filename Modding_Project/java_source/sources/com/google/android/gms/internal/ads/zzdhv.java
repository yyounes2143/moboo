package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdhv implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;

    public zzdhv(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcnu((Executor) this.zzb.zzb(), new zzcng((Context) this.zzc.zzb(), (zzayq) this.zza.zzb()), (Clock) this.zzd.zzb());
    }
}
