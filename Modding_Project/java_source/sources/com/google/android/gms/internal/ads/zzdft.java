package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdft implements zzhfv {
    private final zzdfa zza;
    private final zzhge zzb;

    public zzdft(zzdfa zzdfaVar, zzhge zzhgeVar) {
        this.zza = zzdfaVar;
        this.zzb = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return this.zza.zzd((Executor) this.zzb.zzb());
    }
}
