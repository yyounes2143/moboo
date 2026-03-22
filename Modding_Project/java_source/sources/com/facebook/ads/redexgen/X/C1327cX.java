package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
/* renamed from: com.facebook.ads.redexgen.X.cX  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1327cX extends LinearLayout {
    public LinearLayout A00;
    public String A01;
    public boolean A02;
    public final int A03;
    public final C1376dL A04;
    public final C1190aK A05;
    public final C1196aQ A06;
    public static String[] A07 = {"mO6OCzz183u1Bigulq5KeRnnu3UhUErY", "M8wuVwCqg47swjluxOTBwYkXCALJOS1f", "isO3a6yeUrEqJHaKmCFaV", "J8y0fQZRtVpgz1Itec1cmA3ue79eN13N", "z6IigVxY2j2waSprQRCf4749VcxJv5uz", "GG3OTiE6t7MwpY", "UBA0QA1YjTXejDlGkh9vREu7YbW4o1hK", "iNB15eFG13fee2"};
    public static final int A0A = (int) (AbstractC1077Wl.A02 * 16.0f);
    public static final int A0B = (int) (AbstractC1077Wl.A02 * 32.0f);
    public static final int A0C = (int) (AbstractC1077Wl.A02 * 16.0f);
    public static final int A09 = (int) (AbstractC1077Wl.A02 * 4.0f);
    public static final int A08 = (int) (AbstractC1077Wl.A02 * 72.0f);

    public C1327cX(C1325cV c1325cV) {
        super(C1325cV.A04(c1325cV));
        this.A02 = false;
        this.A01 = "";
        this.A04 = C1325cV.A04(c1325cV);
        this.A05 = new C1190aK(this.A04);
        this.A06 = new C1196aQ(this.A04, C1325cV.A02(c1325cV), true, false, true);
        this.A03 = C1325cV.A00(c1325cV);
        this.A02 = C1325cV.A08(c1325cV);
        this.A01 = C1325cV.A05(c1325cV);
        A03(c1325cV);
    }

    public /* synthetic */ C1327cX(C1325cV c1325cV, C0650Fr c0650Fr) {
        this(c1325cV);
    }

    private void A00() {
        A01(this.A05, 150);
        A01(this.A06, 170);
        if (this.A00 != null) {
            A01(this.A00, 190);
        }
    }

    private void A01(View view, int i) {
        view.setTranslationY(i);
        view.setScaleY(0.75f);
        view.setScaleX(0.75f);
        view.animate().translationYBy(-i).scaleX(1.0f).scaleY(1.0f).setDuration(300L).setInterpolator(new DecelerateInterpolator(2.0f));
    }

    private void A02(C1325cV c1325cV) {
        if (!TextUtils.isEmpty(C1325cV.A06(c1325cV))) {
            this.A00 = new LinearLayout(getContext());
            this.A00.setGravity(17);
            int i = A0C / 2;
            if (this.A02) {
                i = 0;
            }
            LinearLayout linearLayout = this.A00;
            int i2 = A0C;
            int i3 = A0C;
            int marginTop = A0C;
            linearLayout.setPadding(i2, i, i3, marginTop / 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, i, 0, 0);
            TextView textView = new TextView(getContext());
            textView.setTextColor(-1);
            XP.A0W(textView, false, 16);
            textView.setText(C1325cV.A06(c1325cV));
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            ImageView imageView = new ImageView(getContext());
            new KZ(imageView, this.A04).A04().A07(C1325cV.A07(c1325cV));
            int i4 = A0A;
            int marginTop2 = A0A;
            LinearLayout.LayoutParams informativeContainerParams = new LinearLayout.LayoutParams(i4, marginTop2);
            int marginTop3 = A0C;
            informativeContainerParams.setMargins(0, 0, marginTop3 / 2, 0);
            if (this.A02) {
                C1184aE c1184aE = new C1184aE(getContext(), 0, -1, XX.PLAYABLE_ICON);
                c1184aE.setLayoutParams(new LinearLayout.LayoutParams(A0B, A0B));
                this.A00.addView(c1184aE);
            } else {
                this.A00.addView(imageView, informativeContainerParams);
                this.A00.addView(textView, layoutParams2);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setCornerRadius(100.0f);
                gradientDrawable.setColor(469762047);
                XP.A0Q(this.A00, gradientDrawable);
            }
            View view = this.A00;
            String[] strArr = A07;
            String str = strArr[5];
            String str2 = strArr[7];
            int length = str.length();
            int marginTop4 = str2.length();
            if (length != marginTop4) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[0] = "6JdK2pyeEPUWkfGuYxPy07w26kgdYt9J";
            strArr2[1] = "5VEwQONd4c8VI19uC0Ib5tVL9YvIxUH6";
            addView(view, layoutParams);
        }
    }

    private void A03(C1325cV c1325cV) {
        XP.A0K(this.A05, 0);
        this.A05.setRadius(50);
        if (this.A02) {
            this.A05.setRadius(A09);
        } else if (C1325cV.A01(c1325cV).A00() == EnumC0833Mu.A05) {
            this.A05.setFullCircleCorners(true);
        } else {
            C1190aK c1190aK = this.A05;
            int i = A09;
            String[] strArr = A07;
            if (strArr[5].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A07[2] = "avcxrBXnTsgV2I5Ie1k2l";
            c1190aK.setRadius(i);
        }
        new KZ(this.A05, this.A04).A04().A07(C1325cV.A03(c1325cV).A01());
        this.A06.A04(C1325cV.A01(c1325cV).A0F(), C1325cV.A03(c1325cV).A03(), null, false, true);
        if (!this.A02) {
            this.A06.getDescriptionTextView().setAlpha(0.8f);
        } else {
            this.A06.getDescriptionTextView().setText(this.A01);
        }
        this.A06.setAlignment(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A0C, 0, A0C / 2);
        View view = this.A05;
        LinearLayout.LayoutParams titleAndDescriptionParams = new LinearLayout.LayoutParams(A08, A08);
        addView(view, titleAndDescriptionParams);
        addView(this.A06, layoutParams);
        A02(c1325cV);
        XP.A0K(this, -14473425);
        setGravity(17);
        setOrientation(1);
    }

    public final void A04(InterfaceC1326cW interfaceC1326cW) {
        A00();
        postDelayed(new C0650Fr(this, interfaceC1326cW), this.A03);
    }
}
