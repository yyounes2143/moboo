package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Zc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1146Zc extends RelativeLayout {
    public static InterfaceC1105Xn A05;
    public static byte[] A06;
    public static final int A07;
    public static final int A08;
    public static final int A09;
    public AbstractC1537fy A00;
    public C1376dL A01;
    public C0K A02;
    public LE A03;
    public C1189aJ A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 60);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{2, 32, 51, 46, 52, 50, 36, 45, 97, Ascii.SI, 32, 53, 40, 55, 36, 97, 55, 40, 36, 54, 97, 32, 37, 36, 49, 53, 36, 51, 97, 40, 50, 47, 102, 53, 97, 34, 51, 36, 32, 53, 36, 37, 97, 49, 51, 46, 49, 36, 51, 45, 56, 67, 65, 74, 65, 86, 77, 71};
    }

    static {
        A02();
        A08 = (int) (AbstractC1077Wl.A02 * 8.0f);
        A07 = A08 * 10;
        A09 = (int) (AbstractC1077Wl.A02 * 15.0f);
        A05 = new LD();
    }

    public C1146Zc(C1376dL c1376dL) {
        super(c1376dL);
        this.A01 = c1376dL;
        this.A02 = new C0K(c1376dL);
        XP.A0I(this.A02);
        this.A00 = new C04216h();
        this.A00.A0G(this.A02);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.A02, layoutParams);
    }

    private ArrayList<C1343cn> A01(AbstractC1657hy abstractC1657hy) {
        if (abstractC1657hy == null) {
            return new ArrayList<>();
        }
        List<C0828Mp> A27 = abstractC1657hy.A27();
        ArrayList<C1343cn> arrayList = new ArrayList<>(A27.size());
        for (int i = 0; i < A27.size(); i++) {
            arrayList.add(new C1343cn(i, A27.size(), A27.get(i)));
        }
        return arrayList;
    }

    public final void A04() {
        this.A02.setAdapter(null);
    }

    public final void A05(C0917Qc c0917Qc, int i) {
        ArrayList<C1343cn> A01 = A01(c0917Qc.A10());
        this.A02.setCardsInfo(A01);
        this.A03 = new LE(this.A01, A01, c0917Qc.A10(), this.A01.A02().A0A(), c0917Qc, A05, c0917Qc.A10().A25(), this.A02.getCarouselCardBehaviorHelper(), null);
        this.A02.setAdapter(this.A03);
        if (i == 0) {
            i = AbstractC1077Wl.A04.widthPixels;
        }
        this.A03.A0O(i - A07, 16, 0);
        this.A03.A0G();
        setupDotsLayout(c0917Qc, A01);
    }

    public final void A06(C1449eX c1449eX) {
        if (this.A03 != null) {
            this.A03.A0P(c1449eX);
        } else {
            this.A01.A08().AAy(A00(51, 7, 24), AbstractC0987Sv.A1v, new C0988Sw(A00(0, 51, 125)));
        }
        this.A02.A20(c1449eX);
    }

    public static InterfaceC1105Xn getDummyListener() {
        return A05;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z && this.A03 != null) {
            this.A03.A0O((i3 - i) - A07, 16, 0);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpLayoutForCardAtIndex(int i) {
        if (this.A04 != null) {
            this.A04.A00(i);
        }
    }

    private void setupDotsLayout(C0917Qc c0917Qc, ArrayList<C1343cn> arrayList) {
        this.A02.getCarouselCardBehaviorHelper().A0Y(new L5(this));
        this.A04 = new C1189aJ(this.A01, c0917Qc.A10().A1z().A01(), arrayList.size());
        XP.A0I(this.A04);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, this.A02.getId());
        layoutParams.setMargins(0, A09, 0, 0);
        addView(this.A04, layoutParams);
    }
}
