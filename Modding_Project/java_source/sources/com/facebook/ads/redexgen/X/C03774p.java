package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.facebook.ads.redexgen.X.4p  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C03774p extends DV {
    public final /* synthetic */ C03754n A00;

    public C03774p(C03754n c03754n) {
        this.A00 = c03754n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
    /* renamed from: A00 */
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1302c8(this));
    }
}
