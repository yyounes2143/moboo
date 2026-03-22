package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.Tc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0994Tc implements InterfaceC1027Uk {
    public WeakReference<C0917Qc> A00;

    public C0994Tc(C0917Qc c0917Qc) {
        this.A00 = new WeakReference<>(c0917Qc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1027Uk
    public final void AEW(boolean z) {
        if (this.A00.get() != null) {
            this.A00.get().A1f(z, false);
        }
    }
}
