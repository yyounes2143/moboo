package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* loaded from: assets/audience_network.dex */
public class ED extends AbstractRunnableC1061Vt {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ E1 A02;
    public final /* synthetic */ EnumC1446eU A03;

    public ED(E1 e1, EnumC1446eU enumC1446eU, int i, int i2) {
        this.A02 = e1;
        this.A03 = enumC1446eU;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        C1376dL c1376dL;
        Handler handler;
        C0996Te c0996Te;
        C1376dL c1376dL2;
        C0996Te c0996Te2;
        DI di;
        Handler handler2;
        C1376dL c1376dL3;
        C0996Te c0996Te3;
        Handler handler3;
        C1376dL c1376dL4;
        C1376dL c1376dL5;
        C0996Te c0996Te4;
        DQ dq;
        Handler handler4;
        C1376dL c1376dL6;
        C1376dL c1376dL7;
        Handler handler5;
        C0996Te c0996Te5;
        C0996Te c0996Te6;
        DW dw;
        C1376dL c1376dL8;
        C0996Te c0996Te7;
        DO r0;
        if (this.A03 == EnumC1446eU.A07) {
            this.A02.A0M(UZ.A0y);
            c1376dL8 = this.A02.A0B;
            c1376dL8.A0F().A3b();
            c0996Te7 = this.A02.A0C;
            r0 = E1.A0J;
            c0996Te7.A02(r0);
        } else if (this.A03 == EnumC1446eU.A03) {
            this.A02.A0M(UZ.A0t);
            this.A02.A04 = true;
            c0996Te6 = this.A02.A0C;
            dw = E1.A0H;
            c0996Te6.A02(dw);
            this.A02.A0L(this.A00);
        } else if (this.A03 == EnumC1446eU.A06) {
            this.A02.A0M(UZ.A0s);
            c1376dL7 = this.A02.A0B;
            c1376dL7.A0F().A3T();
            this.A02.A04 = true;
            handler5 = this.A02.A08;
            handler5.removeCallbacksAndMessages(null);
            c0996Te5 = this.A02.A0C;
            c0996Te5.A02(new C03393d(this.A01, this.A01));
            this.A02.A0L(this.A01);
        } else if (this.A03 == EnumC1446eU.A0A) {
            c1376dL4 = this.A02.A0B;
            if (U7.A1u(c1376dL4)) {
                c1376dL6 = this.A02.A0B;
                c1376dL6.A0B().AFs();
            }
            this.A02.A0M(UZ.A0w);
            c1376dL5 = this.A02.A0B;
            c1376dL5.A0F().A3i();
            c0996Te4 = this.A02.A0C;
            dq = E1.A0I;
            c0996Te4.A02(dq);
            handler4 = this.A02.A08;
            handler4.removeCallbacksAndMessages(null);
            this.A02.A0I();
        } else if (this.A03 == EnumC1446eU.A05) {
            this.A02.A0M(UZ.A0v);
            c1376dL3 = this.A02.A0B;
            c1376dL3.A0F().A3X();
            c0996Te3 = this.A02.A0C;
            final int i = this.A00;
            c0996Te3.A02(new DY(i) { // from class: com.facebook.ads.redexgen.X.3Y
            });
            handler3 = this.A02.A08;
            handler3.removeCallbacksAndMessages(null);
            this.A02.A0L(this.A00);
        } else if (this.A03 == EnumC1446eU.A04) {
            this.A02.A0M(UZ.A0u);
            c1376dL2 = this.A02.A0B;
            c1376dL2.A0F().A3U();
            c0996Te2 = this.A02.A0C;
            di = E1.A0L;
            c0996Te2.A02(di);
            handler2 = this.A02.A08;
            handler2.removeCallbacksAndMessages(null);
        } else if (this.A03 == EnumC1446eU.A09) {
            this.A02.A0M(UZ.A0s);
            c1376dL = this.A02.A0B;
            c1376dL.A0F().A3d();
            this.A02.A04 = true;
            handler = this.A02.A08;
            handler.removeCallbacksAndMessages(null);
            c0996Te = this.A02.A0C;
            c0996Te.A02(new C03393d(this.A00, this.A01));
            this.A02.A0L(this.A00);
        }
    }
}
