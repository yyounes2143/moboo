package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.eG  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1432eG implements Runnable {
    public final /* synthetic */ C1435eJ A00;

    public RunnableC1432eG(C1435eJ c1435eJ) {
        this.A00 = c1435eJ;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0A();
            handler = this.A00.A01;
            handler.removeCallbacks(this);
            handler2 = this.A00.A01;
            handler2.postDelayed(this, 250L);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
