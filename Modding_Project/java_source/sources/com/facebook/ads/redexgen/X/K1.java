package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class K1 extends AbstractRunnableC1061Vt {
    public final /* synthetic */ AbstractC1181aB A00;

    public K1(AbstractC1181aB abstractC1181aB) {
        this.A00 = abstractC1181aB;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        Runnable runnable;
        int i;
        this.A00.setPressed(false);
        AbstractC1181aB abstractC1181aB = this.A00;
        runnable = this.A00.A09;
        i = this.A00.A08;
        abstractC1181aB.postOnAnimationDelayed(runnable, i);
    }
}
