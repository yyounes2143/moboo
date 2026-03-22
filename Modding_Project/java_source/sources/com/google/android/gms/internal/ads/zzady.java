package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.extractor.DtsUtil;
import com.tencent.ugc.TXRecordCommon;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzady {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final long zzj;
    @Nullable
    public final zzadx zzk;
    @Nullable
    private final zzav zzl;

    private zzady(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, @Nullable zzadx zzadxVar, @Nullable zzav zzavVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
        this.zzf = zzi(i5);
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = zzh(i7);
        this.zzj = j;
        this.zzk = zzadxVar;
        this.zzl = zzavVar;
    }

    private static int zzh(int i) {
        if (i != 8) {
            if (i != 12) {
                if (i != 16) {
                    if (i != 20) {
                        if (i != 24) {
                            if (i != 32) {
                                return -1;
                            }
                            return 7;
                        }
                        return 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int zzi(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case TXRecordCommon.AUDIO_SAMPLERATE_32000 /* 32000 */:
                return 8;
            case TXRecordCommon.AUDIO_SAMPLERATE_44100 /* 44100 */:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND /* 192000 */:
                return 3;
            default:
                return -1;
        }
    }

    public final long zza() {
        long j = this.zzj;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.zze;
    }

    public final long zzb(long j) {
        String str = zzeu.zza;
        return Math.max(0L, Math.min((j * this.zze) / 1000000, this.zzj - 1));
    }

    public final zzz zzc(byte[] bArr, @Nullable zzav zzavVar) {
        bArr[4] = Byte.MIN_VALUE;
        zzav zzd = zzd(zzavVar);
        zzx zzxVar = new zzx();
        zzxVar.zzad("audio/flac");
        int i = this.zzd;
        if (i <= 0) {
            i = -1;
        }
        zzxVar.zzT(i);
        zzxVar.zzB(this.zzg);
        zzxVar.zzae(this.zze);
        zzxVar.zzX(zzeu.zzn(this.zzh));
        zzxVar.zzP(Collections.singletonList(bArr));
        zzxVar.zzW(zzd);
        return zzxVar.zzaj();
    }

    @Nullable
    public final zzav zzd(@Nullable zzav zzavVar) {
        zzav zzavVar2 = this.zzl;
        if (zzavVar2 == null) {
            return zzavVar;
        }
        return zzavVar2.zzd(zzavVar);
    }

    public final zzady zze(List list) {
        return new zzady(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(new zzav(list)));
    }

    public final zzady zzf(@Nullable zzadx zzadxVar) {
        return new zzady(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzadxVar, this.zzl);
    }

    public final zzady zzg(List list) {
        return new zzady(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzaez.zzb(list)));
    }

    public zzady(byte[] bArr, int i) {
        zzej zzejVar = new zzej(bArr, bArr.length);
        zzejVar.zzl(i * 8);
        this.zza = zzejVar.zzd(16);
        this.zzb = zzejVar.zzd(16);
        this.zzc = zzejVar.zzd(24);
        this.zzd = zzejVar.zzd(24);
        int zzd = zzejVar.zzd(20);
        this.zze = zzd;
        this.zzf = zzi(zzd);
        this.zzg = zzejVar.zzd(3) + 1;
        int zzd2 = zzejVar.zzd(5) + 1;
        this.zzh = zzd2;
        this.zzi = zzh(zzd2);
        this.zzj = zzejVar.zze(36);
        this.zzk = null;
        this.zzl = null;
    }
}
