package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.b9  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1241b9 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ JU A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 65);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-58, -63, -63, -66, -76, -77, -60};
    }

    public View$OnClickListenerC1241b9(JU ju) {
        this.A00 = ju;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        C1251bJ c1251bJ;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0Q;
            if (!z) {
                c1251bJ = this.A00.A0O;
                c1251bJ.A02(A00(0, 7, 17));
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
