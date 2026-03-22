package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.b7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1239b7 implements View.OnClickListener {
    public final /* synthetic */ JU A00;

    public View$OnClickListenerC1239b7(JU ju) {
        this.A00 = ju;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        boolean z2;
        MH mh;
        AbstractC1657hy abstractC1657hy;
        Handler handler;
        Runnable runnable;
        AbstractC1657hy abstractC1657hy2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0Q;
            if (!z) {
                this.A00.A0R = true;
                JU ju = this.A00;
                mh = this.A00.A0h;
                ju.A0f(((C7P) mh).A0M().toString());
                abstractC1657hy = this.A00.A0H;
                if (abstractC1657hy.A0n() >= 0) {
                    handler = this.A00.A09;
                    runnable = this.A00.A0o;
                    abstractC1657hy2 = this.A00.A0H;
                    handler.postDelayed(runnable, abstractC1657hy2.A0n());
                }
            }
            JU ju2 = this.A00;
            z2 = this.A00.A0Q;
            ju2.A0i(z2 ? false : true);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
