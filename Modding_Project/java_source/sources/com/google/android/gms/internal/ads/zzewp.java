package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzewp implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;
    private final zzhge zzf;
    private final zzhge zzg;

    public zzewp(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6, zzhge zzhgeVar7, zzhge zzhgeVar8, zzhge zzhgeVar9) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar6;
        this.zze = zzhgeVar7;
        this.zzf = zzhgeVar8;
        this.zzg = zzhgeVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzewn((zzbzn) this.zza.zzb(), ((zzewf) this.zzb).zzb().booleanValue(), ((zzewg) this.zzc).zzb().booleanValue(), zzcky.zza(), zzffn.zzc(), ((zzewc) this.zzd).zza(), (ScheduledExecutorService) this.zze.zzb(), ((zzewi) this.zzf).zzb().intValue(), ((zzewj) this.zzg).zzb().intValue());
    }
}
