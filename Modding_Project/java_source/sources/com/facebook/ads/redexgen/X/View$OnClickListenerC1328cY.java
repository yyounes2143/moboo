package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.cY  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1328cY implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C03533r A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 41);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{89, 84, 80, 85, 84, 67};
    }

    public View$OnClickListenerC1328cY(C03533r c03533r) {
        this.A00 = c03533r;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC1210ae abstractC1210ae;
        AbstractC1210ae abstractC1210ae2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            abstractC1210ae = this.A00.A03;
            if (abstractC1210ae != null) {
                abstractC1210ae2 = this.A00.A03;
                abstractC1210ae2.A1A(A00(0, 6, 24));
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
