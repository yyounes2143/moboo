package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Ov  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0884Ov implements X5 {
    public int A00;
    public final X5 A01;

    public C0884Ov(X5 x5, int i) {
        this.A01 = x5;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.X5
    public final void AGO(String str) {
        if (this.A00 > 0) {
            this.A01.AGO(str);
            this.A00--;
        }
    }

    @Override // com.facebook.ads.redexgen.X.X5
    public final void flush() {
        this.A01.flush();
    }
}
