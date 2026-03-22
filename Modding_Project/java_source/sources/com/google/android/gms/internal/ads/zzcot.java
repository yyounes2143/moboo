package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcot implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;
    private final zzhge zzf;
    private final zzhge zzg;
    private final zzhge zzh;
    private final zzhge zzi;
    private final zzhge zzj;

    public zzcot(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6, zzhge zzhgeVar7, zzhge zzhgeVar8, zzhge zzhgeVar9, zzhge zzhgeVar10) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
        this.zze = zzhgeVar5;
        this.zzf = zzhgeVar6;
        this.zzg = zzhgeVar7;
        this.zzh = zzhgeVar8;
        this.zzi = zzhgeVar9;
        this.zzj = zzhgeVar10;
    }

    public static zzcos zzc(zzcqw zzcqwVar, Context context, zzfbv zzfbvVar, View view, @Nullable zzcfb zzcfbVar, zzcqv zzcqvVar, zzdiz zzdizVar, zzdea zzdeaVar, zzhfp zzhfpVar, Executor executor) {
        return new zzcos(zzcqwVar, context, zzfbvVar, view, zzcfbVar, zzcqvVar, zzdizVar, zzdeaVar, zzhfpVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzcos zzb() {
        return new zzcos(((zzcte) this.zza).zzb(), (Context) this.zzb.zzb(), ((zzcoz) this.zzc).zza(), ((zzcoy) this.zzd).zza(), ((zzcpn) this.zze).zza(), ((zzcpa) this.zzf).zza(), ((zzdgu) this.zzg).zza(), (zzdea) this.zzh.zzb(), zzhfu.zza(this.zzi), (Executor) this.zzj.zzb());
    }
}
