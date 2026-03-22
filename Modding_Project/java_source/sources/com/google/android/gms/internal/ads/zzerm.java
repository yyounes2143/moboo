package com.google.android.gms.internal.ads;

import android.content.Intent;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzerm implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzerm(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzerk zzb() {
        return new zzerk(((zzchi) this.zza).zza(), (Intent) this.zzb.zzb());
    }
}
