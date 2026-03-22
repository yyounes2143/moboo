package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.g6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1544g6 implements InterfaceC0924Qj {
    public final /* synthetic */ QO A00;

    public C1544g6(QO qo) {
        this.A00 = qo;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0924Qj
    public final View A79(int i) {
        return this.A00.A0v(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0924Qj
    public final int A7B(View view) {
        return this.A00.A0p(view) + ((QP) view.getLayoutParams()).rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0924Qj
    public final int A7C(View view) {
        return this.A00.A0m(view) - ((QP) view.getLayoutParams()).leftMargin;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0924Qj
    public final int A8Y() {
        return this.A00.A0j() - this.A00.A0h();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0924Qj
    public final int A8Z() {
        return this.A00.A0g();
    }
}
