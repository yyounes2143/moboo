package com.google.android.gms.internal.cloudmessaging;

import android.os.Build;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zza {
    public static final int zza;

    static {
        int i;
        if (Build.VERSION.SDK_INT >= 31) {
            i = TPMediaCodecProfileLevel.HEVCHighTierLevel62;
        } else {
            i = 0;
        }
        zza = i;
    }
}
