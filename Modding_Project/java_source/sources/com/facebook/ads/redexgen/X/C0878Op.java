package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Op  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0878Op extends AbstractRunnableC1061Vt {
    public final /* synthetic */ DialogInterface A00;
    public final /* synthetic */ DialogInterface$OnClickListenerC1094Xc A01;

    public C0878Op(DialogInterface$OnClickListenerC1094Xc dialogInterface$OnClickListenerC1094Xc, DialogInterface dialogInterface) {
        this.A01 = dialogInterface$OnClickListenerC1094Xc;
        this.A00 = dialogInterface;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        InterfaceC1455ed interfaceC1455ed;
        InterfaceC1455ed interfaceC1455ed2;
        C1350cu c1350cu;
        Map<? extends String, ? extends String> A02;
        interfaceC1455ed = this.A01.A01.A02;
        if (interfaceC1455ed != null) {
            interfaceC1455ed2 = this.A01.A01.A02;
            c1350cu = this.A01.A01.A00;
            String A03 = VZ.A03(c1350cu);
            C1469er c1469er = new C1469er();
            A02 = this.A01.A01.A02(this.A01.A00.getText().toString());
            interfaceC1455ed2.AGD(A03, c1469er.A05(A02).A08());
        }
        this.A00.cancel();
    }
}
