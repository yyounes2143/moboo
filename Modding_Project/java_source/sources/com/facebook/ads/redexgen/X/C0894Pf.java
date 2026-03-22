package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Pf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0894Pf extends AbstractRunnableC1061Vt {
    public final /* synthetic */ long A00;
    public final /* synthetic */ VR A01;
    public final /* synthetic */ VU A02;
    public final /* synthetic */ String A03;

    public C0894Pf(VU vu, String str, long j, VR vr) {
        this.A02 = vu;
        this.A03 = str;
        this.A00 = j;
        this.A01 = vr;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        this.A02.A0N(this.A03, this.A00, this.A01);
    }
}
