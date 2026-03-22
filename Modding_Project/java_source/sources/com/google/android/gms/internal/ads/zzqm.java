package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Build;
import androidx.annotation.Nullable;
import io.flutter.embedding.android.KeyboardMap;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzqm {
    private long zzA;
    private boolean zzB;
    private long zzC;
    private long zzD;
    private boolean zzE;
    private long zzF;
    private zzdg zzG;
    private final zzql zza;
    private final long[] zzb;
    @Nullable
    private AudioTrack zzc;
    private int zzd;
    @Nullable
    private zzqk zze;
    private int zzf;
    private long zzg;
    private float zzh;
    private boolean zzi;
    private long zzj;
    private long zzk;
    @Nullable
    private Method zzl;
    private long zzm;
    private boolean zzn;
    private boolean zzo;
    private long zzp;
    private long zzq;
    private long zzr;
    private long zzs;
    private int zzt;
    private int zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    public zzqm(zzql zzqlVar) {
        this.zza = zzqlVar;
        try {
            this.zzl = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.zzb = new long[10];
        this.zzG = zzdg.zza;
    }

    private final long zzl() {
        if (this.zzv != -9223372036854775807L) {
            return Math.min(this.zzy, zzn());
        }
        long zzb = this.zzG.zzb();
        if (zzb - this.zzq >= 5) {
            AudioTrack audioTrack = this.zzc;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack.getPlaybackHeadPosition();
                int i = Build.VERSION.SDK_INT;
                long j = playbackHeadPosition & KeyboardMap.kValueMask;
                if (i <= 29) {
                    if (j == 0) {
                        if (this.zzr > 0 && playState == 3) {
                            if (this.zzw == -9223372036854775807L) {
                                this.zzw = zzb;
                            }
                        } else {
                            j = 0;
                        }
                    }
                    this.zzw = -9223372036854775807L;
                }
                if (this.zzr > j) {
                    this.zzs++;
                }
                this.zzr = j;
            }
            this.zzq = zzb;
        }
        return this.zzr + this.zzF + (this.zzs << 32);
    }

    private final long zzm() {
        return zzeu.zzt(zzl(), this.zzf);
    }

    private final long zzn() {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.zzx;
        }
        return this.zzx + zzeu.zzp(zzeu.zzq(zzeu.zzs(this.zzG.zzb()) - this.zzv, this.zzh), this.zzf);
    }

    private final void zzo() {
        this.zzj = 0L;
        this.zzu = 0;
        this.zzt = 0;
        this.zzk = 0L;
        this.zzA = 0L;
        this.zzD = 0L;
        this.zzi = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza() {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqm.zza():long");
    }

    public final void zzb(long j) {
        this.zzx = zzl();
        this.zzv = zzeu.zzs(this.zzG.zzb());
        this.zzy = j;
    }

    public final void zzc() {
        zzo();
        this.zzc = null;
        this.zze = null;
    }

    public final void zzd(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        long j;
        this.zzc = audioTrack;
        this.zzd = i3;
        this.zze = new zzqk(audioTrack);
        this.zzf = audioTrack.getSampleRate();
        boolean zzK = zzeu.zzK(i);
        this.zzo = zzK;
        if (zzK) {
            j = zzeu.zzt(i3 / i2, this.zzf);
        } else {
            j = -9223372036854775807L;
        }
        this.zzg = j;
        this.zzr = 0L;
        this.zzs = 0L;
        this.zzE = false;
        this.zzF = 0L;
        this.zzn = false;
        this.zzv = -9223372036854775807L;
        this.zzw = -9223372036854775807L;
        this.zzp = 0L;
        this.zzm = 0L;
        this.zzh = 1.0f;
    }

    public final void zze(zzdg zzdgVar) {
        this.zzG = zzdgVar;
    }

    public final void zzf() {
        if (this.zzv != -9223372036854775807L) {
            this.zzv = zzeu.zzs(this.zzG.zzb());
        }
        zzqk zzqkVar = this.zze;
        zzqkVar.getClass();
        zzqkVar.zze();
    }

    public final boolean zzg(long j) {
        if (j <= zzeu.zzp(zza(), this.zzf)) {
            return false;
        }
        return true;
    }

    public final boolean zzh() {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 3) {
            return true;
        }
        return false;
    }

    public final boolean zzi(long j) {
        if (this.zzw != -9223372036854775807L && j > 0 && this.zzG.zzb() - this.zzw >= 200) {
            return true;
        }
        return false;
    }

    public final boolean zzj(long j) {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        boolean z = this.zzn;
        boolean zzg = zzg(j);
        this.zzn = zzg;
        if (z && !zzg && playState != 1) {
            this.zza.zze(this.zzd, zzeu.zzv(this.zzg));
        }
        return true;
    }

    public final boolean zzk() {
        zzo();
        if (this.zzv == -9223372036854775807L) {
            zzqk zzqkVar = this.zze;
            zzqkVar.getClass();
            zzqkVar.zze();
            return true;
        }
        this.zzx = zzl();
        return false;
    }
}
