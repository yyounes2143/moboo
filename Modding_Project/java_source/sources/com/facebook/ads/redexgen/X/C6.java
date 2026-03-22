package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public final class C6 implements InterfaceC1490fD {
    @Override // com.facebook.ads.redexgen.X.InterfaceC1490fD
    public final long A5e() {
        return System.nanoTime();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1490fD
    public final void AJK(Object obj, long j) throws InterruptedException {
        obj.wait(j);
    }
}
