package com.facebook.ads.redexgen.X;

import com.facebook.ads.CacheFlag;
import java.util.EnumSet;
/* renamed from: com.facebook.ads.redexgen.X.6y  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04386y extends AbstractC1623hQ {
    public C04386y(C1376dL c1376dL, NT nt) {
        super(c1376dL, nt);
    }

    private C1621hO A00(Runnable runnable) {
        return new C1621hO(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1623hQ
    public final AbstractC0827Mo A0I() {
        C1685iS successfullyLoadedAdapter = (C1685iS) this.A01;
        if (successfullyLoadedAdapter != null) {
            return successfullyLoadedAdapter.A09();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1623hQ
    public final void A0P() {
        C1685iS interstitialAdapter = (C1685iS) this.A01;
        interstitialAdapter.A0B();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1623hQ
    public final void A0R(MP mp, TE te, TC tc, NU nu) {
        C1685iS c1685iS = (C1685iS) mp;
        C1622hP c1622hP = new C1622hP(this, nu, c1685iS);
        A0H().postDelayed(c1622hP, te.A05().A05());
        EnumSet<CacheFlag> enumSet = this.A08.A0B;
        if (enumSet == null) {
            enumSet = CacheFlag.ALL;
        }
        c1685iS.A0A(this.A0B, A00(c1622hP), nu, enumSet, this.A08.A04, this.A08.A05, this.A08.A02);
    }
}
