package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.unity3d.services.core.di.ServiceProvider;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzabl {
    private final zzabk zza;
    private final zzabp zzb;
    private boolean zzc;
    private long zzf;
    private boolean zzi;
    private boolean zzl;
    private boolean zzm;
    private int zzd = 0;
    private long zze = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private float zzj = 1.0f;
    private zzdg zzk = zzdg.zza;

    public zzabl(Context context, zzabk zzabkVar, long j) {
        this.zza = zzabkVar;
        this.zzb = new zzabp(context);
    }

    private final void zzo(int i) {
        this.zzd = Math.min(this.zzd, i);
    }

    public final int zza(long j, long j2, long j3, long j4, boolean z, boolean z2, zzabj zzabjVar) throws zzik {
        long j5;
        boolean z3;
        long j6;
        long j7;
        boolean z4;
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        zzabj.zzg(zzabjVar);
        if (this.zze == -9223372036854775807L) {
            this.zze = j2;
        }
        if (this.zzg != j) {
            this.zzb.zzd(j);
            this.zzg = j;
        }
        long j13 = (long) ((j - j2) / this.zzj);
        if (this.zzc) {
            j13 -= zzeu.zzs(this.zzk.zzb()) - j3;
        }
        zzabjVar.zza = j13;
        if (z && !z2) {
            return 3;
        }
        if (this.zzl) {
            j5 = zzabjVar.zza;
            if (this.zzh != -9223372036854775807L && !this.zzi) {
                z3 = false;
            } else {
                int i = this.zzd;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                z3 = false;
                                long zzs = zzeu.zzs(this.zzk.zzb()) - this.zzf;
                                if (this.zzc && j5 < -30000 && zzs > SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
                                    return 0;
                                }
                            } else {
                                throw new IllegalStateException();
                            }
                        } else {
                            z3 = false;
                            if (j2 >= j4) {
                                return 0;
                            }
                        }
                    } else {
                        return 0;
                    }
                } else {
                    z3 = false;
                    if (this.zzc) {
                        return 0;
                    }
                }
            }
            if (!this.zzc || j2 == this.zze) {
                return 5;
            }
            long zzc = this.zzk.zzc();
            zzabp zzabpVar = this.zzb;
            j6 = zzabjVar.zza;
            zzabjVar.zzb = zzabpVar.zza((j6 * 1000) + zzc);
            j7 = zzabjVar.zzb;
            zzabjVar.zza = (j7 - zzc) / 1000;
            if (this.zzh != -9223372036854775807L && !this.zzi) {
                z4 = true;
            } else {
                z4 = z3;
            }
            zzabk zzabkVar = this.zza;
            j8 = zzabjVar.zza;
            if (!zzabkVar.zzaU(j8, j2, j3, z2, z4)) {
                j9 = zzabjVar.zza;
                if (j9 >= -30000 || z2) {
                    j10 = zzabjVar.zza;
                    if (j10 > ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT) {
                        return 5;
                    }
                    return 1;
                } else if (z4) {
                    return 3;
                } else {
                    return 2;
                }
            }
            return 4;
        }
        this.zzm = true;
        zzabk zzabkVar2 = this.zza;
        j11 = zzabjVar.zza;
        if (zzabkVar2.zzaU(j11, j2, j3, z2, true)) {
            return 4;
        }
        if (this.zzc) {
            j12 = zzabjVar.zza;
            if (j12 < 30000) {
                return 3;
            }
        }
        return 5;
    }

    public final void zzb() {
        if (this.zzd == 0) {
            this.zzd = 1;
        }
    }

    public final void zzc(boolean z) {
        this.zzi = z;
        this.zzh = -9223372036854775807L;
    }

    public final void zzd() {
        this.zzc = true;
        this.zzf = zzeu.zzs(this.zzk.zzb());
        this.zzb.zzg();
    }

    public final void zze() {
        this.zzc = false;
        this.zzh = -9223372036854775807L;
        this.zzb.zzh();
    }

    public final void zzf(int i) {
        if (i != 0) {
            if (i != 1) {
                zzo(2);
                return;
            } else {
                this.zzd = 0;
                return;
            }
        }
        this.zzd = 1;
    }

    public final void zzg() {
        this.zzb.zzf();
        this.zzg = -9223372036854775807L;
        this.zze = -9223372036854775807L;
        zzo(1);
        this.zzh = -9223372036854775807L;
    }

    public final void zzh(int i) {
        this.zzb.zzj(i);
    }

    public final void zzi(zzdg zzdgVar) {
        this.zzk = zzdgVar;
    }

    public final void zzj(float f) {
        this.zzb.zzc(f);
    }

    public final void zzk(@Nullable Surface surface) {
        boolean z;
        if (surface != null) {
            z = true;
        } else {
            z = false;
        }
        this.zzl = z;
        this.zzm = false;
        this.zzb.zzi(surface);
        zzo(1);
    }

    public final void zzl(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        if (f == this.zzj) {
            return;
        }
        this.zzj = f;
        this.zzb.zze(f);
    }

    public final boolean zzm(boolean z) {
        if (z && (this.zzd == 3 || (!this.zzl && this.zzm))) {
            this.zzh = -9223372036854775807L;
            return true;
        } else if (this.zzh == -9223372036854775807L) {
            return false;
        } else {
            if (this.zzk.zzb() < this.zzh) {
                return true;
            }
            this.zzh = -9223372036854775807L;
            return false;
        }
    }

    public final boolean zzn() {
        int i = this.zzd;
        this.zzd = 3;
        this.zzf = zzeu.zzs(this.zzk.zzb());
        if (i != 3) {
            return true;
        }
        return false;
    }
}
