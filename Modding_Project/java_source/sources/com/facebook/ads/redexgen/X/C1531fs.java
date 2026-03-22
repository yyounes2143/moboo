package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdListener;
/* renamed from: com.facebook.ads.redexgen.X.fs  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1531fs extends AbstractRunnableC1048Vg {
    public static String[] A01 = {"12g74Y80MldwuLH5Sc5BNMhqIci3y3n7", "gYGMtvDgCappq8Eqx1aX2vuQToh52UHd", "GlXHohOtVJhIOcbHhrFcSUyeAoJlZUN4", "CknPoCaYYZqOx1VHoQWkocTpfCeiqOL0", "IgiYYUSARpIlAyCBMTexeC9bH0PhGiJU", "Cia0Frm0699G8jcollxZnIfMYARIEex0", "Mzdi9MK983UUFZlepuPfFCQdgw1DK7MX", "jSW62lJNNGtUKopGO2HTdr7H5wR53AmM"};
    public final /* synthetic */ C1529fq A00;

    public C1531fs(C1529fq c1529fq) {
        this.A00 = c1529fq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1048Vg
    public final void A01() {
        C0940Qz c0940Qz;
        C0940Qz c0940Qz2;
        C0940Qz c0940Qz3;
        c0940Qz = this.A00.A01;
        if (c0940Qz.A06() != null) {
            c0940Qz2 = this.A00.A01;
            String[] strArr = A01;
            if (strArr[3].charAt(29) == strArr[0].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "nnCrEA10h1A2hd08C5n1xIwFCKPiTwdC";
            strArr2[0] = "49SRRBhRmQihygS20ldMlh5Gkuzwxt90";
            AdListener A06 = c0940Qz2.A06();
            c0940Qz3 = this.A00.A01;
            A06.onAdClicked(c0940Qz3.A07());
        }
    }
}
