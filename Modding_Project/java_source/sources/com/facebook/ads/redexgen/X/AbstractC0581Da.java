package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.widget.RelativeLayout;
/* renamed from: com.facebook.ads.redexgen.X.Da  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0581Da extends RelativeLayout implements InterfaceC1393dc {
    public E1 A00;

    public AbstractC0581Da(C1376dL c1376dL) {
        super(c1376dL);
    }

    public AbstractC0581Da(C1376dL c1376dL, AttributeSet attributeSet, int i) {
        super(c1376dL, attributeSet, i);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(params);
    }

    public void A07() {
    }

    public void A08() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1393dc
    public final void AAm(E1 e1) {
        this.A00 = e1;
        A07();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1393dc
    public final void AJk(E1 e1) {
        A08();
        this.A00 = null;
    }

    public E1 getVideoView() {
        return this.A00;
    }
}
