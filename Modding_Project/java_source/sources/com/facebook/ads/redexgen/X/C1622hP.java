package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
/* renamed from: com.facebook.ads.redexgen.X.hP  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1622hP extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C1685iS A00;
    public final /* synthetic */ NU A01;
    public final /* synthetic */ C04386y A02;

    public C1622hP(C04386y c04386y, NU nu, C1685iS c1685iS) {
        this.A02 = c04386y;
        this.A01 = nu;
        this.A00 = c1685iS;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        this.A02.A0T(this.A01);
        this.A02.A0Q(this.A00);
        this.A02.A00 = null;
        V1 A00 = V1.A00(AdErrorType.INTERSTITIAL_AD_TIMEOUT);
        this.A02.A0B.A0F().A5Y(A00.A03().getErrorCode(), A00.A04());
        this.A02.A07.A0G(A00);
    }
}
