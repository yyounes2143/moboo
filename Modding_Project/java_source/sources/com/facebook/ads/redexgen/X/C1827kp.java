package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.kp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1827kp implements I8 {
    public final /* synthetic */ MatroskaExtractor A00;

    public C1827kp(MatroskaExtractor matroskaExtractor) {
        this.A00 = matroskaExtractor;
    }

    @Override // com.facebook.ads.redexgen.X.I8
    public final void A4a(int i, int i2, InterfaceC1850lN interfaceC1850lN) throws IOException {
        this.A00.A0U(i, i2, interfaceC1850lN);
    }

    @Override // com.facebook.ads.redexgen.X.I8
    public final void A6F(int i) throws C03182i {
        this.A00.A0S(i);
    }

    @Override // com.facebook.ads.redexgen.X.I8
    public final void A6S(int i, double d) throws C03182i {
        this.A00.A0T(i, d);
    }

    @Override // com.facebook.ads.redexgen.X.I8
    public final int A7m(int i) {
        return this.A00.A0R(i);
    }

    @Override // com.facebook.ads.redexgen.X.I8
    public final void AA9(int i, long j) throws C03182i {
        this.A00.A0V(i, j);
    }

    @Override // com.facebook.ads.redexgen.X.I8
    public final boolean AAN(int i) {
        return this.A00.A0Y(i);
    }

    @Override // com.facebook.ads.redexgen.X.I8
    public final void AJO(int i, long j, long j2) throws C03182i {
        this.A00.A0W(i, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.I8
    public final void AJZ(int i, String str) throws C03182i {
        this.A00.A0X(i, str);
    }
}
