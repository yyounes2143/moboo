package com.facebook.ads.redexgen.X;

import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Dd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0584Dd extends AbstractC0863Nz {
    public final /* synthetic */ C0583Dc A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0584Dd(C0583Dc c0583Dc, double d, double d2, double d3, boolean z) {
        super(d, d2, d3, z);
        this.A00 = c0583Dc;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0863Nz
    public final void A00(boolean z, boolean z2, O1 o1) {
        C1376dL c1376dL;
        String str;
        Map A0J;
        boolean z3;
        c1376dL = this.A00.A0D;
        if (U7.A0z(c1376dL)) {
            z3 = this.A00.A0A;
            if (z3) {
                return;
            }
        }
        if (z2) {
            this.A00.A0A = true;
            C0583Dc c0583Dc = this.A00;
            str = this.A00.A0J;
            A0J = this.A00.A0J(EnumC1383dS.A0B);
            c0583Dc.A0R(str, A0J);
        }
    }
}
