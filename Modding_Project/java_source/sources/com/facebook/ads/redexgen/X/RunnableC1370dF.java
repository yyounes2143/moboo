package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.dF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1370dF implements Runnable {
    public final /* synthetic */ C0612Ef A00;

    public RunnableC1370dF(C0612Ef c0612Ef) {
        this.A00 = c0612Ef;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C04206g c04206g;
        int i;
        Handler handler;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0B() != 0) {
                c04206g = this.A00.A05;
                i = this.A00.A01;
                c04206g.scrollBy(i, 0);
                handler = this.A00.A04;
                handler.postDelayed(this, 16L);
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
