package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzexv implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;
    private final zzhge zzf;

    public zzexv(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6, zzhge zzhgeVar7) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
        this.zze = zzhgeVar5;
        this.zzf = zzhgeVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzexu((Context) this.zza.zzb(), (Executor) this.zzb.zzb(), (zzchb) this.zzc.zzb(), ((zzezn) this.zzd).zzb(), (zzexs) this.zze.zzb(), new zzfcn(), ((zzchw) this.zzf).zza());
    }
}
