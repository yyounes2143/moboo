package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdListener;
/* renamed from: com.facebook.ads.redexgen.X.fr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1530fr extends AbstractRunnableC1048Vg {
    public final /* synthetic */ C1529fq A00;

    public C1530fr(C1529fq c1529fq) {
        this.A00 = c1529fq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1048Vg
    public final void A01() {
        C0940Qz c0940Qz;
        C0940Qz c0940Qz2;
        C0940Qz c0940Qz3;
        c0940Qz = this.A00.A01;
        if (c0940Qz.A06() != null) {
            c0940Qz2 = this.A00.A01;
            AdListener A06 = c0940Qz2.A06();
            c0940Qz3 = this.A00.A01;
            A06.onLoggingImpression(c0940Qz3.A07());
        }
    }
}
