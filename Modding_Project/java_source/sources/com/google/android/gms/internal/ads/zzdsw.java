package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdsw implements zzhfv {
    private final zzdss zza;
    private final zzhge zzb;

    public zzdsw(zzdss zzdssVar, zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzdssVar;
        this.zzb = zzhgeVar;
    }

    public static Set zza(zzdss zzdssVar, zzdtc zzdtcVar, Executor executor) {
        Set zzd = zzdss.zzd(zzdtcVar, executor);
        zzhgd.zzb(zzd);
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgdj zzc = zzffn.zzc();
        return zza(this.zza, (zzdtc) this.zzb.zzb(), zzc);
    }
}
