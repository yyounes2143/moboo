package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.m7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1895m7 implements J7 {
    public final long A00;
    public final AbstractC0517Am<C2012o2> A01;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.text.Cue> */
    public C1895m7(long j, AbstractC0517Am<C2012o2> abstractC0517Am) {
        this.A00 = j;
        this.A01 = abstractC0517Am;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final List<C2012o2> A7P(long j) {
        return j >= this.A00 ? this.A01 : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final long A7v(int i) {
        C3M.A07(i == 0);
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A7w() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A8S(long j) {
        return this.A00 > j ? 0 : -1;
    }
}
