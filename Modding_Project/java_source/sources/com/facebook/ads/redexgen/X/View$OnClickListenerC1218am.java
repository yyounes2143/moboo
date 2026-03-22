package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.am  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1218am implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C03915d A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{95, SignedBytes.MAX_POWER_OF_TWO, 77, 76, 70};
    }

    public View$OnClickListenerC1218am(C03915d c03915d) {
        this.A00 = c03915d;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0E(A00(0, 5, 48));
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
