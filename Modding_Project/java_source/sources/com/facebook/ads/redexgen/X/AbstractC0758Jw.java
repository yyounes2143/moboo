package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
/* renamed from: com.facebook.ads.redexgen.X.Jw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0758Jw extends AbstractC1210ae implements Wf {
    public static byte[] A0B;
    public static String[] A0C = {"OqBcBxPX2ZziMc2IT6MCTLtQAfN", "zbHyi1ztTRv4YAmmT0P0cBLwkAbgbibY", "SGCBgG4YDDdHsd7wreTLkUhlfmq", "6SoBxKZAX5xZewPuDXqUB5F5Zi6ZkxRk", "Ec2XCBDA1LqSXAKcLbhR3N0Z6X2H9u1y", "7uWZE4LuLIesc8VJARyN", "MrB", "uRKWJ0Ox"};
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final int A0H;
    public static final int A0I;
    public static final int A0J;
    public static final int A0K;
    public static final int A0L;
    public static final int A0M;
    public static final int A0N;
    public static final int A0O;
    public static final int A0P;
    public static final int A0Q;
    public C0760Jy A00;
    public D9 A01;
    public C0569Co A02;
    public CU A03;
    public final Handler A04;
    public final AbstractC1657hy A05;
    public final C0828Mp A06;
    public final InterfaceC1105Xn A07;
    public final AbstractC1165Zv A08;
    public final C1073Wh A09;
    public final AtomicBoolean A0A;

    public static String A0L(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 98);
        }
        return new String(copyOfRange);
    }

    public static void A0M() {
        A0B = new byte[]{-117, -96, -104, -104, -104, -104, -104, -104, -104, 60, 72, 70, 7, 63, 58, 60, 62, 59, 72, 72, 68, 7, 58, Base64.padSymbol, 76, 7, 66, 71, 77, 62, 75, 76, 77, 66, 77, 66, 58, 69, 7, 60, 69, 66, 60, 68, 62, Base64.padSymbol, SignedBytes.MAX_POWER_OF_TWO, 76, 74, Ascii.VT, 67, 62, SignedBytes.MAX_POWER_OF_TWO, 66, 63, 76, 76, 72, Ascii.VT, 62, 65, 80, Ascii.VT, 70, 75, 81, 66, 79, 80, 81, 70, 81, 70, 62, 73, Ascii.VT, 67, 70, 75, 70, 80, 69, 60, 62, SignedBytes.MAX_POWER_OF_TWO, 81, 70, 83, 70, 81, 86, Ascii.ETB, 10, Ascii.FS, 6, Ascii.ETB, 9, 10, 9, 4, Ascii.ESC, Ascii.SO, 9, 10, Ascii.DC4};
    }

    public abstract AbstractC1165Zv A1P(C1214ai c1214ai, C0828Mp c0828Mp, String str);

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A1T() {
        LinearLayout linearLayout = new LinearLayout(super.A06.A06());
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(super.A06.A06());
        textView.setText(super.A06.A05().A18());
        textView.setTextColor(-1);
        XP.A0W(textView, true, 24);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(AbstractC1210ae.A0F, 0, AbstractC1210ae.A0F, AbstractC1210ae.A0A);
        textView.setGravity(1);
        textView.setLayoutParams(layoutParams2);
        C1190aK c1190aK = new C1190aK(super.A06.A06());
        c1190aK.setRadius(15);
        XP.A0K(c1190aK, 0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(A0G, A0G);
        layoutParams3.gravity = 17;
        c1190aK.setLayoutParams(layoutParams3);
        new KZ(c1190aK, super.A06.A06()).A05(A0G, A0G).A07(super.A06.A05().A23().A01());
        TextView textView2 = new TextView(super.A06.A06());
        textView2.setText(String.format(Locale.US, super.A06.A05().A19(), super.A06.A05().A20().A0I().A0F()));
        textView2.setTextColor(-1);
        XP.A0W(textView2, false, 17);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.setMargins(AbstractC1210ae.A0D, AbstractC1210ae.A0A, AbstractC1210ae.A0D, 0);
        textView2.setGravity(1);
        textView2.setLayoutParams(layoutParams4);
        linearLayout.addView(textView);
        linearLayout.addView(c1190aK);
        linearLayout.addView(textView2);
        addView(linearLayout);
        addView(A0I());
        if (this.A05.A2H() && this.A05.A2I()) {
            addView(A00(super.A06.A06(), super.A06.A05(), super.A06.A08(), Z5.A05, super.A06.A0D(), this.A04));
        }
    }

    static {
        A0M();
        A0J = (int) (AbstractC1077Wl.A02 * 48.0f);
        A0I = (int) (AbstractC1077Wl.A02 * 80.0f);
        A0G = (int) (AbstractC1077Wl.A02 * 120.0f);
        A0H = (int) (AbstractC1077Wl.A02 * 128.0f);
        A0O = (int) (AbstractC1077Wl.A02 * 16.0f);
        A0D = (int) (AbstractC1077Wl.A02 * 4.0f);
        A0N = (int) (AbstractC1077Wl.A02 * 44.0f);
        A0L = (int) (AbstractC1077Wl.A02 * 8.0f);
        A0M = (int) (AbstractC1077Wl.A02 * 12.0f);
        A0Q = (int) (AbstractC1077Wl.A02 * 12.0f);
        A0P = (int) (AbstractC1077Wl.A02 * 26.0f);
        A0K = (int) (AbstractC1077Wl.A02 * 10.0f);
        A0E = OP.A02(-1, 77);
        A0F = OP.A02(A0E, 90);
    }

    public AbstractC0758Jw(C1214ai c1214ai, boolean z) {
        super(c1214ai, z);
        this.A04 = new Handler(Looper.getMainLooper());
        this.A0A = new AtomicBoolean(false);
        this.A05 = c1214ai.A05();
        this.A09 = C1073Wh.A00(c1214ai.A06(), this.A05, this);
        this.A06 = this.A05.A20();
        this.A08 = A0J(c1214ai);
        if (this.A05.A1m()) {
            this.A08.setVisibility(8);
        }
        if (this.A05.A1m() && !getAdDataBundle().A20().A0K().A03()) {
            this.A00 = A0K(c1214ai);
        }
        AbstractC1104Xm A0C2 = c1214ai.A0C();
        this.A07 = c1214ai.A0D();
        if (A0C2 != null) {
            A0C2.setLayoutParams(new RelativeLayout.LayoutParams(-1, A0C2.getToolbarHeight()));
            A0C2.setPageDetailsVisible(false);
        }
    }

    private ImageView A0I() {
        ImageView imageView = new ImageView(super.A06.A06());
        imageView.setImageBitmap(Bitmap.createScaledBitmap(XY.A01(XX.NAV_CROSS), AbstractC1210ae.A0C, AbstractC1210ae.A0C, true));
        imageView.setColorFilter(-1);
        GradientDrawable circleBackground = new GradientDrawable();
        circleBackground.setShape(1);
        circleBackground.setColor(Color.parseColor(A0L(0, 9, 6)));
        imageView.setBackground(circleBackground);
        imageView.setPadding(A0K, A0K, A0K, A0K);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.aZ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractC0758Jw.this.A1V(view);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, AbstractC1210ae.A0G, AbstractC1210ae.A0A, 0);
        layoutParams.addRule(11);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private AbstractC1165Zv A0J(C1214ai c1214ai) {
        String clickEvent;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (this.A05.A1m()) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        }
        layoutParams.addRule(12);
        if (c1214ai.A05().A0v().equals(A0L(91, 14, 67))) {
            clickEvent = EnumC1398dh.A04.A03();
        } else {
            clickEvent = A0L(9, 37, 119);
        }
        AbstractC1165Zv A1P = A1P(c1214ai, this.A06, clickEvent);
        A1P.getCTAButton().getCtaActionHelper().A08(this.A05);
        A1P.getCTAButton().setCreativeAsCtaLoggingHelper(this.A09);
        this.A03 = new CU(A1P, 400, 100, 0);
        XP.A0I(A1P);
        A1P.A0h(c1214ai.A00());
        if (U7.A17(c1214ai.A06())) {
            A1P.A0g();
            if (c1214ai.A0C() != null) {
                c1214ai.A0C().setCTAClickListener(getCtaButton());
            }
        }
        addView(A1P, layoutParams);
        A1P.getCTAButton().A0F(this.A05, c1214ai.A0C());
        return A1P;
    }

    private C0760Jy A0K(C1214ai c1214ai) {
        String A0L2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        if (c1214ai.A05().A0v().equals(A0L(91, 14, 67))) {
            EnumC1398dh enumC1398dh = EnumC1398dh.A04;
            String[] strArr = A0C;
            if (strArr[0].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A0C[6] = "";
            A0L2 = enumC1398dh.A03();
        } else {
            A0L2 = A0L(9, 37, 119);
        }
        C0760Jy A1Q = A1Q(c1214ai, this.A06, A0L2);
        if (A1Q == null) {
            return null;
        }
        A1Q.getCTAButton().getCtaActionHelper().A08(this.A05);
        A1Q.getCTAButton().setCreativeAsCtaLoggingHelper(this.A09);
        XP.A0I(A1Q);
        A1Q.A0h(c1214ai.A00());
        if (U7.A17(c1214ai.A06())) {
            A1Q.A0g();
            if (c1214ai.A0C() != null) {
                c1214ai.A0C().setCTAClickListener(getCtaButton());
            }
            if (c1214ai.A0B() != null) {
                c1214ai.A0B().setCTAClickListener(getCtaButton());
            }
        }
        A1Q.setLayoutParams(layoutParams);
        A1Q.getCTAButton().A0F(this.A05, c1214ai.A0C());
        return A1Q;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public void A1B() {
        super.A1B();
        this.A04.removeCallbacksAndMessages(null);
        if (this.A05 != null && this.A05.A20().A0L() != null) {
            WX.A06(super.A06.A06().A02(), this.A05.A20().A0L());
        }
        this.A09.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public void A1G(C0828Mp c0828Mp, String str, double d, Bundle bundle) {
        super.A1G(c0828Mp, str, d, bundle);
        this.A08.setInfo(c0828Mp.A0I(), c0828Mp.A0J(), str, this.A05.A23().A01(), super.A06.A09(), null);
        if (this.A00 != null) {
            this.A00.setInfo(c0828Mp.A0I(), c0828Mp.A0J(), str, this.A05.A23().A01(), super.A06.A09(), null);
        }
    }

    public final int A1O(AbstractC1104Xm abstractC1104Xm) {
        return abstractC1104Xm == null ? AbstractC1104Xm.A00 : abstractC1104Xm.getToolbarHeight();
    }

    public C0760Jy A1Q(C1214ai c1214ai, C0828Mp c0828Mp, String str) {
        return null;
    }

    public void A1R() {
        View expandableLayout = getAdDetailsView().getExpandableLayout();
        if (expandableLayout != null) {
            this.A01 = new D9(true, false);
            if (this.A02 != null) {
                this.A01.A0L(this.A02);
            }
            C0837My A01 = this.A05.A1z().A01();
            this.A01.A0L(new CY(getAdDetailsView().getCTAButton(), 300, -1, A01.A0A(true)));
            Drawable startDrawable = XP.A08(A0E, A0F, A0D);
            this.A01.A0L(new C0570Cp(getAdDetailsView().getCTAButton(), 300, startDrawable, XP.A05(A01.A09(true), A0D)));
            this.A01.A0L(new CZ(expandableLayout, 150, false));
            this.A01.A0K(2300);
        }
    }

    public final void A1S() {
        LinearLayout linearLayout = new LinearLayout(super.A06.A06());
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(super.A06.A06());
        textView.setText(super.A06.A05().A0z());
        textView.setTextColor(-1);
        XP.A0W(textView, false, 15);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(A0O, A0O, A0O, A0O);
        textView.setGravity(1);
        textView.setLayoutParams(layoutParams2);
        C1184aE c1184aE = new C1184aE(super.A06.A06(), 0, -13524404, XX.REWARD_GRANTED_ICON);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(A0J, A0J);
        layoutParams3.gravity = 17;
        c1184aE.setLayoutParams(layoutParams3);
        linearLayout.addView(c1184aE);
        linearLayout.addView(textView);
        addView(linearLayout);
    }

    public final void A1U(int i, ViewGroup viewGroup, RelativeLayout relativeLayout) {
        if (getAdDetailsView() instanceof KL) {
            if ((getAdDetailsView() instanceof C04055r) || (getAdDetailsView() instanceof C04045q)) {
                XP.A0H(getAdDetailsView());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                if (getResources().getConfiguration().orientation == 2) {
                    layoutParams.addRule(1, relativeLayout.getId());
                    getAdDetailsView().setLayoutParams(layoutParams);
                    viewGroup.addView(getAdDetailsView());
                } else {
                    addView(getAdDetailsView(), layoutParams);
                }
            }
            getAdDetailsView().A0h(i);
            ((KL) getAdDetailsView()).A0s(viewGroup, relativeLayout, i);
        }
    }

    public final /* synthetic */ void A1V(View view) {
        this.A07.A4b(A0L(46, 45, 123));
    }

    public AbstractC1657hy getAdDataBundle() {
        return this.A05;
    }

    public CU getAdDetailsAnimation() {
        return this.A03;
    }

    public AbstractC1165Zv getAdDetailsView() {
        return this.A08;
    }

    public C0828Mp getAdInfo() {
        return this.A06;
    }

    public D9 getAnimationPlugin() {
        return this.A01;
    }

    public AbstractC1165Zv getOldEndCardAdDetailsView() {
        if (this.A00 != null && this.A05.A1m() && !this.A05.A20().A0K().A03()) {
            this.A00.A0i();
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A0A.get() && (this.A05.A20().A0K().A02().isEmpty() || this.A05.A20().A0K().A03() || this.A05.A1b())) {
            return;
        }
        getAdDetailsView().A0h(configuration.orientation);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View expandableLayout;
        super.onLayout(z, i, i2, i3, i4);
        if (!this.A05.A20().A0K().A03() && !this.A05.A1b() && !this.A05.A1m() && (expandableLayout = getAdDetailsView().getExpandableLayout()) != null && z && this.A02 == null) {
            this.A02 = new C0569Co(expandableLayout, 300, expandableLayout.getHeight(), 0);
            this.A01.A0L(this.A02);
            this.A01.A0J();
        }
    }
}
