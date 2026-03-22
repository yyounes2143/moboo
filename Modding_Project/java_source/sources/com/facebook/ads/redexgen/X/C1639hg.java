package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.ArrayList;
/* renamed from: com.facebook.ads.redexgen.X.hg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1639hg implements S7 {
    public final /* synthetic */ AbstractC1657hy A00;
    public final /* synthetic */ NG A01;
    public final /* synthetic */ NH A02;
    public final /* synthetic */ C1376dL A03;
    public final /* synthetic */ boolean A04;

    public C1639hg(NH nh, C1376dL c1376dL, boolean z, AbstractC1657hy abstractC1657hy, NG ng) {
        this.A02 = nh;
        this.A03 = c1376dL;
        this.A04 = z;
        this.A00 = abstractC1657hy;
        this.A01 = ng;
    }

    private void A00(boolean z) {
        ArrayList arrayList;
        if (z) {
            if (U7.A1l(this.A03) && this.A04) {
                arrayList = this.A02.A02;
                arrayList.add(AbstractC1288bu.A01(this.A03, this.A00, 1, new C1640hh(this)));
                return;
            }
            this.A01.ACG();
            return;
        }
        this.A01.ACF(AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        A00(true);
    }
}
