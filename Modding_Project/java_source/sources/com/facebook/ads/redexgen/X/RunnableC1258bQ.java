package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.bQ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1258bQ implements Runnable {
    public final /* synthetic */ C0728Is A00;

    public RunnableC1258bQ(C0728Is c0728Is) {
        this.A00 = c0728Is;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1214ai c1214ai;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0C = true;
            c1214ai = this.A00.A0c;
            c1214ai.A0E().AFE(true);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
