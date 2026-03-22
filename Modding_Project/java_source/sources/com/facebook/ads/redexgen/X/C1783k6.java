package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.k6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1783k6 implements J7 {
    public final C0746Jk A00;
    public final Map<String, C0753Jr> A01;
    public final Map<String, String> A02;
    public final Map<String, C0747Jl> A03;
    public final long[] A04;

    public C1783k6(C0746Jk c0746Jk, Map<String, C0753Jr> map, Map<String, C0747Jl> map2, Map<String, String> imageMap) {
        this.A00 = c0746Jk;
        this.A03 = map2;
        this.A02 = imageMap;
        this.A01 = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.A04 = c0746Jk.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final List<C2012o2> A7P(long j) {
        return this.A00.A0E(j, this.A01, this.A03, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final long A7v(int i) {
        return this.A04[i];
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A7w() {
        return this.A04.length;
    }

    @Override // com.facebook.ads.redexgen.X.J7
    public final int A8S(long j) {
        int A0K = AbstractC03624a.A0K(this.A04, j, false, false);
        int index = this.A04.length;
        if (A0K < index) {
            return A0K;
        }
        return -1;
    }
}
