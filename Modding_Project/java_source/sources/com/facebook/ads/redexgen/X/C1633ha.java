package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
/* renamed from: com.facebook.ads.redexgen.X.ha  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1633ha implements InterfaceC0945Re {
    public final /* synthetic */ NH A00;

    public C1633ha(NH nh) {
        this.A00 = nh;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0945Re
    public final void ACM() {
        NG ng;
        ng = this.A00.A04;
        ng.ACG();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0945Re
    public final void ACN() {
        NG ng;
        ng = this.A00.A04;
        ng.ACF(AdError.CACHE_ERROR);
    }
}
