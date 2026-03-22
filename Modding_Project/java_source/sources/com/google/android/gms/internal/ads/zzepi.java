package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzepi implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzepi(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzhgeVar2;
        this.zzb = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeon(zzeru.zza(), ((Long) zzbek.zzf.zze()).longValue(), (Clock) this.zza.zzb(), zzffn.zzc(), (zzdsd) this.zzb.zzb());
    }
}
