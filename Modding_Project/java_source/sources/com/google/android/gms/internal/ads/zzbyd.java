package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbyd extends zzbyk {
    final zzhge zza;
    final zzhge zzb;
    final zzhge zzc;
    final zzhge zzd;
    final zzhge zze;
    final zzhge zzf;
    final zzhge zzg;
    final zzhge zzh;
    private final Clock zzj;

    public zzbyd(Context context, Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzbyj zzbyjVar) {
        this.zzj = clock;
        zzhfv zza = zzhfw.zza(context);
        this.zza = zza;
        zzhfv zza2 = zzhfw.zza(zzgVar);
        this.zzb = zza2;
        this.zzc = zzhfu.zzc(new zzbxx(zza, zza2));
        zzhfv zza3 = zzhfw.zza(clock);
        this.zzd = zza3;
        zzhfv zza4 = zzhfw.zza(zzbyjVar);
        this.zze = zza4;
        zzhge zzc = zzhfu.zzc(new zzbxz(zza3, zza2, zza4));
        this.zzf = zzc;
        zzbyb zzbybVar = new zzbyb(zza3, zzc);
        this.zzg = zzbybVar;
        this.zzh = zzhfu.zzc(new zzbyp(zza, zzbybVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbyk
    public final zzbya zza() {
        return new zzbya(this.zzj, (zzbxy) this.zzf.zzb());
    }
}
