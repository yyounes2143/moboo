package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.aG  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1186aG implements View.OnClickListener {
    public final /* synthetic */ C1188aI A00;

    public View$OnClickListenerC1186aG(C1188aI c1188aI) {
        this.A00 = c1188aI;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A05();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
