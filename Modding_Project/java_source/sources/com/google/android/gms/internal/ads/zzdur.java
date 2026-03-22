package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdur implements zzhfv {
    private final zzhge zza;

    public zzdur(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
    }

    public static zzddq zza(zzduq zzduqVar, Executor executor) {
        return new zzddq(zzduqVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zza((zzduq) this.zza.zzb(), zzffn.zzc());
    }
}
