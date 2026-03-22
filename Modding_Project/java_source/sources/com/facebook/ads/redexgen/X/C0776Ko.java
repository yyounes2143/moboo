package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.Ko  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0776Ko extends AbstractRunnableC1061Vt {
    public final WeakReference<C1449eX> A00;

    public C0776Ko(C1449eX c1449eX) {
        this.A00 = new WeakReference<>(c1449eX);
    }

    public C0776Ko(WeakReference<C1449eX> weakReference) {
        this.A00 = weakReference;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        C1449eX viewabilityChecker = this.A00.get();
        if (viewabilityChecker != null) {
            viewabilityChecker.A0U();
        }
    }
}
