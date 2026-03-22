package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.bR  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1259bR implements View.OnClickListener {
    public final /* synthetic */ C0728Is A00;

    public View$OnClickListenerC1259bR(C0728Is c0728Is) {
        this.A00 = c0728Is;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MH mh;
        MH mh2;
        boolean z;
        boolean z2;
        C1214ai c1214ai;
        AbstractC1657hy abstractC1657hy;
        Handler handler;
        Runnable runnable;
        AbstractC1657hy abstractC1657hy2;
        C1214ai c1214ai2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            mh = this.A00.A0X;
            if (mh != null) {
                mh2 = this.A00.A0X;
                Uri A0M = ((C7P) mh2).A0M();
                if (A0M != null) {
                    z = this.A00.A0D;
                    if (!z) {
                        this.A00.A0E = true;
                        this.A00.A0j(A0M.toString());
                        c1214ai = this.A00.A0c;
                        if (c1214ai.A0E() != null) {
                            c1214ai2 = this.A00.A0c;
                            c1214ai2.A0E().ABr();
                        }
                        abstractC1657hy = this.A00.A0Y;
                        if (abstractC1657hy.A0n() >= 0) {
                            handler = this.A00.A0S;
                            runnable = this.A00.A0d;
                            abstractC1657hy2 = this.A00.A0Y;
                            handler.postDelayed(runnable, abstractC1657hy2.A0n());
                        }
                    }
                    C0728Is c0728Is = this.A00;
                    z2 = this.A00.A0D;
                    c0728Is.A0n(z2 ? false : true);
                }
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
