package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class F3 extends AbstractC1448eW {
    public final /* synthetic */ C03523q A00;

    public F3(C03523q c03523q) {
        this.A00 = c03523q;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1448eW
    public final void A03() {
        XH xh;
        XH xh2;
        String str;
        C1449eX c1449eX;
        XH xh3;
        AbstractC1657hy abstractC1657hy;
        US us;
        String str2;
        AbstractC1657hy abstractC1657hy2;
        C1376dL c1376dL;
        C1376dL c1376dL2;
        AbstractC1657hy abstractC1657hy3;
        AbstractC1657hy abstractC1657hy4;
        xh = this.A00.A0E;
        if (!xh.A07()) {
            C03523q c03523q = this.A00;
            xh2 = this.A00.A0E;
            c03523q.setImpressionRecordingFlag(xh2);
            str = this.A00.A0A;
            if (!TextUtils.isEmpty(str)) {
                C1159Zp c1159Zp = new C1159Zp();
                c1449eX = this.A00.A09;
                C1159Zp A03 = c1159Zp.A03(c1449eX);
                xh3 = this.A00.A0E;
                C1159Zp A02 = A03.A02(xh3);
                abstractC1657hy = ((NI) this.A00).A0A;
                Map<String, String> A05 = A02.A04(abstractC1657hy.A0u()).A05();
                us = ((NI) this.A00).A0C;
                str2 = this.A00.A0A;
                us.AB5(str2, A05);
                abstractC1657hy2 = ((NI) this.A00).A0A;
                N3 A21 = abstractC1657hy2.A21();
                c1376dL = this.A00.A0D;
                N3.A07(A21, c1376dL);
                c1376dL2 = this.A00.A0D;
                c1376dL2.A0F().A3D();
                abstractC1657hy3 = this.A00.A03;
                String A0t = abstractC1657hy3.A0t();
                abstractC1657hy4 = ((NI) this.A00).A0A;
                AbstractC0861Nw.A02(A0t, X0.A00(abstractC1657hy4.A0v()));
            }
        }
    }
}
