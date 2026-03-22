package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzacb {
    @Nullable
    private final Handler zza;
    @Nullable
    private final zzacc zzb;

    public zzacb(@Nullable Handler handler, @Nullable zzacc zzaccVar) {
        if (zzaccVar != null) {
            handler.getClass();
        } else {
            handler = null;
        }
        this.zza = handler;
        this.zzb = zzaccVar;
    }

    public static /* synthetic */ void zza(zzacb zzacbVar, Exception exc) {
        String str = zzeu.zza;
        zzacbVar.zzb.zzo(exc);
    }

    public static /* synthetic */ void zzb(zzacb zzacbVar, String str) {
        String str2 = zzeu.zza;
        zzacbVar.zzb.zzq(str);
    }

    public static /* synthetic */ void zzc(zzacb zzacbVar, long j, int i) {
        String str = zzeu.zza;
        zzacbVar.zzb.zzt(j, i);
    }

    public static /* synthetic */ void zzd(zzacb zzacbVar, int i, long j) {
        String str = zzeu.zza;
        zzacbVar.zzb.zzl(i, j);
    }

    public static /* synthetic */ void zze(zzacb zzacbVar, zzcd zzcdVar) {
        String str = zzeu.zza;
        zzacbVar.zzb.zzv(zzcdVar);
    }

    public static /* synthetic */ void zzf(zzacb zzacbVar, zzia zziaVar) {
        zziaVar.zza();
        String str = zzeu.zza;
        zzacbVar.zzb.zzr(zziaVar);
    }

    public static /* synthetic */ void zzg(zzacb zzacbVar, zzz zzzVar, zzib zzibVar) {
        String str = zzeu.zza;
        zzacbVar.zzb.zzu(zzzVar, zzibVar);
    }

    public static /* synthetic */ void zzh(zzacb zzacbVar, Object obj, long j) {
        String str = zzeu.zza;
        zzacbVar.zzb.zzm(obj, j);
    }

    public static /* synthetic */ void zzi(zzacb zzacbVar, zzia zziaVar) {
        String str = zzeu.zza;
        zzacbVar.zzb.zzs(zziaVar);
    }

    public static /* synthetic */ void zzj(zzacb zzacbVar, String str, long j, long j2) {
        String str2 = zzeu.zza;
        zzacbVar.zzb.zzp(str, j, j2);
    }

    public final void zzk(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabr
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zzj(zzacb.this, str, j, j2);
                }
            });
        }
    }

    public final void zzl(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaca
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zzb(zzacb.this, str);
                }
            });
        }
    }

    public final void zzm(final zzia zziaVar) {
        zziaVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabz
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zzf(zzacb.this, zziaVar);
                }
            });
        }
    }

    public final void zzn(final int i, final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabt
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zzd(zzacb.this, i, j);
                }
            });
        }
    }

    public final void zzo(final zzia zziaVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabx
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zzi(zzacb.this, zziaVar);
                }
            });
        }
    }

    public final void zzp(final zzz zzzVar, @Nullable final zzib zzibVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaby
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zzg(zzacb.this, zzzVar, zzibVar);
                }
            });
        }
    }

    public final void zzq(final Object obj) {
        Handler handler = this.zza;
        if (handler != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabu
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zzh(zzacb.this, obj, elapsedRealtime);
                }
            });
        }
    }

    public final void zzr(final long j, final int i) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabv
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zzc(zzacb.this, j, i);
                }
            });
        }
    }

    public final void zzs(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabw
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zza(zzacb.this, exc);
                }
            });
        }
    }

    public final void zzt(final zzcd zzcdVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabs
                @Override // java.lang.Runnable
                public final void run() {
                    zzacb.zze(zzacb.this, zzcdVar);
                }
            });
        }
    }
}
