package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.os.Build;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzte {
    private static Boolean zza;

    public static int zza(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        if (Build.VERSION.SDK_INT >= 29) {
            Boolean bool = zza;
            if (bool == null || !bool.booleanValue()) {
                return zztd.zza(videoCapabilities, i, i2, d);
            }
            return 0;
        }
        return 0;
    }
}
