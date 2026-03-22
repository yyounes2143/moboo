package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.iM  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1679iM implements S7 {
    public final /* synthetic */ C7B A00;

    public C1679iM(C7B c7b) {
        this.A00 = c7b;
    }

    private void A00(boolean z) {
        InterfaceC0821Mh interfaceC0821Mh;
        AtomicBoolean atomicBoolean;
        InterfaceC0821Mh interfaceC0821Mh2;
        if (!z) {
            interfaceC0821Mh = this.A00.A01;
            interfaceC0821Mh.AF7(this.A00, AdError.CACHE_ERROR);
            return;
        }
        atomicBoolean = this.A00.A0C;
        atomicBoolean.set(true);
        interfaceC0821Mh2 = this.A00.A01;
        interfaceC0821Mh2.AF4(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        A00(true);
    }
}
