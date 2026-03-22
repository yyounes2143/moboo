package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdsh implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzdsh(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdsg((zzdrx) this.zza.zzb(), ((zzhgh) this.zzb).zzb(), (Clock) this.zzc.zzb());
    }
}
