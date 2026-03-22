package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcjg implements zzfaa {
    final zzhge zza;
    final zzhge zzb;
    final zzhge zzc;
    final zzhge zzd;
    final zzhge zze;
    final zzhge zzf;
    final zzhge zzg;
    private final zzcil zzh;

    public zzcjg(zzcil zzcilVar, Context context, String str, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.zzh = zzcilVar;
        zzhfv zza = zzhfw.zza(context);
        this.zza = zza;
        zzhfv zza2 = zzhfw.zza(zzrVar);
        this.zzb = zza2;
        zzhfv zza3 = zzhfw.zza(str);
        this.zzc = zza3;
        zzhge zzhgeVar = zzcilVar.zzK;
        zzhge zzc = zzhfu.zzc(new zzeks(zzhgeVar));
        this.zzd = zzc;
        zzhge zzc2 = zzhfu.zzc(new zzfay(zzcilVar.zzbf));
        this.zze = zzc2;
        zzhge zzc3 = zzhfu.zzc(new zzezy(zza, zzcilVar.zza, zzcilVar.zzQ, zzc, zzc2, zzfcr.zza()));
        this.zzf = zzc3;
        this.zzg = zzhfu.zzc(new zzela(zza, zza2, zza3, zzc3, zzc, zzc2, zzcilVar.zzj, zzcilVar.zzS, zzhgeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzfaa
    public final zzekz zza() {
        return (zzekz) this.zzg.zzb();
    }
}
