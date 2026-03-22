package com.facebook.ads.redexgen.X;

import java.util.Set;
/* renamed from: com.facebook.ads.redexgen.X.eh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1459eh {
    public C1463el A00;
    public Set<String> A01;
    public Set<String> A02;
    public boolean A03;
    public boolean A04 = true;

    public final C1459eh A00(C1463el c1463el) {
        this.A00 = c1463el;
        return this;
    }

    public final C1459eh A01(Set<String> pinnedCertificates) {
        this.A01 = pinnedCertificates;
        return this;
    }

    public final C1459eh A02(Set<String> pinnedPublicKeys) {
        this.A02 = pinnedPublicKeys;
        return this;
    }

    public final C1459eh A03(boolean z) {
        this.A04 = z;
        return this;
    }

    public final C1459eh A04(boolean z) {
        this.A03 = z;
        return this;
    }

    public final C1460ei A05() {
        return new C1460ei(this.A00, this.A04, this.A02, this.A01, this.A03);
    }
}
