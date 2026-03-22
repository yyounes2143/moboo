package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.kW  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1809kW implements InterfaceC0681Gw {
    public final /* synthetic */ C1808kV A00;

    public C1809kW(C1808kV c1808kV) {
        this.A00 = c1808kV;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final long A7l() {
        AbstractC0735Iz abstractC0735Iz;
        long j;
        abstractC0735Iz = this.A00.A0B;
        j = this.A00.A07;
        return abstractC0735Iz.A05(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final C0680Gv A8t(long j) {
        AbstractC0735Iz abstractC0735Iz;
        long j2;
        long j3;
        long targetGranule;
        long targetGranule2;
        long j4;
        long j5;
        abstractC0735Iz = this.A00.A0B;
        long A06 = abstractC0735Iz.A06(j);
        j2 = this.A00.A09;
        j3 = this.A00.A08;
        targetGranule = this.A00.A09;
        targetGranule2 = this.A00.A07;
        j4 = this.A00.A09;
        j5 = this.A00.A08;
        long estimatedPosition = AbstractC03624a.A0T((j2 + (((j3 - targetGranule) * A06) / targetGranule2)) - 30000, j4, j5 - 1);
        return new C0680Gv(new C0682Gx(j, estimatedPosition));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0681Gw
    public final boolean AAa() {
        return true;
    }
}
