package com.google.android.gms.internal.ads;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.math.RoundingMode;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgba {
    public static long zza(long j, long j2) {
        boolean z;
        boolean z2 = false;
        if ((j ^ j2) < 0) {
            z = true;
        } else {
            z = false;
        }
        long j3 = j + j2;
        if ((j ^ j3) >= 0) {
            z2 = true;
        }
        if (z | z2) {
            return j3;
        }
        throw new ArithmeticException("overflow: checkedAdd(" + j + ", " + j2 + ")");
    }

    public static long zzb(long j, long j2, RoundingMode roundingMode) {
        roundingMode.getClass();
        long j3 = j / j2;
        long j4 = j - (j2 * j3);
        if (j4 != 0) {
            int i = ((int) ((j ^ j2) >> 63)) | 1;
            switch (zzgaz.zza[roundingMode.ordinal()]) {
                case 1:
                    zzgbb.zzb(false);
                    return j3;
                case 2:
                    return j3;
                case 3:
                    if (i >= 0) {
                        return j3;
                    }
                    break;
                case 4:
                    break;
                case 5:
                    if (i <= 0) {
                        return j3;
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    long abs = Math.abs(j4);
                    int i2 = ((abs - (Math.abs(j2) - abs)) > 0L ? 1 : ((abs - (Math.abs(j2) - abs)) == 0L ? 0 : -1));
                    if (i2 == 0) {
                        if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j3) == 0)) {
                            return j3;
                        }
                    } else if (i2 <= 0) {
                        return j3;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            return j3 + i;
        }
        return j3;
    }

    public static long zzc(long j, long j2) {
        zzgbb.zza("a", j);
        zzgbb.zza(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, j2);
        if (j == 0) {
            return j2;
        }
        if (j2 == 0) {
            return j;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j3 = j >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j2);
        long j4 = j2 >> numberOfTrailingZeros2;
        while (j3 != j4) {
            long j5 = j3 - j4;
            long j6 = (j5 >> 63) & j5;
            long j7 = (j5 - j6) - j6;
            j3 = j7 >> Long.numberOfTrailingZeros(j7);
            j4 += j6;
        }
        return j3 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static long zzd(long j, long j2) {
        boolean z;
        boolean z2;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(j) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j2);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        long j3 = j ^ j2;
        boolean z3 = false;
        if (numberOfLeadingZeros < 64) {
            z = true;
        } else {
            z = false;
        }
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (j2 == Long.MIN_VALUE) {
            z3 = true;
        }
        long j4 = (j3 >>> 63) + Long.MAX_VALUE;
        if (!(z | (z3 & z2))) {
            long j5 = j * j2;
            if (i == 0 || j5 / j == j2) {
                return j5;
            }
        }
        return j4;
    }
}
