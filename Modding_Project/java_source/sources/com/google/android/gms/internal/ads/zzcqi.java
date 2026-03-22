package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcqi implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzcqi(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzcqh zzb() {
        return new zzcqh(((zzcpn) this.zza).zza(), (Executor) this.zzb.zzb());
    }
}
