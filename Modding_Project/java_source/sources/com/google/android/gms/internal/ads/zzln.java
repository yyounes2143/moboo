package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzln {
    private static final zzvb zzu = new zzvb(new Object(), -1);
    public final zzbl zza;
    public final zzvb zzb;
    public final long zzc;
    public final long zzd;
    public final int zze;
    @Nullable
    public final zzik zzf;
    public final boolean zzg;
    public final zzxe zzh;
    public final zzyy zzi;
    public final List zzj;
    public final zzvb zzk;
    public final boolean zzl;
    public final int zzm;
    public final int zzn;
    public final zzbb zzo;
    public final boolean zzp = false;
    public volatile long zzq;
    public volatile long zzr;
    public volatile long zzs;
    public volatile long zzt;

    public zzln(zzbl zzblVar, zzvb zzvbVar, long j, long j2, int i, @Nullable zzik zzikVar, boolean z, zzxe zzxeVar, zzyy zzyyVar, List list, zzvb zzvbVar2, boolean z2, int i2, int i3, zzbb zzbbVar, long j3, long j4, long j5, long j6, boolean z3) {
        this.zza = zzblVar;
        this.zzb = zzvbVar;
        this.zzc = j;
        this.zzd = j2;
        this.zze = i;
        this.zzf = zzikVar;
        this.zzg = z;
        this.zzh = zzxeVar;
        this.zzi = zzyyVar;
        this.zzj = list;
        this.zzk = zzvbVar2;
        this.zzl = z2;
        this.zzm = i2;
        this.zzn = i3;
        this.zzo = zzbbVar;
        this.zzq = j3;
        this.zzr = j4;
        this.zzs = j5;
        this.zzt = j6;
    }

    public static zzln zzh(zzyy zzyyVar) {
        zzbl zzblVar = zzbl.zza;
        zzvb zzvbVar = zzu;
        return new zzln(zzblVar, zzvbVar, -9223372036854775807L, 0L, 1, null, false, zzxe.zza, zzyyVar, zzfyc.zzn(), zzvbVar, false, 1, 0, zzbb.zza, 0L, 0L, 0L, 0L, false);
    }

    public static zzvb zzi() {
        return zzu;
    }

    @CheckResult
    public final zzln zza(boolean z) {
        return new zzln(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, z, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, false);
    }

    @CheckResult
    public final zzln zzb(zzvb zzvbVar) {
        return new zzln(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, zzvbVar, this.zzl, this.zzm, this.zzn, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, false);
    }

    @CheckResult
    public final zzln zzc(zzvb zzvbVar, long j, long j2, long j3, long j4, zzxe zzxeVar, zzyy zzyyVar, List list) {
        zzvb zzvbVar2 = this.zzk;
        boolean z = this.zzl;
        int i = this.zzm;
        int i2 = this.zzn;
        zzbb zzbbVar = this.zzo;
        long j5 = this.zzq;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        return new zzln(this.zza, zzvbVar, j2, j3, this.zze, this.zzf, this.zzg, zzxeVar, zzyyVar, list, zzvbVar2, z, i, i2, zzbbVar, j5, j4, j, elapsedRealtime, false);
    }

    @CheckResult
    public final zzln zzd(boolean z, int i, int i2) {
        return new zzln(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, z, i, i2, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, false);
    }

    @CheckResult
    public final zzln zze(@Nullable zzik zzikVar) {
        return new zzln(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzikVar, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, false);
    }

    @CheckResult
    public final zzln zzf(int i) {
        return new zzln(this.zza, this.zzb, this.zzc, this.zzd, i, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, false);
    }

    @CheckResult
    public final zzln zzg(zzbl zzblVar) {
        return new zzln(zzblVar, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, false);
    }

    public final boolean zzj() {
        if (this.zze == 3 && this.zzl && this.zzn == 0) {
            return true;
        }
        return false;
    }
}
