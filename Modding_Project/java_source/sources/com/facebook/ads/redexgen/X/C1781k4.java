package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.k4  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1781k4 implements J7 {
    public final List<C2012o2> A00;

    public C1781k4(List<C2012o2> list) {
        this.A00 = Collections.unmodifiableList(list);
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final List<C2012o2> A7P(long j) {
        return j >= 0 ? this.A00 : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final long A7v(int i) {
        C3M.A07(i == 0);
        return 0L;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A7w() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A8S(long j) {
        return j < 0 ? 0 : -1;
    }
}
