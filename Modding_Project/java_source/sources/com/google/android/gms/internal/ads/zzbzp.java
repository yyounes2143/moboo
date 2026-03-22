package com.google.android.gms.internal.ads;

import java.math.BigInteger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbzp {
    private BigInteger zza = BigInteger.ONE;
    private String zzb = "0";

    public final synchronized String zza() {
        String bigInteger;
        bigInteger = this.zza.toString();
        this.zza = this.zza.add(BigInteger.ONE);
        this.zzb = bigInteger;
        return bigInteger;
    }

    public final synchronized String zzb() {
        return this.zzb;
    }
}
