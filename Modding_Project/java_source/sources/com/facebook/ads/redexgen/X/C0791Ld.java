package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Ld  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0791Ld implements InterfaceC1353cx {
    public static byte[] A01;
    public static String[] A02 = {"BHXiYjXxfgjD7yDB", "kPfw5HKETqo8dV", "SlBKzsC69frNfTspgJs5v90302jxH173", "0t7u2eeKUCj5gcxeWZIOCTpidMAeGJtt", "hTXrvsDVbOi3Q9xrUBZOJj7T", "iLbLRTjnBQIJ87KFXaIFUijyWt7EPIGc", "0utayShxEdwMeaV3UZeoWviAuyaBWRmj", "gyVOCm6F1v6TZALkbG"};
    public final /* synthetic */ C0790Lc A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 58);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.EM, Ascii.ETB, 9, Ascii.SYN, 7, Ascii.DLE, Ascii.CR, 7, Ascii.SI};
    }

    static {
        A01();
    }

    public C0791Ld(C0790Lc c0790Lc) {
        this.A00 = c0790Lc;
    }

    public /* synthetic */ C0791Ld(C0790Lc c0790Lc, C0808Lu c0808Lu) {
        this(c0790Lc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1353cx
    public final void ACt() {
        this.A00.A0U(true, A00(0, 9, 106));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1353cx
    public final void ADW() {
        boolean z;
        AbstractC1657hy abstractC1657hy;
        InterfaceC1105Xn interfaceC1105Xn;
        YY yy;
        US us;
        AbstractC1657hy abstractC1657hy2;
        C1355cz c1355cz;
        C1355cz c1355cz2;
        C1376dL c1376dL;
        YY yy2;
        AbstractC1657hy abstractC1657hy3;
        AbstractC1657hy abstractC1657hy4;
        C1376dL c1376dL2;
        AbstractC1657hy abstractC1657hy5;
        AbstractC1657hy abstractC1657hy6;
        C1376dL c1376dL3;
        NB nb;
        C1376dL c1376dL4;
        C1376dL c1376dL5;
        z = this.A00.A0Z;
        if (!z) {
            abstractC1657hy = this.A00.A0I;
            if (!TextUtils.isEmpty(abstractC1657hy.A25())) {
                us = this.A00.A0M;
                abstractC1657hy2 = this.A00.A0I;
                String A25 = abstractC1657hy2.A25();
                C1159Zp c1159Zp = new C1159Zp();
                c1355cz = this.A00.A07;
                C1159Zp A03 = c1159Zp.A03(c1355cz.getViewabilityChecker());
                c1355cz2 = this.A00.A07;
                us.AB5(A25, A03.A02(c1355cz2.getTouchDataRecorder()).A05());
                c1376dL = this.A00.A0L;
                W2 A00 = W2.A00(c1376dL);
                yy2 = this.A00.A0R;
                String A8d = yy2.A8d();
                abstractC1657hy3 = this.A00.A0I;
                A00.A0E(A8d, abstractC1657hy3.A25());
                abstractC1657hy4 = this.A00.A0I;
                N3 A21 = abstractC1657hy4.A21();
                c1376dL2 = this.A00.A0L;
                N3.A07(A21, c1376dL2);
                abstractC1657hy5 = this.A00.A0I;
                String A0t = abstractC1657hy5.A0t();
                abstractC1657hy6 = this.A00.A0I;
                AbstractC0861Nw.A02(A0t, X0.A00(abstractC1657hy6.A0v()));
                c1376dL3 = this.A00.A0L;
                c1376dL3.A0F().A3D();
                nb = this.A00.A0J;
                if (nb.A0P()) {
                    c1376dL4 = this.A00.A0L;
                    c1376dL4.A0F().ADo();
                }
            }
            C0790Lc c0790Lc = this.A00;
            String[] strArr = A02;
            if (strArr[5].charAt(12) == strArr[2].charAt(12)) {
                throw new RuntimeException();
            }
            A02[4] = "GzK3XL6hk7idJD";
            interfaceC1105Xn = c0790Lc.A0Q;
            yy = this.A00.A0R;
            interfaceC1105Xn.A4b(yy.A88());
            return;
        }
        c1376dL5 = this.A00.A0L;
        c1376dL5.A0F().ADp();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1353cx
    public final void AE2() {
        InterfaceC1105Xn interfaceC1105Xn;
        YY yy;
        interfaceC1105Xn = this.A00.A0Q;
        yy = this.A00.A0R;
        interfaceC1105Xn.A4b(yy.A7t());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1353cx
    public final void AFw() {
        InterfaceC1105Xn interfaceC1105Xn;
        interfaceC1105Xn = this.A00.A0Q;
        interfaceC1105Xn.ACf(15);
    }
}
