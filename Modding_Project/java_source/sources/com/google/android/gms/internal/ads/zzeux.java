package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeux implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;

    public zzeux(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6, zzhge zzhgeVar7) {
        this.zza = zzhgeVar2;
        this.zzb = zzhgeVar3;
        this.zzc = zzhgeVar5;
        this.zzd = zzhgeVar6;
        this.zze = zzhgeVar7;
    }

    public static zzeuv zza(zzbze zzbzeVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        return new zzeuv(zzbzeVar, context, scheduledExecutorService, executor, i, z, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeuv(zzckw.zza(), ((zzchi) this.zza).zza(), (ScheduledExecutorService) this.zzb.zzb(), zzffn.zzc(), ((zzewd) this.zzc).zzb().intValue(), ((zzewe) this.zzd).zzb().booleanValue(), ((zzewg) this.zze).zzb().booleanValue());
    }
}
