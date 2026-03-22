package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.bP  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1257bP implements Runnable {
    public final /* synthetic */ C0728Is A00;

    public RunnableC1257bP(C0728Is c0728Is) {
        this.A00 = c0728Is;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0D;
            if (z) {
                this.A00.A0L();
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
