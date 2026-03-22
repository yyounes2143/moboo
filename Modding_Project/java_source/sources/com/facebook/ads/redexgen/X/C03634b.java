package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.facebook.ads.redexgen.X.4b  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C03634b extends DV {
    public final /* synthetic */ C4Z A00;

    public C03634b(C4Z c4z) {
        this.A00 = c4z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
    /* renamed from: A00 */
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1310cG(this));
    }
}
