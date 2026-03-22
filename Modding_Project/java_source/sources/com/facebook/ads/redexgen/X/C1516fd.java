package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.fd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1516fd extends AbstractRunnableC1048Vg {
    public final /* synthetic */ C1513fa A00;
    public final /* synthetic */ V1 A01;

    public C1516fd(C1513fa c1513fa, V1 v1) {
        this.A00 = c1513fa;
        this.A01 = v1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1048Vg
    public final void A01() {
        RO ro;
        RO ro2;
        ro = this.A00.A00;
        if (ro.A00() != null) {
            ro2 = this.A00.A00;
            ro2.A00().onAdError(WT.A00(this.A01));
        }
    }
}
