package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Xj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1101Xj implements View.OnClickListener {
    public final /* synthetic */ N9 A00;
    public final /* synthetic */ C1017Ua A01;
    public final /* synthetic */ C1102Xk A02;
    public final /* synthetic */ InterfaceC1105Xn A03;
    public final /* synthetic */ String A04;

    public View$OnClickListenerC1101Xj(C1102Xk c1102Xk, C1017Ua c1017Ua, InterfaceC1105Xn interfaceC1105Xn, String str, N9 n9) {
        this.A02 = c1102Xk;
        this.A01 = c1017Ua;
        this.A03 = interfaceC1105Xn;
        this.A04 = str;
        this.A00 = n9;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        O2 o2;
        C1376dL c1376dL;
        C1376dL c1376dL2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A01.A04(UZ.A0A, null);
            o2 = this.A02.A02;
            c1376dL = this.A02.A03;
            if (o2.A0O(c1376dL.A02(), true)) {
                this.A03.AAf(this.A04, this.A00);
            } else if (!TextUtils.isEmpty(this.A00.A00())) {
                WN wn = new WN();
                c1376dL2 = this.A02.A03;
                WN.A0O(wn, c1376dL2, WQ.A00(this.A00.A00()), this.A04);
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
