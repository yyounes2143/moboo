package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzerj implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzerj(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzhgeVar2;
        this.zzb = zzhgeVar3;
        this.zzc = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzerh zzb() {
        return new zzerh(zzffn.zzc(), ((zzcon) this.zza).zza(), (Context) this.zzb.zzb(), ((zzhgh) this.zzc).zzb());
    }
}
