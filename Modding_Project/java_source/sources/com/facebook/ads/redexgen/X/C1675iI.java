package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.iI  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1675iI implements InterfaceC0945Re {
    public final /* synthetic */ C7B A00;

    public C1675iI(C7B c7b) {
        this.A00 = c7b;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0945Re
    public final void ACM() {
        AtomicBoolean atomicBoolean;
        InterfaceC0821Mh interfaceC0821Mh;
        atomicBoolean = this.A00.A0C;
        atomicBoolean.set(true);
        interfaceC0821Mh = this.A00.A01;
        interfaceC0821Mh.AF4(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0945Re
    public final void ACN() {
        InterfaceC0821Mh interfaceC0821Mh;
        interfaceC0821Mh = this.A00.A01;
        interfaceC0821Mh.AF7(this.A00, AdError.CACHE_ERROR);
    }
}
