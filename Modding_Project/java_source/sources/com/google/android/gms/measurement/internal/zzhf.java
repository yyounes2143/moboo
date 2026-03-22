package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.annotations.VisibleForTesting;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhf {
    @VisibleForTesting
    final String zza;
    final /* synthetic */ zzhh zzb;
    private final String zzc;
    private final String zzd;
    private final long zze;

    public /* synthetic */ zzhf(zzhh zzhhVar, String str, long j, byte[] bArr) {
        boolean z;
        Objects.requireNonNull(zzhhVar);
        this.zzb = zzhhVar;
        Preconditions.checkNotEmpty("health_monitor");
        if (j > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.zza = "health_monitor:start";
        this.zzc = "health_monitor:count";
        this.zzd = "health_monitor:value";
        this.zze = j;
    }

    @WorkerThread
    private final void zzc() {
        zzhh zzhhVar = this.zzb;
        zzhhVar.zzg();
        long currentTimeMillis = zzhhVar.zzu.zzaZ().currentTimeMillis();
        SharedPreferences.Editor edit = zzhhVar.zzd().edit();
        edit.remove(this.zzc);
        edit.remove(this.zzd);
        edit.putLong(this.zza, currentTimeMillis);
        edit.apply();
    }

    @WorkerThread
    private final long zzd() {
        return this.zzb.zzd().getLong(this.zza, 0L);
    }

    @WorkerThread
    public final void zza(String str, long j) {
        zzhh zzhhVar = this.zzb;
        zzhhVar.zzg();
        if (zzd() == 0) {
            zzc();
        }
        if (str == null) {
            str = "";
        }
        SharedPreferences zzd = zzhhVar.zzd();
        String str2 = this.zzc;
        long j2 = zzd.getLong(str2, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = zzhhVar.zzd().edit();
            edit.putString(this.zzd, str);
            edit.putLong(str2, 1L);
            edit.apply();
            return;
        }
        long j3 = j2 + 1;
        SharedPreferences.Editor edit2 = zzhhVar.zzd().edit();
        if ((zzhhVar.zzu.zzk().zzf().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3) {
            edit2.putString(this.zzd, str);
        }
        edit2.putLong(str2, j3);
        edit2.apply();
    }

    @WorkerThread
    public final Pair zzb() {
        long abs;
        zzhh zzhhVar = this.zzb;
        zzhhVar.zzg();
        zzhhVar.zzg();
        long zzd = zzd();
        if (zzd == 0) {
            zzc();
            abs = 0;
        } else {
            abs = Math.abs(zzd - zzhhVar.zzu.zzaZ().currentTimeMillis());
        }
        long j = this.zze;
        if (abs < j) {
            return null;
        }
        if (abs > j + j) {
            zzc();
            return null;
        }
        String string = zzhhVar.zzd().getString(this.zzd, null);
        long j2 = zzhhVar.zzd().getLong(this.zzc, 0L);
        zzc();
        if (string != null && j2 > 0) {
            return new Pair(string, Long.valueOf(j2));
        }
        return zzhh.zza;
    }
}
