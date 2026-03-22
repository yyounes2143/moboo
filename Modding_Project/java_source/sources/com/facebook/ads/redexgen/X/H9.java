package com.facebook.ads.redexgen.X;

import androidx.media3.extractor.WavUtil;
/* loaded from: assets/audience_network.dex */
public abstract class H9 {
    public static int A00(int i, int i2) {
        switch (i) {
            case 1:
            case WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE /* 65534 */:
                return AbstractC03624a.A03(i2);
            case 3:
                return i2 == 32 ? 4 : 0;
            default:
                return 0;
        }
    }
}
