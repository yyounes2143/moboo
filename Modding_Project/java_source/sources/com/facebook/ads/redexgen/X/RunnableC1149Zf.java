package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Zf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1149Zf implements Runnable {
    public final /* synthetic */ C1150Zg A00;
    public final /* synthetic */ InterfaceC1151Zh A01;

    public RunnableC1149Zf(C1150Zg c1150Zg, InterfaceC1151Zh interfaceC1151Zh) {
        this.A00 = c1150Zg;
        this.A01 = interfaceC1151Zh;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A01.ACO();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
