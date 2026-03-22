package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.iH  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1674iH implements NP {
    public final /* synthetic */ C7B A00;

    public C1674iH(C7B c7b) {
        this.A00 = c7b;
    }

    @Override // com.facebook.ads.redexgen.X.NP
    public final void AEZ(AdError adError) {
        InterfaceC0821Mh interfaceC0821Mh;
        interfaceC0821Mh = this.A00.A01;
        interfaceC0821Mh.AF7(this.A00, adError);
    }

    @Override // com.facebook.ads.redexgen.X.NP
    public final void AEa() {
        AtomicBoolean atomicBoolean;
        InterfaceC0821Mh interfaceC0821Mh;
        atomicBoolean = this.A00.A0C;
        atomicBoolean.set(true);
        interfaceC0821Mh = this.A00.A01;
        interfaceC0821Mh.AF4(this.A00);
    }
}
