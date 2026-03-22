package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcmo implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;
    private final zzhge zzf;

    public zzcmo(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6, zzhge zzhgeVar7) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
        this.zze = zzhgeVar6;
        this.zzf = zzhgeVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcmn(((zzchi) this.zza).zza(), ((zzchf) this.zzb).zzb(), (zzedb) this.zzc.zzb(), (zzdpi) this.zzd.zzb(), zzffn.zzc(), (zzgdj) this.zze.zzb(), (ScheduledExecutorService) this.zzf.zzb());
    }
}
