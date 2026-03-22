package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
/* renamed from: com.facebook.ads.redexgen.X.hb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1634hb implements NP {
    public final /* synthetic */ NH A00;

    public C1634hb(NH nh) {
        this.A00 = nh;
    }

    @Override // com.facebook.ads.redexgen.X.NP
    public final void AEZ(AdError adError) {
        NG ng;
        ng = this.A00.A04;
        ng.ACF(AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.NP
    public final void AEa() {
        NG ng;
        ng = this.A00.A04;
        ng.ACG();
    }
}
