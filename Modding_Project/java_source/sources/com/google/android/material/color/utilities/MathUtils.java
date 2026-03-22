package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static double clampDouble(double d, double d2, double d3) {
        if (d3 < d) {
            return d;
        }
        if (d3 > d2) {
            return d2;
        }
        return d3;
    }

    public static int clampInt(int i, int i2, int i3) {
        if (i3 < i) {
            return i;
        }
        if (i3 > i2) {
            return i2;
        }
        return i3;
    }

    public static double differenceDegrees(double d, double d2) {
        return 180.0d - Math.abs(Math.abs(d - d2) - 180.0d);
    }

    public static double lerp(double d, double d2, double d3) {
        return ((1.0d - d3) * d) + (d3 * d2);
    }

    public static double[] matrixMultiply(double[] dArr, double[][] dArr2) {
        double d = dArr[0];
        double[] dArr3 = dArr2[0];
        double d2 = dArr[1];
        double d3 = dArr[2];
        double d4 = (dArr3[0] * d) + (dArr3[1] * d2) + (dArr3[2] * d3);
        double[] dArr4 = dArr2[1];
        double d5 = (dArr4[0] * d) + (dArr4[1] * d2) + (dArr4[2] * d3);
        double[] dArr5 = dArr2[2];
        return new double[]{d4, d5, (d * dArr5[0]) + (d2 * dArr5[1]) + (d3 * dArr5[2])};
    }

    public static double rotationDirection(double d, double d2) {
        if (sanitizeDegreesDouble(d2 - d) <= 180.0d) {
            return 1.0d;
        }
        return -1.0d;
    }

    public static double sanitizeDegreesDouble(double d) {
        double d2 = d % 360.0d;
        if (d2 < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return d2 + 360.0d;
        }
        return d2;
    }

    public static int sanitizeDegreesInt(int i) {
        int i2 = i % TXVodDownloadDataSource.QUALITY_360P;
        if (i2 < 0) {
            return i2 + TXVodDownloadDataSource.QUALITY_360P;
        }
        return i2;
    }

    public static int signum(double d) {
        if (d < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return -1;
        }
        if (d == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return 0;
        }
        return 1;
    }
}
