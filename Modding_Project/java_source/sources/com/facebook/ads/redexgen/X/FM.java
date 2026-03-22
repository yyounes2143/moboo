package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
/* loaded from: assets/audience_network.dex */
public class FM implements InterfaceC1335cf {
    public final /* synthetic */ YY A00;
    public final /* synthetic */ FL A01;
    public final /* synthetic */ C1355cz A02;

    public FM(FL fl, C1355cz c1355cz, YY yy) {
        this.A01 = fl;
        this.A02 = c1355cz;
        this.A00 = yy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1335cf
    public final void AHo() {
        InterfaceC1106Xo A05;
        Intent intent;
        InterfaceC1106Xo interfaceC1106Xo;
        Intent intent2;
        Bundle bundle;
        this.A01.A09();
        FL fl = this.A01;
        A05 = this.A01.A05(this.A02, this.A00);
        fl.A03 = A05;
        intent = this.A01.A01;
        if (intent != null && this.A01.A00 != null) {
            interfaceC1106Xo = this.A01.A03;
            intent2 = this.A01.A01;
            bundle = this.A01.A02;
            interfaceC1106Xo.AAl(intent2, bundle, this.A01.A00);
        }
    }
}
