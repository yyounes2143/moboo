package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public final class FD extends AbstractC0921Qg implements InterfaceC1112Xu {
    public static String[] A08 = {"biNTtjxa0xULALtZEUOcP", "rMVpYr4hwZgX", "y0rebd1hOaNR", "snwXdVXwO66aPvNuuMD2", "jxkMgVVp1g5", "Dcah1JX", "lglxOXHbCZFpcLf1TWQPAMUDis4zLCZx", "n80A5ryznQOlcAJIvKv7FeLq2ck19EHB"};
    public N3 A00;
    public AbstractC1448eW A01;
    public C1449eX A02;
    public C1449eX A03;
    public final int A04;
    public final SparseBooleanArray A05;
    public final C1376dL A06;
    public final C03955h A07;

    public FD(C03955h c03955h, SparseBooleanArray sparseBooleanArray, C1449eX c1449eX, int i, C1376dL c1376dL, N3 n3) {
        super(c03955h);
        this.A06 = c1376dL;
        this.A07 = c03955h;
        this.A05 = sparseBooleanArray;
        this.A02 = c1449eX;
        this.A04 = i;
        this.A00 = n3;
    }

    private void A05(US us, XH xh, String str, C1343cn c1343cn) {
        if (this.A05.get(c1343cn.A02())) {
            return;
        }
        if (this.A03 != null) {
            this.A03.A0V();
            String[] strArr = A08;
            if (strArr[1].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[3] = "sEemyGdXpNnP2WRBMWcD";
            strArr2[0] = "kawPFcVLuq3VyedHvbBIc";
            this.A03 = null;
        }
        this.A01 = new FF(this, str, c1343cn, us, c1343cn.A04(), xh);
        this.A03 = new C1449eX(this.A07, 10, new WeakReference(this.A01), this.A06);
        this.A03.A0Y(false);
        this.A03.A0W(100);
        this.A03.A0X(100);
        this.A07.setOnAssetsLoadedListener(new FE(this, c1343cn));
    }

    public final void A0p(C1343cn c1343cn, US us, SF sf, XH xh, String str, int i, int i2, int i3) {
        int A02 = c1343cn.A02();
        this.A07.setTag(-1593835536, Integer.valueOf(A02));
        this.A07.setupNativeCtaExtension(c1343cn);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i, -2);
        int rightMargin = A02 == 0 ? i3 : i2;
        if (A02 < this.A04 - 1) {
            i3 = i2;
        }
        String[] strArr = A08;
        if (strArr[1].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[1] = "ng4t5bAKqCWK";
        strArr2[2] = "n9xBZs9SEWUc";
        marginLayoutParams.setMargins(rightMargin, 0, i3, 0);
        String A082 = c1343cn.A03().A0H().A08();
        String A09 = c1343cn.A03().A0H().A09();
        this.A07.setIsVideo(!TextUtils.isEmpty(A09));
        if (this.A07.A1T()) {
            this.A07.setVideoPlaceholderUrl(A082);
            this.A07.setVideoUrl(sf.A0T(A09));
        } else {
            this.A07.setImageUrl(A082);
        }
        this.A07.setLayoutParams(marginLayoutParams);
        this.A07.setCTAInfo(c1343cn.A03().A0J(), c1343cn.A04());
        this.A07.A1U(c1343cn.A04());
        A05(us, xh, str, c1343cn);
    }

    public final void A0q(C1449eX c1449eX) {
        this.A02 = c1449eX;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1112Xu
    public final void AIV() {
        this.A07.A1O();
    }
}
