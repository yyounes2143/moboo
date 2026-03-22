package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;
/* renamed from: com.facebook.ads.redexgen.X.d4  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1360d4 {
    public KE A00;
    public final C0825Ml A01;
    public final C0835Mw A02;
    public final N0 A03;
    public final N9 A04;
    public final C1376dL A05;
    public final C1017Ua A06;
    public static final int A09 = (int) (AbstractC1077Wl.A02 * 4.0f);
    public static final int A07 = (int) (AbstractC1077Wl.A02 * 72.0f);
    public static final int A08 = (int) (AbstractC1077Wl.A02 * 8.0f);

    public C1360d4(C1376dL c1376dL, US us, AbstractC1657hy abstractC1657hy) {
        this.A05 = c1376dL;
        this.A06 = new C1017Ua(abstractC1657hy.A25(), us);
        this.A01 = abstractC1657hy.A1z();
        this.A02 = abstractC1657hy.A20().A0I();
        this.A04 = abstractC1657hy.A23();
        this.A03 = abstractC1657hy.A20().A0K();
    }

    private View A00(KE ke) {
        C1196aQ c1196aQ = new C1196aQ(this.A05, this.A01.A01(), true, false, false);
        c1196aQ.A04(this.A02.A0F(), this.A02.A04(), null, false, true);
        c1196aQ.setAlignment(17);
        C1190aK c1190aK = new C1190aK(this.A05);
        XP.A0K(c1190aK, 0);
        c1190aK.setRadius(50);
        new KZ(c1190aK, this.A05).A04().A07(this.A04.A01());
        LinearLayout linearLayout = new LinearLayout(this.A05);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(c1190aK, new LinearLayout.LayoutParams(A07, A07));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A08, 0, A08);
        linearLayout.addView(c1196aQ, layoutParams);
        if (ke != null) {
            XP.A0H(ke);
            linearLayout.addView(ke, layoutParams);
            if (TextUtils.isEmpty(ke.getText())) {
                XP.A0F(ke);
            }
        }
        return linearLayout;
    }

    private C04206g A01() {
        C04206g c04206g = new C04206g(this.A05);
        c04206g.setLayoutManager(new C1556gI(this.A05, 0, false));
        c04206g.setAdapter(new C0608Eb(this.A05, this.A03.A02(), A09, this.A00));
        return c04206g;
    }

    private final EnumC1359d3 A02() {
        if (!this.A03.A02().isEmpty()) {
            return EnumC1359d3.A03;
        }
        return EnumC1359d3.A02;
    }

    public final Pair<EnumC1359d3, View> A03(KE ke) {
        View A01;
        this.A00 = ke;
        EnumC1359d3 A02 = A02();
        switch (C1358d2.A00[A02.ordinal()]) {
            case 1:
                A01 = A01();
                break;
            default:
                A01 = A00(this.A00);
                break;
        }
        AbstractC1019Uc.A04(A01, this.A06, UZ.A0S);
        return new Pair<>(A02, A01);
    }
}
