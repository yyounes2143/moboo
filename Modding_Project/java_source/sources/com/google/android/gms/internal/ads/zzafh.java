package com.google.android.gms.internal.ads;

import androidx.media3.extractor.avi.AviExtractor;
import java.math.RoundingMode;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzafh implements zzafb {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;

    private zzafh(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.zza = i;
        this.zzb = i3;
        this.zzc = i4;
        this.zzd = i5;
        this.zze = i6;
        this.zzf = i7;
    }

    public static zzafh zzd(zzek zzekVar) {
        int zzi = zzekVar.zzi();
        zzekVar.zzM(12);
        int zzi2 = zzekVar.zzi();
        int zzi3 = zzekVar.zzi();
        int zzi4 = zzekVar.zzi();
        zzekVar.zzM(4);
        int zzi5 = zzekVar.zzi();
        int zzi6 = zzekVar.zzi();
        zzekVar.zzM(4);
        return new zzafh(zzi, zzi2, zzi3, zzi4, zzi5, zzi6, zzekVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zza() {
        return AviExtractor.FOURCC_strh;
    }

    public final int zzb() {
        int i = this.zza;
        if (i != 1935960438) {
            if (i != 1935963489) {
                if (i != 1937012852) {
                    zzdx.zzf("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i))));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }

    public final long zzc() {
        RoundingMode roundingMode = RoundingMode.DOWN;
        return zzeu.zzu(this.zzd, this.zzb * 1000000, this.zzc, roundingMode);
    }
}
