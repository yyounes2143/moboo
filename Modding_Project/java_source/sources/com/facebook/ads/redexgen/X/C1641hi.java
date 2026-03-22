package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.ArrayList;
/* renamed from: com.facebook.ads.redexgen.X.hi  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1641hi implements InterfaceC0945Re {
    public final /* synthetic */ AbstractC1657hy A00;
    public final /* synthetic */ NG A01;
    public final /* synthetic */ NH A02;
    public final /* synthetic */ C1376dL A03;
    public final /* synthetic */ boolean A04;

    public C1641hi(NH nh, C1376dL c1376dL, boolean z, AbstractC1657hy abstractC1657hy, NG ng) {
        this.A02 = nh;
        this.A03 = c1376dL;
        this.A04 = z;
        this.A00 = abstractC1657hy;
        this.A01 = ng;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0945Re
    public final void ACM() {
        ArrayList arrayList;
        if (U7.A1l(this.A03) && this.A04) {
            arrayList = this.A02.A02;
            arrayList.add(AbstractC1288bu.A01(this.A03, this.A00, 1, new C1642hj(this)));
            return;
        }
        this.A01.ACG();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0945Re
    public final void ACN() {
        this.A01.ACF(AdError.CACHE_ERROR);
    }
}
