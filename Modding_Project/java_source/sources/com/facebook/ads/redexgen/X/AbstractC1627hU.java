package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.hU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1627hU implements S7 {
    public final boolean A00;

    public abstract void A00();

    public abstract void A01(boolean z);

    public AbstractC1627hU(boolean z) {
        this.A00 = z;
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        if (this.A00) {
            A00();
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        A01(true);
    }
}
