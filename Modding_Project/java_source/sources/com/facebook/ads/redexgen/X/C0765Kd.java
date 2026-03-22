package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.Kd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0765Kd extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C1156Zm A00;

    public C0765Kd(C1156Zm c1156Zm) {
        this.A00 = c1156Zm;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        boolean z;
        Handler handler;
        Runnable runnable;
        this.A00.A03();
        z = this.A00.A08;
        if (!z) {
            return;
        }
        handler = this.A00.A0D;
        runnable = this.A00.A0F;
        handler.postDelayed(runnable, 250L);
    }
}
