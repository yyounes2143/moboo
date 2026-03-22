package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.pn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2103pn implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C2102pm A01;
    public final /* synthetic */ Exception A02;

    public RunnableC2103pn(C2102pm c2102pm, int i, Exception exc) {
        this.A01 = c2102pm;
        this.A00 = i;
        this.A02 = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        InterfaceC1558gK interfaceC1558gK;
        Handler handler;
        Runnable runnable;
        boolean A08;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            try {
                z = this.A01.A01;
                if (z) {
                    if (A8.A07) {
                        A08 = this.A01.A08();
                        if (A08) {
                            this.A01.A0C();
                            return;
                        }
                    }
                    C2102pm c2102pm = this.A01;
                    interfaceC1558gK = this.A01.A05;
                    c2102pm.A05(interfaceC1558gK.AC6());
                    handler = this.A01.A04;
                    runnable = this.A01.A0A;
                    handler.postDelayed(runnable, this.A00);
                }
            } catch (Exception ex) {
                ex.initCause(this.A02);
                throw ex;
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
