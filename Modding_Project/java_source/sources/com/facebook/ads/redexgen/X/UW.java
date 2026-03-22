package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: assets/audience_network.dex */
public class UW implements InterfaceC1388dX {
    public final /* synthetic */ TD A00;

    public UW(TD td) {
        this.A00 = td;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1388dX
    public final void AFj() {
        AtomicBoolean atomicBoolean;
        InterfaceC1027Uk interfaceC1027Uk;
        InterfaceC1027Uk interfaceC1027Uk2;
        AtomicBoolean atomicBoolean2;
        atomicBoolean = this.A00.A0E;
        atomicBoolean.set(true);
        interfaceC1027Uk = this.A00.A02;
        if (interfaceC1027Uk != null) {
            interfaceC1027Uk2 = this.A00.A02;
            atomicBoolean2 = this.A00.A0D;
            interfaceC1027Uk2.AEW(atomicBoolean2.get());
        }
    }
}
