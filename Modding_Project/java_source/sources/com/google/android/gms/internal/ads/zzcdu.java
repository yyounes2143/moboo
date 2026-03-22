package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.dash.DashMediaSource;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcdu implements zzks {
    private final zzzg zza = new zzzg(true, 65536);
    private long zzb = 15000000;
    private long zzc = 30000000;
    private long zzd = 2500000;
    private long zze = DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US;
    private int zzf;
    private boolean zzg;

    @VisibleForTesting
    public final void zza(boolean z) {
        this.zzf = 0;
        this.zzg = false;
        if (z) {
            this.zza.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final long zzb(zzpc zzpcVar) {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final void zzc(zzpc zzpcVar) {
        zza(false);
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final void zzd(zzpc zzpcVar) {
        zza(true);
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final void zze(zzpc zzpcVar) {
        zza(true);
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final void zzf(zzkr zzkrVar, zzxe zzxeVar, zzyq[] zzyqVarArr) {
        int i;
        this.zzf = 0;
        for (zzyq zzyqVar : zzyqVarArr) {
            if (zzyqVar != null) {
                int i2 = this.zzf;
                int i3 = zzyqVar.zzc().zzc;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            i = 131072;
                            if (i3 != 3 && i3 != 5 && i3 != 6) {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            i = DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
                        }
                    } else {
                        i = 13107200;
                    }
                } else {
                    i = DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
                }
                this.zzf = i2 + i;
            }
        }
        this.zza.zzf(this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzg(zzpc zzpcVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzh(zzkr zzkrVar) {
        boolean z;
        long j = zzkrVar.zzb;
        boolean z2 = true;
        if (j > this.zzc) {
            z = false;
        } else if (j < this.zzb) {
            z = true;
        } else {
            z = true;
        }
        int zza = this.zza.zza();
        int i = this.zzf;
        if (!z && (!z || !this.zzg || zza >= i)) {
            z2 = false;
        }
        this.zzg = z2;
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final /* synthetic */ boolean zzi(zzbl zzblVar, zzvb zzvbVar, long j) {
        zzdx.zzf("LoadControl", "shouldContinuePreloading needs to be implemented when playlist preloading is enabled");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzj(zzkr zzkrVar) {
        long j;
        if (zzkrVar.zzd) {
            j = this.zze;
        } else {
            j = this.zzd;
        }
        if (j > 0 && zzkrVar.zzb < j) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final zzzg zzk() {
        return this.zza;
    }

    public final synchronized void zzl(int i) {
        this.zzd = i * 1000;
    }

    public final synchronized void zzm(int i) {
        this.zze = i * 1000;
    }

    public final synchronized void zzn(int i) {
        this.zzc = i * 1000;
    }

    public final synchronized void zzo(int i) {
        this.zzb = i * 1000;
    }
}
