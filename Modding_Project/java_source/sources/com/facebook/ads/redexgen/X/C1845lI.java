package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.lI  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1845lI implements InterfaceC0681Gw {
    public final long A00;
    public final C0680Gv A01;

    public C1845lI(long j) {
        this(j, 0L);
    }

    public C1845lI(long j, long j2) {
        this.A00 = j;
        this.A01 = new C0680Gv(j2 == 0 ? C0682Gx.A04 : new C0682Gx(0L, j2));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final long A7l() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final C0680Gv A8t(long j) {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final boolean AAa() {
        return false;
    }
}
