package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdui implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;
    private final zzhge zzf;
    private final zzhge zzg;
    private final zzhge zzh;
    private final zzhge zzi;

    public zzdui(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6, zzhge zzhgeVar7, zzhge zzhgeVar8, zzhge zzhgeVar9, zzhge zzhgeVar10) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar5;
        this.zze = zzhgeVar6;
        this.zzf = zzhgeVar7;
        this.zzg = zzhgeVar8;
        this.zzh = zzhgeVar9;
        this.zzi = zzhgeVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzduh((Executor) this.zza.zzb(), ((zzchi) this.zzb).zza(), ((zzchj) this.zzc).zza(), zzffn.zzc(), (zzdpt) this.zzd.zzb(), (ScheduledExecutorService) this.zze.zzb(), (zzdso) this.zzf.zzb(), ((zzchw) this.zzg).zza(), ((zzdcy) this.zzh).zzb(), (zzfhq) this.zzi.zzb());
    }
}
