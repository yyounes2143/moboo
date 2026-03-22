package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.0J  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C0J extends AbstractC02600a {
    public static byte[] A00;
    public static final BZ A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 70);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{9, 34, 43, 56, 7, 43, 62, 41, 34, 47, 56, 100, 36, 37, 36, 47, 98, 99};
    }

    static {
        A01();
        A01 = new C0J();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0J() {
        /*
            r3 = this;
            r2 = 0
            r1 = 18
            r0 = 12
            java.lang.String r0 = A00(r2, r1, r0)
            r3.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0J.<init>():void");
    }

    @Override // com.facebook.ads.redexgen.X.BZ
    public final int A08(CharSequence sequence, int start) {
        int length = sequence.length();
        AbstractC1726jA.A01(start, length);
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.BZ
    public final boolean A09(char c) {
        return false;
    }
}
