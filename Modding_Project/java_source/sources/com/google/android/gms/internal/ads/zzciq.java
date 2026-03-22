package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzciq implements zzewv {
    final zzhge zza;
    final zzhge zzb;
    final zzhge zzc;
    final zzhge zzd;
    final zzhge zze;
    final zzhge zzf;
    private final zzcil zzg;

    public zzciq(zzcil zzcilVar, Context context, String str) {
        this.zzg = zzcilVar;
        zzhfv zza = zzhfw.zza(context);
        this.zza = zza;
        zzhfv zza2 = zzhfw.zza(str);
        this.zzb = zza2;
        zzhge zzhgeVar = zzcilVar.zzbf;
        zzezn zzeznVar = new zzezn(zza, zzhgeVar, zzcilVar.zzbg);
        this.zzc = zzeznVar;
        zzhge zzc = zzhfu.zzc(new zzext(zzhgeVar));
        this.zzd = zzc;
        zzhge zzhgeVar2 = zzcilVar.zza;
        zzhge zzhgeVar3 = zzcilVar.zzQ;
        zzfcr zza3 = zzfcr.zza();
        zzhge zzhgeVar4 = zzcilVar.zzj;
        zzhge zzc2 = zzhfu.zzc(new zzexv(zza, zzhgeVar2, zzhgeVar3, zzeznVar, zzc, zza3, zzhgeVar4));
        this.zze = zzc2;
        this.zzf = zzhfu.zzc(new zzeyb(zzhgeVar3, zza, zza2, zzc2, zzc, zzhgeVar4, zzcilVar.zzK));
    }

    @Override // com.google.android.gms.internal.ads.zzewv
    public final zzeya zza() {
        return (zzeya) this.zzf.zzb();
    }
}
