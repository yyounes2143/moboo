package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzzu {
    public static final zzzn zza = new zzzn(2, -9223372036854775807L, null);
    public static final zzzn zzb = new zzzn(3, -9223372036854775807L, null);
    private final zzaac zzc = zzaaa.zza(zzeu.zzF("ExoPlayer:Loader:ProgressiveMediaPeriod"), new zzdk() { // from class: com.google.android.gms.internal.ads.zzzl
        @Override // com.google.android.gms.internal.ads.zzdk
        public final void zza(Object obj) {
            ((ExecutorService) obj).shutdown();
        }
    });
    @Nullable
    private zzzo zzd;
    @Nullable
    private IOException zze;

    public zzzu(String str) {
    }

    public static zzzn zzb(boolean z, long j) {
        return new zzzn(z ? 1 : 0, j, null);
    }

    public final long zza(zzzp zzzpVar, zzzm zzzmVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzdc.zzb(myLooper);
        this.zze = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzzo(this, myLooper, zzzpVar, zzzmVar, i, elapsedRealtime).zzc(0L);
        return elapsedRealtime;
    }

    public final void zzg() {
        zzzo zzzoVar = this.zzd;
        zzdc.zzb(zzzoVar);
        zzzoVar.zza(false);
    }

    public final void zzh() {
        this.zze = null;
    }

    public final void zzi(int i) throws IOException {
        IOException iOException = this.zze;
        if (iOException == null) {
            zzzo zzzoVar = this.zzd;
            if (zzzoVar != null) {
                zzzoVar.zzb(i);
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void zzj(@Nullable zzzq zzzqVar) {
        zzzo zzzoVar = this.zzd;
        if (zzzoVar != null) {
            zzzoVar.zza(true);
        }
        zzaac zzaacVar = this.zzc;
        zzaacVar.execute(new zzzr(zzzqVar));
        zzaacVar.zza();
    }

    public final boolean zzk() {
        if (this.zze != null) {
            return true;
        }
        return false;
    }

    public final boolean zzl() {
        if (this.zzd != null) {
            return true;
        }
        return false;
    }
}
