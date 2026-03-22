package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.kU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1807kU implements InterfaceC0732Iw {
    public long A00 = -1;
    public long A01 = -1;
    public C0665Gg A02;
    public C0666Gh A03;

    public C1807kU(C0666Gh c0666Gh, C0665Gg c0665Gg) {
        this.A03 = c0666Gh;
        this.A02 = c0665Gg;
    }

    public final void A00(long j) {
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0732Iw
    public final InterfaceC0681Gw A5R() {
        C3M.A08(this.A00 != -1);
        return new C1847lK(this.A03, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0732Iw
    public final long AGd(InterfaceC1850lN interfaceC1850lN) {
        if (this.A01 >= 0) {
            long result = -(this.A01 + 2);
            this.A01 = -1L;
            return result;
        }
        return -1L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0732Iw
    public final void AJR(long j) {
        long[] jArr = this.A02.A01;
        this.A01 = jArr[AbstractC03624a.A0L(jArr, j, true, true)];
    }
}
