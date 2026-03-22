package com.google.android.gms.internal.base;

import android.os.Build;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zap {
    public static final int zaa;

    static {
        int i;
        if (Build.VERSION.SDK_INT >= 31) {
            i = TPMediaCodecProfileLevel.HEVCHighTierLevel62;
        } else {
            i = 0;
        }
        zaa = i;
    }
}
