package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.bV  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1263bV implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C0728Is A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 64);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.ETB, 19, Ascii.US, Ascii.EM, Ascii.ESC};
    }

    public View$OnClickListenerC1263bV(C0728Is c0728Is) {
        this.A00 = c0728Is;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1214ai c1214ai;
        C1214ai c1214ai2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0m(A00(0, 5, 62));
            c1214ai = this.A00.A0c;
            if (c1214ai.A0E() != null) {
                c1214ai2 = this.A00.A0c;
                c1214ai2.A0E().ABr();
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
