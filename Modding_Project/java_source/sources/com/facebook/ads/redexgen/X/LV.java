package com.facebook.ads.redexgen.X;

import android.transition.ChangeBounds;
import android.transition.Explode;
import android.transition.TransitionSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
/* loaded from: assets/audience_network.dex */
public final class LV extends AbstractC1121Yd {
    public static String[] A03 = {"ps9u6Kn8p", "fRCCllxRFm9XYnsS5Nz0CDYYbd8rz98F", "veZY5LUK4HkumILqtvhVtf9OT9QK1Jmh", "8c6Edyt19YE2bwpDp37rWBgdyfN4I4si", "Dgwj6SSLqT", "biYcUlACC5CMDg3zbjwwDR7mq5XP76DA", "rp5V5gFYHfFnaijOqqdMDMWavMrEx7HP", "ycj43TNZcka4uMSCxDz6fuqQ2r9gi3g6"};
    public static final int A04 = (int) (AbstractC1077Wl.A02 * 8.0f);
    public final RelativeLayout A00;
    public final O2 A01;
    public final C1376dL A02;

    public LV(C1376dL c1376dL, US us, String str, N9 n9, InterfaceC1106Xo interfaceC1106Xo, InterfaceC1105Xn interfaceC1105Xn) {
        super(c1376dL, us, str, n9, interfaceC1106Xo, interfaceC1105Xn);
        this.A02 = c1376dL;
        this.A01 = O3.A00(c1376dL.A02());
        this.A00 = new RelativeLayout(getContext());
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        XP.A0K(this.A00, -1728053248);
        this.A00.setOnClickListener(new View$OnClickListenerC1126Yi(this));
    }

    public static RelativeLayout.LayoutParams A00(boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, z ? -1 : -2);
        layoutParams.addRule(12);
        return layoutParams;
    }

    private void A01() {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new ChangeBounds()).addTransition(new Explode());
        XP.A0T(this, transitionSet);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1121Yd
    public final void A0N() {
        O6 A0A = this.A01.A0A();
        C1136Ys c1136Ys = new C1136Ys(this.A02);
        c1136Ys.setInfo(XX.HIDE_AD, this.A01.A0H(), this.A01.A0G());
        c1136Ys.setOnClickListener(new View$OnClickListenerC1127Yj(this));
        O6 A0B = this.A01.A0B();
        C1136Ys c1136Ys2 = new C1136Ys(this.A02);
        c1136Ys2.setInfo(XX.REPORT_AD, this.A01.A0L(), this.A01.A0K());
        c1136Ys2.setOnClickListener(new View$OnClickListenerC1128Yk(this));
        C1136Ys c1136Ys3 = new C1136Ys(this.A02);
        c1136Ys3.setInfo(XX.AD_CHOICES_ICON, this.A01.A0M(), "");
        c1136Ys3.setOnClickListener(new View$OnClickListenerC1129Yl(this));
        LinearLayout.LayoutParams itemParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setClickable(true);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A04 * 2, A04, A04 * 2, A04);
        XP.A0K(linearLayout, -1);
        if (!A0A.A05().isEmpty()) {
            linearLayout.addView(c1136Ys, itemParams);
        }
        if (!A0B.A05().isEmpty()) {
            linearLayout.addView(c1136Ys2, itemParams);
        }
        linearLayout.addView(c1136Ys3, itemParams);
        A01();
        this.A00.removeAllViews();
        this.A00.addView(linearLayout, A00(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1121Yd
    public final void A0O() {
        XP.A0G(this);
        this.A00.removeAllViews();
        XP.A0H(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1121Yd
    public final void A0P(O6 o6, O4 o4) {
        String A0E;
        int i;
        String str;
        if (o4 == O4.A05) {
            return;
        }
        boolean z = o4 == O4.A06;
        C1119Yb c1119Yb = new C1119Yb(this.A02, this.A0B);
        if (z) {
            O2 o2 = this.A01;
            if (A03[4].length() != 10) {
                throw new RuntimeException();
            }
            A03[6] = "KfE81dulHFmzGO7NxqDM7oaE1pV2dKkX";
            A0E = o2.A0F();
        } else {
            A0E = this.A01.A0E();
        }
        C1119Yb A0E2 = c1119Yb.A0I(A0E).A0H(this.A01.A0D()).A0F(o6.A04()).A0E(z ? XX.REPORT_AD : XX.HIDE_AD);
        if (z) {
            i = -552389;
        } else {
            i = -13272859;
        }
        C1119Yb A0D = A0E2.A0D(i);
        if (this.A0A != null) {
            N9 n9 = this.A0A;
            if (A03[1].charAt(11) != 'X') {
                str = n9.A01();
            } else {
                A03[0] = "vLdx3pZGf";
                str = n9.A01();
            }
        } else {
            str = "";
        }
        C1120Yc adHiddenView = A0D.A0G(str).A0M();
        XP.A0K(adHiddenView, -1);
        XP.A0R(this);
        this.A00.removeAllViews();
        this.A00.addView(adHiddenView, A00(true));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1121Yd
    public final void A0Q(O6 o6, O4 o4) {
        String A0H;
        boolean z = o4 == O4.A06;
        C1376dL c1376dL = this.A02;
        InterfaceC1123Yf interfaceC1123Yf = this.A0B;
        if (z) {
            A0H = this.A01.A0L();
        } else {
            A0H = this.A01.A0H();
        }
        C1139Yv c1139Yv = new C1139Yv(c1376dL, o6, interfaceC1123Yf, A0H, z ? XX.REPORT_AD : XX.HIDE_AD);
        c1139Yv.setClickable(true);
        XP.A0K(c1139Yv, -1);
        c1139Yv.setPadding(A04 * 2, A04, A04 * 2, A04);
        A01();
        this.A00.removeAllViews();
        RelativeLayout relativeLayout = this.A00;
        String[] strArr = A03;
        if (strArr[3].charAt(9) == strArr[5].charAt(9)) {
            throw new RuntimeException();
        }
        A03[1] = "OoQvJ70CiRWXlhIiWSDPNsGTFrOY4nX1";
        relativeLayout.addView(c1139Yv, A00(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1121Yd
    public final boolean A0R() {
        return false;
    }
}
