package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.g0  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1539g0 extends QK {
    public static String[] A01 = {"ofgeN", "GcYePxlnDkyLzFZQt8gXTfFAd", "bIohWxIGlUqKJ41hMBKnFxYrg", "ROugplE3NXuve66PKoPS6E1ZAyp", "eD20R2wAf", "s8oLKbIochRuLWrY7HR296xJjla", "faP6eJ6K6STeOEuOEXCJ6OuUaXzDbpLW", "oXM2gF3tn"};
    public boolean A00 = true;

    public abstract boolean A0X(AbstractC0921Qg abstractC0921Qg);

    public abstract boolean A0Y(AbstractC0921Qg abstractC0921Qg);

    public abstract boolean A0Z(AbstractC0921Qg abstractC0921Qg, int i, int i2, int i3, int i4);

    public abstract boolean A0a(AbstractC0921Qg abstractC0921Qg, AbstractC0921Qg abstractC0921Qg2, int i, int i2, int i3, int i4);

    @Override // com.facebook.ads.redexgen.X.QK
    public final boolean A0N(AbstractC0921Qg abstractC0921Qg) {
        return !this.A00 || abstractC0921Qg.A0f();
    }

    @Override // com.facebook.ads.redexgen.X.QK
    public final boolean A0O(AbstractC0921Qg abstractC0921Qg, QJ qj, QJ qj2) {
        if (qj != null && (qj.A01 != qj2.A01 || qj.A03 != qj2.A03)) {
            return A0Z(abstractC0921Qg, qj.A01, qj.A03, qj2.A01, qj2.A03);
        }
        return A0X(abstractC0921Qg);
    }

    @Override // com.facebook.ads.redexgen.X.QK
    public final boolean A0P(AbstractC0921Qg abstractC0921Qg, QJ qj, QJ qj2) {
        int i = qj.A01;
        int oldLeft = qj.A03;
        View view = abstractC0921Qg.A0H;
        int oldTop = qj2 == null ? view.getLeft() : qj2.A01;
        String[] strArr = A01;
        if (strArr[7].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "jyZdeafgD";
        strArr2[4] = "NUmje91r8";
        int top = qj2 == null ? view.getTop() : qj2.A03;
        if (!abstractC0921Qg.A0g() && (i != oldTop || oldLeft != top)) {
            view.layout(oldTop, top, view.getWidth() + oldTop, view.getHeight() + top);
            return A0Z(abstractC0921Qg, i, oldLeft, oldTop, top);
        }
        return A0Y(abstractC0921Qg);
    }

    @Override // com.facebook.ads.redexgen.X.QK
    public final boolean A0Q(AbstractC0921Qg abstractC0921Qg, QJ qj, QJ qj2) {
        if (qj.A01 != qj2.A01 || qj.A03 != qj2.A03) {
            return A0Z(abstractC0921Qg, qj.A01, qj.A03, qj2.A01, qj2.A03);
        }
        A0U(abstractC0921Qg);
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.QK
    public final boolean A0R(AbstractC0921Qg abstractC0921Qg, AbstractC0921Qg abstractC0921Qg2, QJ qj, QJ qj2) {
        int i;
        int i2;
        int i3 = qj.A01;
        int i4 = qj.A03;
        if (abstractC0921Qg2.A0l()) {
            i = qj.A01;
            i2 = qj.A03;
        } else {
            i = qj2.A01;
            i2 = qj2.A03;
        }
        return A0a(abstractC0921Qg, abstractC0921Qg2, i3, i4, i, i2);
    }

    public final void A0T(AbstractC0921Qg abstractC0921Qg) {
        A0K(abstractC0921Qg);
    }

    public final void A0U(AbstractC0921Qg abstractC0921Qg) {
        A0K(abstractC0921Qg);
    }

    public final void A0V(AbstractC0921Qg abstractC0921Qg) {
        A0K(abstractC0921Qg);
    }

    public final void A0W(AbstractC0921Qg abstractC0921Qg, boolean z) {
        A0K(abstractC0921Qg);
    }
}
