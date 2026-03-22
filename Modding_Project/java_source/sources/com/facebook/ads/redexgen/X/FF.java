package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class FF extends AbstractC1448eW {
    public final /* synthetic */ US A00;
    public final /* synthetic */ XH A01;
    public final /* synthetic */ C1343cn A02;
    public final /* synthetic */ FD A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ Map A05;

    public FF(FD fd, String str, C1343cn c1343cn, US us, Map map, XH xh) {
        this.A03 = fd;
        this.A04 = str;
        this.A02 = c1343cn;
        this.A00 = us;
        this.A05 = map;
        this.A01 = xh;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1448eW
    public final void A03() {
        C1449eX c1449eX;
        SparseBooleanArray sparseBooleanArray;
        C1449eX c1449eX2;
        N3 n3;
        C1376dL c1376dL;
        SparseBooleanArray sparseBooleanArray2;
        c1449eX = this.A03.A02;
        if (!c1449eX.A0Z() && !TextUtils.isEmpty(this.A04)) {
            sparseBooleanArray = this.A03.A05;
            if (!sparseBooleanArray.get(this.A02.A02())) {
                US us = this.A00;
                String str = this.A04;
                C1159Zp c1159Zp = new C1159Zp(this.A05);
                c1449eX2 = this.A03.A03;
                us.AB5(str, c1159Zp.A03(c1449eX2).A02(this.A01).A05());
                n3 = this.A03.A00;
                c1376dL = this.A03.A06;
                N3.A07(n3, c1376dL);
                sparseBooleanArray2 = this.A03.A05;
                sparseBooleanArray2.put(this.A02.A02(), true);
            }
        }
    }
}
