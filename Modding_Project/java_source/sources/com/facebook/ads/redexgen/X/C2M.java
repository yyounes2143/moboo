package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.facebook.ads.redexgen.X.2M  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C2M {
    public final Uri A00;
    public final List<Integer> A01;
    @Deprecated
    public final List<Integer> A02;
    public final Map<String, String> A03;
    @Deprecated
    public final Map<String, String> A04;
    public final UUID A05;
    @Deprecated
    public final UUID A06;
    public final boolean A07;
    public final boolean A08;
    public final boolean A09;
    public final byte[] A0A;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2M(com.facebook.ads.redexgen.X.C2L r3) {
        /*
            r2 = this;
            r2.<init>()
            boolean r0 = com.facebook.ads.redexgen.X.C2L.A06(r3)
            if (r0 == 0) goto Lf
            android.net.Uri r0 = com.facebook.ads.redexgen.X.C2L.A00(r3)
            if (r0 == 0) goto L6b
        Lf:
            r0 = 1
        L10:
            com.facebook.ads.redexgen.X.C3M.A08(r0)
            java.util.UUID r0 = com.facebook.ads.redexgen.X.C2L.A03(r3)
            java.lang.Object r0 = com.facebook.ads.redexgen.X.C3M.A01(r0)
            java.util.UUID r0 = (java.util.UUID) r0
            r2.A05 = r0
            java.util.UUID r0 = r2.A05
            r2.A06 = r0
            android.net.Uri r0 = com.facebook.ads.redexgen.X.C2L.A00(r3)
            r2.A00 = r0
            java.util.Map r0 = com.facebook.ads.redexgen.X.C2L.A02(r3)
            r2.A04 = r0
            java.util.Map r0 = com.facebook.ads.redexgen.X.C2L.A02(r3)
            r2.A03 = r0
            boolean r0 = com.facebook.ads.redexgen.X.C2L.A04(r3)
            r2.A08 = r0
            boolean r0 = com.facebook.ads.redexgen.X.C2L.A06(r3)
            r2.A07 = r0
            boolean r0 = com.facebook.ads.redexgen.X.C2L.A05(r3)
            r2.A09 = r0
            java.util.List r0 = com.facebook.ads.redexgen.X.C2L.A01(r3)
            r2.A02 = r0
            java.util.List r0 = com.facebook.ads.redexgen.X.C2L.A01(r3)
            r2.A01 = r0
            byte[] r0 = com.facebook.ads.redexgen.X.C2L.A07(r3)
            if (r0 == 0) goto L69
            byte[] r1 = com.facebook.ads.redexgen.X.C2L.A07(r3)
            byte[] r0 = com.facebook.ads.redexgen.X.C2L.A07(r3)
            int r0 = r0.length
            byte[] r0 = java.util.Arrays.copyOf(r1, r0)
        L66:
            r2.A0A = r0
            return
        L69:
            r0 = 0
            goto L66
        L6b:
            r0 = 0
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2M.<init>(com.facebook.ads.redexgen.X.2L):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2M) {
            C2M c2m = (C2M) obj;
            if (this.A05.equals(c2m.A05) && AbstractC03624a.A1E(this.A00, c2m.A00) && AbstractC03624a.A1E(this.A03, c2m.A03) && this.A08 == c2m.A08 && this.A07 == c2m.A07 && this.A09 == c2m.A09 && this.A01.equals(c2m.A01) && Arrays.equals(this.A0A, c2m.A0A)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A05.hashCode();
        int i = result * 31;
        int result2 = this.A00 != null ? this.A00.hashCode() : 0;
        int result3 = this.A08 ? 1 : 0;
        int result4 = this.A09 ? 1 : 0;
        int result5 = Arrays.hashCode(this.A0A);
        return ((((((((((((i + result2) * 31) + this.A03.hashCode()) * 31) + result3) * 31) + (this.A07 ? 1 : 0)) * 31) + result4) * 31) + this.A01.hashCode()) * 31) + result5;
    }
}
