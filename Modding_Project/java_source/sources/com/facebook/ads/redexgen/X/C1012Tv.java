package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.Tv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1012Tv implements InterfaceC1158Zo {
    public final /* synthetic */ TD A00;

    public C1012Tv(TD td) {
        this.A00 = td;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1158Zo
    public final void ADT(C1157Zn c1157Zn) {
        AtomicBoolean atomicBoolean;
        AtomicBoolean atomicBoolean2;
        InterfaceC1027Uk interfaceC1027Uk;
        InterfaceC1027Uk interfaceC1027Uk2;
        atomicBoolean = this.A00.A0D;
        atomicBoolean.set(c1157Zn.A00() != null);
        atomicBoolean2 = this.A00.A0E;
        if (atomicBoolean2.get()) {
            interfaceC1027Uk = this.A00.A02;
            if (interfaceC1027Uk != null) {
                interfaceC1027Uk2 = this.A00.A02;
                interfaceC1027Uk2.AEW(c1157Zn.A00() != null);
            }
        }
    }
}
