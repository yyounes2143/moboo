package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.El  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class RunnableC0618El implements Runnable {
    public final InterfaceC0617Ek A00;

    public RunnableC0618El(InterfaceC0617Ek interfaceC0617Ek) {
        this.A00 = interfaceC0617Ek;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.AE4();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
