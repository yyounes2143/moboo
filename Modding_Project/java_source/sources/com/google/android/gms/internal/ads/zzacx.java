package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzacx {
    public static final zzacx zza = new zzacx(-3, -9223372036854775807L, -1);
    private final int zzb;
    private final long zzc;
    private final long zzd;

    private zzacx(int i, long j, long j2) {
        this.zzb = i;
        this.zzc = j;
        this.zzd = j2;
    }

    public static zzacx zzd(long j, long j2) {
        return new zzacx(-1, j, j2);
    }

    public static zzacx zze(long j) {
        return new zzacx(0, -9223372036854775807L, j);
    }

    public static zzacx zzf(long j, long j2) {
        return new zzacx(-2, j, j2);
    }
}
