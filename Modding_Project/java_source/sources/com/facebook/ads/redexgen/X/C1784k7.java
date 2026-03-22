package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.k7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1784k7 implements J7 {
    public final long[] A00;
    public final C2012o2[] A01;

    public C1784k7(C2012o2[] c2012o2Arr, long[] jArr) {
        this.A01 = c2012o2Arr;
        this.A00 = jArr;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final List<C2012o2> A7P(long j) {
        int A0L = AbstractC03624a.A0L(this.A00, j, true, false);
        if (A0L == -1 || this.A01[A0L] == C2012o2.A0J) {
            return Collections.emptyList();
        }
        return Collections.singletonList(this.A01[A0L]);
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final long A7v(int i) {
        boolean z = true;
        C3M.A07(i >= 0);
        if (i >= this.A00.length) {
            z = false;
        }
        C3M.A07(z);
        return this.A00[i];
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A7w() {
        return this.A00.length;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A8S(long j) {
        int A0K = AbstractC03624a.A0K(this.A00, j, false, false);
        int index = this.A00.length;
        if (A0K < index) {
            return A0K;
        }
        return -1;
    }
}
