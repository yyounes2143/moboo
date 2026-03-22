package com.facebook.ads.redexgen.X;

import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.7i  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC04487i extends AbstractC1982nX implements J7 {
    public long A00;
    public J7 A01;

    @Override // com.facebook.ads.redexgen.X.AbstractC1982nX
    public abstract void A0B();

    @Override // com.facebook.ads.redexgen.X.C5I
    public final void A0A() {
        super.A0A();
        this.A01 = null;
    }

    public final void A0C(long j, J7 j7, long j2) {
        super.A01 = j;
        this.A01 = j7;
        if (j2 == Long.MAX_VALUE) {
            j2 = super.A01;
        }
        this.A00 = j2;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final List<C2012o2> A7P(long j) {
        return ((J7) C3M.A01(this.A01)).A7P(j - this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final long A7v(int i) {
        return ((J7) C3M.A01(this.A01)).A7v(i) + this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A7w() {
        return ((J7) C3M.A01(this.A01)).A7w();
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A8S(long j) {
        return ((J7) C3M.A01(this.A01)).A8S(j - this.A00);
    }
}
