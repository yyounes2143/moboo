package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.Zv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1165Zv extends LinearLayout {
    public static byte[] A0A;
    public static final LinearLayout.LayoutParams A0B;
    public LinearLayout A00;
    public TextView A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final View.OnClickListener A05;
    public final RelativeLayout A06;
    public final C1376dL A07;
    public final KE A08;
    public final C1190aK A09;

    public static String A0d(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 11);
        }
        return new String(copyOfRange);
    }

    public static void A0e() {
        A0A = new byte[]{-96, -93, -93, -92, -77, -96, -88, -85, -78};
    }

    public abstract void A0h(int i);

    static {
        A0e();
        A0B = new LinearLayout.LayoutParams(-2, -2);
    }

    public AbstractC1165Zv(C1376dL c1376dL, KE ke, int i, C0837My c0837My, boolean z, String str, US us, InterfaceC1105Xn interfaceC1105Xn, C1449eX c1449eX, XH xh, N3 n3, boolean z2, String str2) {
        super(c1376dL);
        this.A02 = A0d(0, 0, 37);
        XP.A0I(this);
        this.A07 = c1376dL;
        this.A04 = i;
        this.A03 = z2;
        this.A02 = str2;
        this.A09 = new C1190aK(c1376dL);
        XP.A0K(this.A09, 0);
        XP.A0I(this.A09);
        if (z2) {
            this.A00 = new LinearLayout(c1376dL);
            this.A01 = new TextView(c1376dL);
            XP.A0I(this.A01);
        }
        if (ke == null) {
            this.A08 = new KE(c1376dL, str, c0837My, z, us, interfaceC1105Xn, c1449eX, xh, n3);
        } else {
            this.A08 = ke;
        }
        XP.A0E(1001, this.A08);
        this.A05 = AbstractC1201aV.A03(this.A08, A0d(0, 9, 52));
        this.A06 = new RelativeLayout(c1376dL);
        this.A06.setLayoutParams(A0B);
        XP.A0I(this.A06);
    }

    public void A0f() {
    }

    public void A0g() {
        this.A09.setOnClickListener(this.A05);
    }

    public final KE getCTAButton() {
        return this.A08;
    }

    public View getExpandableLayout() {
        return null;
    }

    public final ImageView getIconView() {
        return this.A09;
    }

    public void setInfo(C0835Mw c0835Mw, C0838Mz c0838Mz, String str, String str2, InterfaceC1087Wv interfaceC1087Wv, InterfaceC1174a4 interfaceC1174a4) {
        this.A08.setCta(c0838Mz, str, new HashMap(), interfaceC1087Wv, interfaceC1174a4);
        new KZ(this.A09, this.A07).A05(this.A04, this.A04).A07(str2);
    }

    public void setTitleMaxLines(int i) {
    }
}
