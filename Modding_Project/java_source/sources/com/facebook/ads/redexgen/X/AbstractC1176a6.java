package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import androidx.exifinterface.media.ExifInterface;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.a6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1176a6 {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.0g] */
    public static C02660g A00(final C1214ai c1214ai, final C0917Qc c0917Qc, final String str, final C04065s c04065s) {
        return new C03955h(c1214ai, c0917Qc, true, str, c04065s) { // from class: com.facebook.ads.redexgen.X.0g
            public KE A00;
            public C1343cn A01;
            public final US A02 = this.A0I.A06().A02().A0A();
            public final C0917Qc A03;
            public final C04065s A04;
            public final String A05;
            public static String[] A06 = {CampaignEx.JSON_KEY_AD_Q, "A73Xi2G3GXsP7eqOYxzIEC2a49UqAHwv", "tzkKnItTrh", "5yGem34VUXIU78ICazF0QaKYuuceWMlm", "d26mhKEOwDnFCjn", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "vFFUszWLQFPwstqQ2PhnuKwIvdRc", "cQLhl1S6XoLnT945hQssVDVRJiee0FVC"};
            public static final int A08 = (int) (AbstractC1077Wl.A02 * (-4.0f));
            public static final int A07 = (int) (AbstractC1077Wl.A02 * 6.0f);

            {
                this.A03 = c0917Qc;
                this.A05 = str;
                this.A04 = c04065s;
                this.A03.A1L(this);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC0727Ir
            public void setupNativeCtaExtension(C1343cn c1343cn) {
                N3 A21;
                this.A01 = c1343cn;
                int A0Q = U7.A0Q(this.A0I.A06());
                C0837My A01 = this.A03.A10().A1z().A01();
                C1376dL A062 = this.A0I.A06();
                String A0r = this.A03.A10().A0r();
                US us = this.A02;
                InterfaceC1105Xn dummyListener = C1146Zc.getDummyListener();
                C1449eX A0b = this.A04.A0b();
                XH A1A = this.A03.A1A();
                if (this.A03.A10() == null) {
                    A21 = null;
                } else {
                    A21 = this.A03.A10().A21();
                }
                this.A00 = new KE(A062, A0r, A01, us, dummyListener, A0b, A1A, A21);
                this.A00.setCta(c1343cn.A03().A0J(), this.A05, new HashMap());
                this.A03.A1L(this.A00);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (A0Q == 1) {
                    layoutParams.addRule(12);
                    String[] strArr = A06;
                    String str2 = strArr[5];
                    String str3 = strArr[0];
                    int length = str2.length();
                    int extensionVariant = str3.length();
                    if (length != extensionVariant) {
                        throw new RuntimeException();
                    }
                    A06[4] = "cEnNLXyXCc05OsZ";
                    XP.A0N(this.A00, A07, 5, A01.A0A(false));
                    ((C03955h) this).A06.addView(this.A00, layoutParams);
                } else if (A0Q == 2) {
                    layoutParams.addRule(3, ((C03955h) this).A06.getId());
                    int extensionVariant2 = A08;
                    layoutParams.setMargins(0, extensionVariant2, 0, 0);
                    addView(this.A00, 0, layoutParams);
                    ((C03955h) this).A06.bringToFront();
                }
            }
        };
    }
}
