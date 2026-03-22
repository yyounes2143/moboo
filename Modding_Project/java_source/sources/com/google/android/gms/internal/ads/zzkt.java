package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzkt {
    private long zza;
    private float zzb;
    private long zzc;

    public zzkt() {
        this.zza = -9223372036854775807L;
        this.zzb = -3.4028235E38f;
        this.zzc = -9223372036854775807L;
    }

    public final zzkt zzd(long j) {
        boolean z = true;
        if (j < 0) {
            if (j == -9223372036854775807L) {
                j = -9223372036854775807L;
            } else {
                z = false;
            }
        }
        zzdc.zzd(z);
        this.zzc = j;
        return this;
    }

    public final zzkt zze(long j) {
        this.zza = j;
        return this;
    }

    public final zzkt zzf(float f) {
        boolean z = true;
        if (f <= 0.0f && f != -3.4028235E38f) {
            z = false;
        }
        zzdc.zzd(z);
        this.zzb = f;
        return this;
    }

    public final zzkv zzg() {
        return new zzkv(this, null);
    }

    public /* synthetic */ zzkt(zzkv zzkvVar, zzku zzkuVar) {
        this.zza = zzkvVar.zza;
        this.zzb = zzkvVar.zzb;
        this.zzc = zzkvVar.zzc;
    }
}
