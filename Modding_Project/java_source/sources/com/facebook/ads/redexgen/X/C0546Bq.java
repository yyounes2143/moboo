package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: com.facebook.ads.redexgen.X.Bq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0546Bq extends BroadcastReceiver {
    public final /* synthetic */ C0551Bv A00;

    public C0546Bq(C0551Bv c0551Bv) {
        this.A00 = c0551Bv;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (!isInitialStickyBroadcast()) {
            C0551Bv.A07(this.A00);
        }
    }
}
