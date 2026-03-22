package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzetd implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;
    private final zzhge zzf;
    private final zzhge zzg;
    private final zzhge zzh;
    private final zzhge zzi;

    public zzetd(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6, zzhge zzhgeVar7, zzhge zzhgeVar8, zzhge zzhgeVar9, zzhge zzhgeVar10) {
        this.zza = zzhgeVar2;
        this.zzb = zzhgeVar3;
        this.zzc = zzhgeVar4;
        this.zzd = zzhgeVar5;
        this.zze = zzhgeVar6;
        this.zzf = zzhgeVar7;
        this.zzg = zzhgeVar8;
        this.zzh = zzhgeVar9;
        this.zzi = zzhgeVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzetb(zzffn.zzc(), (ScheduledExecutorService) this.zza.zzb(), (String) this.zzb.zzb(), (zzejn) this.zzc.zzb(), (Context) this.zzd.zzb(), ((zzcvk) this.zze).zza(), (zzejj) this.zzf.zzb(), (zzdpt) this.zzg.zzb(), (zzduj) this.zzh.zzb(), ((Integer) this.zzi.zzb()).intValue());
    }
}
