package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Qp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0930Qp implements Runnable {
    public final /* synthetic */ C0931Qq A00;

    public RunnableC0930Qp(C0931Qq c0931Qq) {
        this.A00 = c0931Qq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A05 = 0L;
            this.A00.A06 = false;
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
