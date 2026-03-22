package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* loaded from: assets/audience_network.dex */
public class FP implements InterfaceC1087Wv {
    public final /* synthetic */ C03533r A00;

    public FP(C03533r c03533r) {
        this.A00 = c03533r;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1087Wv
    public final void AEQ(String str) {
        Handler handler;
        handler = this.A00.A0G;
        handler.postDelayed(new RunnableC1330ca(this), 2000L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1087Wv
    public final void AER(String str) {
        this.A00.A0I(UZ.A0c);
    }
}
