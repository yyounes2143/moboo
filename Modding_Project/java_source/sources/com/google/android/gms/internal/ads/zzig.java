package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import androidx.media3.exoplayer.DefaultLoadControl;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzig implements zzks {
    private final zzzg zza;
    private final long zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long zzf;
    private final HashMap zzg;
    private long zzh;

    public zzig() {
        zzzg zzzgVar = new zzzg(true, 65536);
        zzl(1000, 0, "bufferForPlaybackMs", "0");
        zzl(2000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        zzl(50000, 1000, "minBufferMs", "bufferForPlaybackMs");
        zzl(50000, 2000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        zzl(50000, 50000, "maxBufferMs", "minBufferMs");
        zzl(0, 0, "backBufferDurationMs", "0");
        this.zza = zzzgVar;
        this.zzb = zzeu.zzs(ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT);
        this.zzc = zzeu.zzs(ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT);
        this.zzd = zzeu.zzs(1000L);
        this.zze = zzeu.zzs(2000L);
        this.zzf = zzeu.zzs(0L);
        this.zzg = new HashMap();
        this.zzh = -1L;
    }

    private static void zzl(int i, int i2, String str, String str2) {
        boolean z;
        String str3 = str + " cannot be less than " + str2;
        if (i >= i2) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zze(z, str3);
    }

    private final void zzm(zzpc zzpcVar) {
        if (this.zzg.remove(zzpcVar) != null) {
            zzn();
        }
    }

    private final void zzn() {
        if (this.zzg.isEmpty()) {
            this.zza.zze();
        } else {
            this.zza.zzf(zza());
        }
    }

    @VisibleForTesting
    public final int zza() {
        int i = 0;
        for (zzie zzieVar : this.zzg.values()) {
            i += zzieVar.zzb;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final long zzb(zzpc zzpcVar) {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final void zzc(zzpc zzpcVar) {
        long id = Thread.currentThread().getId();
        long j = this.zzh;
        boolean z = true;
        if (j != -1 && j != id) {
            z = false;
        }
        zzdc.zzg(z, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.zzh = id;
        HashMap hashMap = this.zzg;
        if (!hashMap.containsKey(zzpcVar)) {
            hashMap.put(zzpcVar, new zzie(null));
        }
        zzie zzieVar = (zzie) hashMap.get(zzpcVar);
        zzieVar.getClass();
        zzieVar.zzb = 13107200;
        zzieVar.zza = false;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final void zzd(zzpc zzpcVar) {
        zzm(zzpcVar);
        if (this.zzg.isEmpty()) {
            this.zzh = -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final void zze(zzpc zzpcVar) {
        zzm(zzpcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final void zzf(zzkr zzkrVar, zzxe zzxeVar, zzyq[] zzyqVarArr) {
        zzie zzieVar = (zzie) this.zzg.get(zzkrVar.zza);
        zzieVar.getClass();
        int length = zzyqVarArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = 13107200;
            if (i < length) {
                zzyq zzyqVar = zzyqVarArr[i];
                if (zzyqVar != null) {
                    switch (zzyqVar.zzc().zzc) {
                        case -1:
                        case 1:
                            break;
                        case 0:
                            i3 = DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
                            break;
                        case 2:
                            i3 = DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        default:
                            i3 = 131072;
                            break;
                    }
                    i2 += i3;
                }
                i++;
            } else {
                zzieVar.zzb = Math.max(13107200, i2);
                zzn();
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzg(zzpc zzpcVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzh(zzkr zzkrVar) {
        zzie zzieVar = (zzie) this.zzg.get(zzkrVar.zza);
        zzieVar.getClass();
        int zza = this.zza.zza();
        int zza2 = zza();
        long j = this.zzb;
        float f = zzkrVar.zzc;
        if (f > 1.0f) {
            j = Math.min(zzeu.zzq(j, f), this.zzc);
        }
        long j2 = zzkrVar.zzb;
        int i = (j2 > Math.max(j, 500000L) ? 1 : (j2 == Math.max(j, 500000L) ? 0 : -1));
        boolean z = false;
        if (i < 0) {
            if (zza < zza2) {
                z = true;
            }
            zzieVar.zza = z;
            if (!z && j2 < 500000) {
                zzdx.zzf("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.zzc || zza >= zza2) {
            zzieVar.zza = false;
        }
        return zzieVar.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzi(zzbl zzblVar, zzvb zzvbVar, long j) {
        for (zzie zzieVar : this.zzg.values()) {
            if (zzieVar.zza) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzj(zzkr zzkrVar) {
        long j;
        boolean z = zzkrVar.zzd;
        long zzr = zzeu.zzr(zzkrVar.zzb, zzkrVar.zzc);
        if (z) {
            j = this.zze;
        } else {
            j = this.zzd;
        }
        long j2 = zzkrVar.zze;
        if (j2 != -9223372036854775807L) {
            j = Math.min(j2 / 2, j);
        }
        if (j > 0 && zzr < j && this.zza.zza() < zza()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final zzzg zzk() {
        return this.zza;
    }
}
