package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.aY  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1204aY implements Runnable {
    public final /* synthetic */ C0759Jx A00;

    public RunnableC1204aY(C0759Jx c0759Jx) {
        this.A00 = c0759Jx;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A02 = true;
            if (((AbstractC1210ae) this.A00).A06.A0E() != null) {
                ((AbstractC1210ae) this.A00).A06.A0E().AFE(true);
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
