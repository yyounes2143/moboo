package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaoo {
    public final int zza;
    public final long zzb;

    private zzaoo(int i, long j) {
        this.zza = i;
        this.zzb = j;
    }

    public static zzaoo zza(zzado zzadoVar, zzek zzekVar) throws IOException {
        zzadoVar.zzh(zzekVar.zzN(), 0, 8);
        zzekVar.zzL(0);
        return new zzaoo(zzekVar.zzg(), zzekVar.zzs());
    }
}
