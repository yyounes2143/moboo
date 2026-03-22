package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.c9  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1303c9 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C4Z A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 76);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.DC4, Ascii.ETB, Ascii.ETB, Ascii.CAN, 39, Ascii.DC4, Ascii.FS, Ascii.US, 38};
    }

    public View$OnClickListenerC1303c9(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        C1251bJ c1251bJ;
        InterfaceC1323cT interfaceC1323cT;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0K;
            if (!z) {
                c1251bJ = this.A00.A0H;
                c1251bJ.A02(A00(0, 9, 103));
                interfaceC1323cT = this.A00.A0Z;
                interfaceC1323cT.ABr();
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
