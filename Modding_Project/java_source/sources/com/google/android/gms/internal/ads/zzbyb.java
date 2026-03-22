package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbyb implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzbyb(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzbya zzb() {
        return new zzbya((Clock) this.zza.zzb(), (zzbxy) this.zzb.zzb());
    }
}
