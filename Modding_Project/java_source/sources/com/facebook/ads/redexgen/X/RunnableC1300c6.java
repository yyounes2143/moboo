package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.c6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1300c6 implements Runnable {
    public final /* synthetic */ C03754n A00;

    public RunnableC1300c6(C03754n c03754n) {
        this.A00 = c03754n;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC1323cT interfaceC1323cT;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A07 = true;
            interfaceC1323cT = this.A00.A0M;
            interfaceC1323cT.AFE(true);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
