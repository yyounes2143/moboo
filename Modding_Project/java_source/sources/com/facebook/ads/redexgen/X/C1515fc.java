package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.fc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1515fc extends AbstractRunnableC1048Vg {
    public final /* synthetic */ C1514fb A00;

    public C1515fc(C1514fb c1514fb) {
        this.A00 = c1514fb;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1048Vg
    public final void A01() {
        RO ro;
        RO ro2;
        ro = this.A00.A01.A00;
        if (ro.A00() != null) {
            ro2 = this.A00.A01.A00;
            ro2.A00().onAdsLoaded();
        }
    }
}
