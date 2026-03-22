package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.f9  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1486f9 implements Runnable {
    public final /* synthetic */ C0552Bw A00;

    public RunnableC1486f9(C0552Bw c0552Bw) {
        this.A00 = c0552Bw;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            C0552Bw.A03(this.A00);
            throw null;
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
