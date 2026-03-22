package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.iK  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1677iK implements InterfaceC0945Re {
    public final /* synthetic */ C7B A00;
    public final /* synthetic */ boolean A01;

    public C1677iK(C7B c7b, boolean z) {
        this.A00 = c7b;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0945Re
    public final void ACM() {
        C1376dL c1376dL;
        AtomicBoolean atomicBoolean;
        InterfaceC0821Mh interfaceC0821Mh;
        C1376dL c1376dL2;
        AbstractC0827Mo abstractC0827Mo;
        c1376dL = this.A00.A04;
        if (!U7.A1o(c1376dL) || !this.A01) {
            atomicBoolean = this.A00.A0C;
            atomicBoolean.set(true);
            interfaceC0821Mh = this.A00.A01;
            interfaceC0821Mh.AF4(this.A00);
            return;
        }
        C7B c7b = this.A00;
        c1376dL2 = this.A00.A04;
        abstractC0827Mo = this.A00.A03;
        c7b.A06 = AbstractC1288bu.A01(c1376dL2, (AnonymousClass73) abstractC0827Mo, 0, new C1678iL(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0945Re
    public final void ACN() {
        InterfaceC0821Mh interfaceC0821Mh;
        interfaceC0821Mh = this.A00.A01;
        interfaceC0821Mh.AF7(this.A00, AdError.CACHE_ERROR);
    }
}
