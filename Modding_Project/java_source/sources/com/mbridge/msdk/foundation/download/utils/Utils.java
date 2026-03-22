package com.mbridge.msdk.foundation.download.utils;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class Utils {
    private Utils() {
    }

    public static int getDownloadRate(long j, long j2) {
        if (j != 0 && j2 != 0) {
            if (j == j2) {
                return 100;
            }
            return (int) (((j2 * 1.0d) / (j * 1.0d)) * 100.0d);
        }
        return 0;
    }
}
