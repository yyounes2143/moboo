package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.cM  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1316cM implements Runnable {
    public final /* synthetic */ C4K A00;

    public RunnableC1316cM(C4K c4k) {
        this.A00 = c4k;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC1323cT interfaceC1323cT;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0A = true;
            interfaceC1323cT = this.A00.A0V;
            interfaceC1323cT.AFE(true);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
