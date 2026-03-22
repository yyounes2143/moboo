package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzehe implements zzhfv {
    private final zzehd zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;

    public zzehe(zzehd zzehdVar, zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzehdVar;
        this.zzb = zzhgeVar;
        this.zzc = zzhgeVar2;
        this.zzd = zzhgeVar3;
        this.zze = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* synthetic */ Object zzb() {
        return this.zza.zza((Clock) this.zzb.zzb(), ((zzegx) this.zzc).zzb(), (zzedk) this.zzd.zzb(), (zzfjr) this.zze.zzb());
    }
}
