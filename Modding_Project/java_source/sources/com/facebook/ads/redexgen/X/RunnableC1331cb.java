package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.cb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1331cb implements Runnable {
    public final /* synthetic */ C03533r A00;

    public RunnableC1331cb(C03533r c03533r) {
        this.A00 = c03533r;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            ((G2) this.A00).A09.A4b(((G2) this.A00).A0A.A7o());
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
