package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.Il  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0721Il implements InterfaceC1158Zo {
    public final WeakReference<C5Q> A00;

    public C0721Il(C5Q c5q) {
        this.A00 = new WeakReference<>(c5q);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1158Zo
    public final void ADT(C1157Zn c1157Zn) {
        C5Q c5q = this.A00.get();
        if (c5q != null) {
            c5q.A06 = c1157Zn.A00() != null;
            c5q.A02();
        }
    }
}
