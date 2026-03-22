package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public final class E0 implements Comparable<E0> {
    public final boolean A00;
    public final boolean A01;

    public E0(C2061or c2061or, int i) {
        this.A00 = (c2061or.A0H & 1) != 0;
        this.A01 = AnonymousClass92.A0S(i, false);
    }

    @Override // java.lang.Comparable
    /* renamed from: A00 */
    public final int compareTo(E0 e0) {
        return AbstractC1892m4.A01().A09(this.A01, e0.A01).A09(this.A00, e0.A00).A05();
    }
}
