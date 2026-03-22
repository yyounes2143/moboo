package com.google.android.gms.internal.ads;

import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import j$.util.Objects;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpd {
    public static final zzpd zza;
    public final int zzb;
    public final int zzc;
    @Nullable
    private final zzfyh zzd;

    static {
        zzpd zzpdVar;
        if (Build.VERSION.SDK_INT >= 33) {
            zzfyg zzfygVar = new zzfyg();
            for (int i = 1; i <= 10; i++) {
                zzfygVar.zzf(Integer.valueOf(zzeu.zzi(i)));
            }
            zzpdVar = new zzpd(2, zzfygVar.zzi());
        } else {
            zzpdVar = new zzpd(2, 10);
        }
        zza = zzpdVar;
    }

    public zzpd(int i, int i2) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = null;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzpd)) {
            return false;
        }
        zzpd zzpdVar = (zzpd) obj;
        if (this.zzb == zzpdVar.zzb && this.zzc == zzpdVar.zzc && Objects.equals(this.zzd, zzpdVar.zzd)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        zzfyh zzfyhVar = this.zzd;
        if (zzfyhVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzfyhVar.hashCode();
        }
        return (((this.zzb * 31) + this.zzc) * 31) + hashCode;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        return "AudioProfile[format=" + this.zzb + ", maxChannelCount=" + this.zzc + ", channelMasks=" + valueOf + "]";
    }

    public final int zza(int i, zze zzeVar) {
        boolean isDirectPlaybackSupported;
        if (this.zzd != null) {
            return this.zzc;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int i2 = this.zzb;
            for (int i3 = 10; i3 > 0; i3--) {
                int zzi = zzeu.zzi(i3);
                if (zzi != 0) {
                    isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i2).setSampleRate(i).setChannelMask(zzi).build(), zzeVar.zza().zza);
                    if (isDirectPlaybackSupported) {
                        return i3;
                    }
                }
            }
            return 0;
        }
        Integer num = (Integer) zzpe.zzb.getOrDefault(Integer.valueOf(this.zzb), 0);
        num.getClass();
        return num.intValue();
    }

    public final boolean zzb(int i) {
        zzfyh zzfyhVar = this.zzd;
        if (zzfyhVar == null) {
            if (i > this.zzc) {
                return false;
            }
            return true;
        }
        int zzi = zzeu.zzi(i);
        if (zzi == 0) {
            return false;
        }
        return zzfyhVar.contains(Integer.valueOf(zzi));
    }

    @RequiresApi(33)
    public zzpd(int i, Set set) {
        this.zzb = i;
        zzfyh zzl = zzfyh.zzl(set);
        this.zzd = zzl;
        zzgai it = zzl.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 = Math.max(i2, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.zzc = i2;
    }
}
