package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcji implements zzfbo {
    final zzhge zza;
    final zzhge zzb;
    final zzhge zzc;
    final zzhge zzd;
    final zzhge zze;
    final zzhge zzf;
    final zzhge zzg;
    final zzhge zzh;
    private final zzcil zzi;

    public zzcji(zzcil zzcilVar, Context context, String str) {
        this.zzi = zzcilVar;
        zzhfv zza = zzhfw.zza(context);
        this.zza = zza;
        zzhge zzhgeVar = zzcilVar.zzbf;
        zzezo zzezoVar = new zzezo(zza, zzhgeVar, zzcilVar.zzbg);
        this.zzb = zzezoVar;
        zzhge zzc = zzhfu.zzc(new zzfay(zzhgeVar));
        this.zzc = zzc;
        zzhge zzc2 = zzhfu.zzc(zzfcm.zza());
        this.zzd = zzc2;
        zzhge zzc3 = zzhfu.zzc(new zzfbi(zza, zzcilVar.zza, zzcilVar.zzQ, zzezoVar, zzc, zzfcr.zza(), zzc2));
        this.zze = zzc3;
        this.zzf = zzhfu.zzc(new zzfbs(zzc3, zzc, zzc2));
        zzhfv zzc4 = zzhfw.zzc(str);
        this.zzg = zzc4;
        this.zzh = zzhfu.zzc(new zzfbm(zzc4, zzc3, zza, zzc, zzc2, zzcilVar.zzj, zzcilVar.zzS, zzcilVar.zzK));
    }

    @Override // com.google.android.gms.internal.ads.zzfbo
    public final zzfbl zza() {
        return (zzfbl) this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfbo
    public final zzfbr zzb() {
        return (zzfbr) this.zzf.zzb();
    }
}
