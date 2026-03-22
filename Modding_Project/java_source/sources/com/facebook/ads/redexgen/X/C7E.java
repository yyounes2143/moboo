package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.7E  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class C7E extends AbstractC1627hU {
    public final /* synthetic */ C7B A00;
    public final /* synthetic */ AbstractC1667iA A01;
    public final /* synthetic */ AnonymousClass73 A02;
    public final /* synthetic */ boolean A03;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7E(C7B c7b, boolean z, boolean z2, AnonymousClass73 anonymousClass73, AbstractC1667iA abstractC1667iA) {
        super(z);
        this.A00 = c7b;
        this.A03 = z2;
        this.A02 = anonymousClass73;
        this.A01 = abstractC1667iA;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1627hU
    public final void A00() {
        InterfaceC0821Mh interfaceC0821Mh;
        interfaceC0821Mh = this.A00.A01;
        interfaceC0821Mh.AF7(this.A01, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1627hU
    public final void A01(boolean z) {
        C1376dL c1376dL;
        EnumC1044Vb enumC1044Vb;
        AtomicBoolean atomicBoolean;
        InterfaceC0821Mh interfaceC0821Mh;
        C1376dL c1376dL2;
        C1376dL c1376dL3;
        c1376dL = this.A00.A04;
        if (!U7.A1o(c1376dL) || !this.A03) {
            enumC1044Vb = this.A00.A05;
            if (enumC1044Vb == EnumC1044Vb.A0I) {
                c1376dL2 = this.A00.A04;
                c1376dL2.A0F().ADn();
            }
            atomicBoolean = this.A00.A0C;
            atomicBoolean.set(true);
            interfaceC0821Mh = this.A00.A01;
            interfaceC0821Mh.AF4(this.A01);
            return;
        }
        C7B c7b = this.A00;
        c1376dL3 = this.A00.A04;
        c7b.A06 = AbstractC1288bu.A01(c1376dL3, this.A02, 0, new C1676iJ(this));
    }
}
