package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcsu implements zzhfv {
    private final zzhge zza;

    public zzcsu(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
    }

    public static zzddq zza(zzcmz zzcmzVar, Executor executor) {
        return new zzddq(zzcmzVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zza((zzcmz) this.zza.zzb(), zzffn.zzc());
    }
}
