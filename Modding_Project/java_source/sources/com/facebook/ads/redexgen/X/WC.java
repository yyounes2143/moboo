package com.facebook.ads.redexgen.X;

import androidx.media3.common.PlaybackException;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class WC implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C1376dL A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_SETUP_REQUIRED);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-55, -50, -51, -58, -1, -3, 6, -3, 10, 1, -5};
    }

    public WC(C1376dL c1376dL) {
        this.A00 = c1376dL;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            C0988Sw otsl = new C0988Sw(A00(0, 4, 14));
            otsl.A05(1);
            otsl.A06(1);
            otsl.A0A(false);
            this.A00.A08().AAz(A00(4, 7, 44), AbstractC0987Sv.A1Y, otsl);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
