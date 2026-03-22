package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.Fu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0653Fu extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C4H A00;

    public C0653Fu(C4H c4h) {
        this.A00 = c4h;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        AbstractC1210ae abstractC1210ae;
        int closeButtonStyle;
        AtomicBoolean atomicBoolean;
        AbstractC1210ae abstractC1210ae2;
        abstractC1210ae = this.A00.A00;
        if (abstractC1210ae != null) {
            abstractC1210ae2 = this.A00.A00;
            abstractC1210ae2.A1E();
        }
        AbstractC1104Xm abstractC1104Xm = this.A00.A08;
        closeButtonStyle = this.A00.getCloseButtonStyle();
        abstractC1104Xm.setToolbarActionMode(closeButtonStyle);
        this.A00.A08.A07();
        atomicBoolean = this.A00.A06;
        atomicBoolean.set(true);
    }
}
