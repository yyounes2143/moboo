package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Comparator;
/* loaded from: assets/audience_network.dex */
public class B0 extends AbstractC1892m4 {
    public B0() {
        super(null);
    }

    private final AbstractC1892m4 A00(int result) {
        AbstractC1892m4 abstractC1892m4;
        AbstractC1892m4 abstractC1892m42;
        AbstractC1892m4 abstractC1892m43;
        if (result < 0) {
            abstractC1892m43 = AbstractC1892m4.A02;
            return abstractC1892m43;
        } else if (result > 0) {
            abstractC1892m42 = AbstractC1892m4.A01;
            return abstractC1892m42;
        } else {
            abstractC1892m4 = AbstractC1892m4.A00;
            return abstractC1892m4;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1892m4
    public final int A05() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1892m4
    public final AbstractC1892m4 A06(int left, int right) {
        return A00(AD.A01(left, right));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1892m4
    public final AbstractC1892m4 A07(long left, long right) {
        return A00(AbstractC2121q7.A01(left, right));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1892m4
    public final <T> AbstractC1892m4 A08(@ParametricNullness T left, @ParametricNullness T right, Comparator<T> comparator) {
        return A00(comparator.compare(left, right));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1892m4
    public final AbstractC1892m4 A09(boolean left, boolean right) {
        return A00(PD.A00(left, right));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1892m4
    public final AbstractC1892m4 A0A(boolean left, boolean right) {
        return A00(PD.A00(right, left));
    }
}
