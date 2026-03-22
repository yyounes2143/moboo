package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzqa {
    @Nullable
    private final Handler zza;
    @Nullable
    private final zzqb zzb;

    public zzqa(@Nullable Handler handler, @Nullable zzqb zzqbVar) {
        this.zza = zzqbVar == null ? null : handler;
        this.zzb = zzqbVar;
    }

    public static /* synthetic */ void zza(zzqa zzqaVar, zzia zziaVar) {
        String str = zzeu.zza;
        zzqaVar.zzb.zze(zziaVar);
    }

    public static /* synthetic */ void zzb(zzqa zzqaVar, String str) {
        String str2 = zzeu.zza;
        zzqaVar.zzb.zzc(str);
    }

    public static /* synthetic */ void zzc(zzqa zzqaVar, long j) {
        String str = zzeu.zza;
        zzqaVar.zzb.zzg(j);
    }

    public static /* synthetic */ void zzd(zzqa zzqaVar, zzqc zzqcVar) {
        String str = zzeu.zza;
        zzqaVar.zzb.zzj(zzqcVar);
    }

    public static /* synthetic */ void zze(zzqa zzqaVar, int i, long j, long j2) {
        String str = zzeu.zza;
        zzqaVar.zzb.zzk(i, j, j2);
    }

    public static /* synthetic */ void zzf(zzqa zzqaVar, Exception exc) {
        String str = zzeu.zza;
        zzqaVar.zzb.zzh(exc);
    }

    public static /* synthetic */ void zzg(zzqa zzqaVar, Exception exc) {
        String str = zzeu.zza;
        zzqaVar.zzb.zza(exc);
    }

    public static /* synthetic */ void zzh(zzqa zzqaVar, zzz zzzVar, zzib zzibVar) {
        String str = zzeu.zza;
        zzqaVar.zzb.zzf(zzzVar, zzibVar);
    }

    public static /* synthetic */ void zzi(zzqa zzqaVar, boolean z) {
        String str = zzeu.zza;
        zzqaVar.zzb.zzn(z);
    }

    public static /* synthetic */ void zzj(zzqa zzqaVar, zzqc zzqcVar) {
        String str = zzeu.zza;
        zzqaVar.zzb.zzi(zzqcVar);
    }

    public static /* synthetic */ void zzk(zzqa zzqaVar, String str, long j, long j2) {
        String str2 = zzeu.zza;
        zzqaVar.zzb.zzb(str, j, j2);
    }

    public static /* synthetic */ void zzl(zzqa zzqaVar, zzia zziaVar) {
        zziaVar.zza();
        String str = zzeu.zza;
        zzqaVar.zzb.zzd(zziaVar);
    }

    public final void zzm(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpu
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzg(zzqa.this, exc);
                }
            });
        }
    }

    public final void zzn(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpv
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzf(zzqa.this, exc);
                }
            });
        }
    }

    public final void zzo(final zzqc zzqcVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzps
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzj(zzqa.this, zzqcVar);
                }
            });
        }
    }

    public final void zzp(final zzqc zzqcVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpt
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzd(zzqa.this, zzqcVar);
                }
            });
        }
    }

    public final void zzq(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpy
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzk(zzqa.this, str, j, j2);
                }
            });
        }
    }

    public final void zzr(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpz
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzb(zzqa.this, str);
                }
            });
        }
    }

    public final void zzs(final zzia zziaVar) {
        zziaVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpp
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzl(zzqa.this, zziaVar);
                }
            });
        }
    }

    public final void zzt(final zzia zziaVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpo
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zza(zzqa.this, zziaVar);
                }
            });
        }
    }

    public final void zzu(final zzz zzzVar, @Nullable final zzib zzibVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpw
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzh(zzqa.this, zzzVar, zzibVar);
                }
            });
        }
    }

    public final void zzv(final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpq
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzc(zzqa.this, j);
                }
            });
        }
    }

    public final void zzw(final boolean z) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpx
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zzi(zzqa.this, z);
                }
            });
        }
    }

    public final void zzx(final int i, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpr
                @Override // java.lang.Runnable
                public final void run() {
                    zzqa.zze(zzqa.this, i, j, j2);
                }
            });
        }
    }
}
