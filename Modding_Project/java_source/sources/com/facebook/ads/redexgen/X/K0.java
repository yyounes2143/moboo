package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public class K0 implements InterfaceC1158Zo {
    public final WeakReference<C03955h> A00;

    public K0(C03955h c03955h) {
        this.A00 = new WeakReference<>(c03955h);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1158Zo
    public final void ADT(C1157Zn c1157Zn) {
        C03955h c03955h = this.A00.get();
        if (c03955h != null) {
            c03955h.A04 = c1157Zn.A00() != null;
            c03955h.A02();
        }
    }
}
