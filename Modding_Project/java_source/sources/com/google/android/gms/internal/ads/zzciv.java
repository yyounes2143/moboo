package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzciv implements zzeyj {
    final zzhge zza;
    final zzhge zzb;
    final zzhge zzc;
    final zzhge zzd;
    final zzhge zze;
    final zzhge zzf;
    private final Context zzg;
    private final com.google.android.gms.ads.internal.client.zzr zzh;
    private final String zzi;
    private final zzcil zzj;

    public zzciv(zzcil zzcilVar, Context context, String str, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.zzj = zzcilVar;
        this.zzg = context;
        this.zzh = zzrVar;
        this.zzi = str;
        zzhfv zza = zzhfw.zza(context);
        this.zza = zza;
        zzhfv zza2 = zzhfw.zza(zzrVar);
        this.zzb = zza2;
        zzhge zzc = zzhfu.zzc(new zzeks(zzcilVar.zzK));
        this.zzc = zzc;
        zzhge zzc2 = zzhfu.zzc(zzekx.zza());
        this.zzd = zzc2;
        zzhge zzc3 = zzhfu.zzc(zzday.zza());
        this.zze = zzc3;
        this.zzf = zzhfu.zzc(new zzeyh(zza, zzcilVar.zza, zza2, zzcilVar.zzQ, zzc, zzc2, zzfcr.zza(), zzc3));
    }

    @Override // com.google.android.gms.internal.ads.zzeyj
    public final zzejx zza() {
        zzche zzcheVar;
        zzeyg zzeygVar = (zzeyg) this.zzf.zzb();
        zzekr zzekrVar = (zzekr) this.zzc.zzb();
        zzcil zzcilVar = this.zzj;
        zzcheVar = zzcilVar.zzbn;
        return new zzejx(this.zzg, this.zzh, this.zzi, zzeygVar, zzekrVar, zzchw.zzc(zzcheVar), (zzdsd) zzcilVar.zzK.zzb());
    }
}
