package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.0K  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C0K extends C02670h {
    public C04065s A00;
    public List<C1343cn> A01;

    public C0K(C1376dL c1376dL) {
        super(c1376dL);
        this.A00 = new C04065s(this, 1, null, null, null);
    }

    public final void A20(C1449eX c1449eX) {
        if (this.A00 != null) {
            this.A00.A0c(c1449eX);
        }
    }

    public C04065s getCarouselCardBehaviorHelper() {
        return this.A00;
    }

    public void setCardsInfo(ArrayList arrayList) {
        this.A01 = arrayList;
        this.A00.A0d(this.A01);
    }
}
