package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class K9 extends AbstractRunnableC1061Vt {
    public final /* synthetic */ AbstractC1181aB A00;

    public K9(AbstractC1181aB abstractC1181aB) {
        this.A00 = abstractC1181aB;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        Runnable runnable;
        int i;
        if (this.A00.isPressed()) {
            AbstractC1181aB abstractC1181aB = this.A00;
            i = this.A00.A08;
            abstractC1181aB.postDelayed(this, i);
            return;
        }
        this.A00.setPressed(true);
        AbstractC1181aB abstractC1181aB2 = this.A00;
        runnable = this.A00.A0A;
        abstractC1181aB2.postOnAnimationDelayed(runnable, 250L);
    }
}
