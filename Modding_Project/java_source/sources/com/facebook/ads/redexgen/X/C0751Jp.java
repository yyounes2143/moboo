package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Jp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0751Jp extends AbstractC1210ae implements Wf {
    public static byte[] A05;
    public static final int A06;
    public final AbstractC1657hy A00;
    public final C1073Wh A01;
    public final InterfaceC1105Xn A02;
    public final C1242bA A03;
    public final C1342cm A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 86);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{38, 42, Ascii.RS, 36, 34};
    }

    static {
        A01();
        A06 = Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public C0751Jp(C1214ai c1214ai, boolean z) {
        super(c1214ai, z);
        int id;
        int A01;
        this.A02 = c1214ai.A0D();
        this.A00 = c1214ai.A05();
        this.A03 = new C1242bA(c1214ai.A06(), c1214ai.A02());
        this.A03.A01(getTitleDescContainer(), z);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        layoutParams.setMargins(AbstractC1210ae.A07, AbstractC1210ae.A07, AbstractC1210ae.A07, AbstractC1210ae.A07);
        getCtaButton().setLayoutParams(layoutParams);
        if (c1214ai.A0I()) {
            this.A04 = new C1342cm(c1214ai.A06());
            this.A04.setPageDetails(c1214ai.A05().A23());
            XP.A0E(1007, this.A04);
            RelativeLayout.LayoutParams pageDetailsParams = new RelativeLayout.LayoutParams(-2, -2);
            pageDetailsParams.addRule(2, getCtaButton().getId());
            pageDetailsParams.setMargins(AbstractC1210ae.A07, AbstractC1210ae.A07 - (AbstractC1210ae.A07 / 2), AbstractC1210ae.A07, 0);
            this.A04.setLayoutParams(pageDetailsParams);
            id = this.A04.getId();
            A01 = c1214ai.A01() - (AbstractC1210ae.A07 / 2);
        } else {
            id = getCtaButton().getId();
            A01 = c1214ai.A01();
            this.A04 = null;
        }
        FrameLayout insideContainerLayout = new FrameLayout(c1214ai.A06());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(10);
        layoutParams2.addRule(2, id);
        layoutParams2.setMargins(0, A01, 0, 0);
        insideContainerLayout.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 17;
        layoutParams3.setMargins(AbstractC1210ae.A07, 0, AbstractC1210ae.A07, 0);
        insideContainerLayout.addView(this.A03, layoutParams3);
        addView(insideContainerLayout);
        if (this.A04 != null) {
            addView(this.A04);
        }
        addView(getCtaButton());
        getCtaButton().A0F(c1214ai.A05(), c1214ai.A0C());
        View A02 = c1214ai.A02();
        this.A01 = C1073Wh.A00(c1214ai.A06(), this.A00, this);
        C1072Wg A022 = this.A01.A02(this.A00);
        c1214ai.A06().A0H().A00(A022.A01);
        getCtaButton().setCreativeAsCtaLoggingHelper(this.A01);
        if (A02 != null && A022.A00) {
            A02.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ao
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C0751Jp.this.A1O(view);
                }
            });
        } else if (A02 != null && U7.A1I(getAdContextWrapper())) {
            AbstractC1162Zs.A00(A02, U7.A1J(getAdContextWrapper()), new View$OnClickListenerC1221ap(this));
        }
        if (U7.A17(c1214ai.A06())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1214ai.A0C() != null) {
                c1214ai.A0C().setCTAClickListener(getCtaButton());
            }
        }
        if (this.A04 != null && U7.A18(c1214ai.A06())) {
            this.A04.setOnClickListener(getCtaButton());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final boolean A0C() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final boolean A0D() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final void A1B() {
        super.A1B();
        this.A01.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final void A1G(C0828Mp c0828Mp, String str, double d, Bundle bundle) {
        super.A1G(c0828Mp, str, d, bundle);
        if (d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            int mediaHeight = (int) ((A06 - (AbstractC1210ae.A07 * 2)) / d);
            this.A03.A00(mediaHeight);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final boolean A1M() {
        return false;
    }

    public final /* synthetic */ void A1O(View view) {
        getCtaButton().A0E(A00(0, 5, 103));
    }
}
