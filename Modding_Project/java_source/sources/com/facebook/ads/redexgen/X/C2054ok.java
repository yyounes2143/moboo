package com.facebook.ads.redexgen.X;

import android.os.Bundle;
/* renamed from: com.facebook.ads.redexgen.X.ok  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2054ok implements C1S {
    public final float A00;
    public final float A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public static String[] A05 = {"DHM3ogSyPiOeoDv5bW0AxEOdKkHHyzoj", "DikGrT", "5TP2r3oYS7ZAxQ2Lbh6O1Hwgb27IVuVZ", "BcOsGW4wr7kIZtXNBjWS4kH8Hq7r3t1j", "xCBSo", "o3SRWC", "etImtR6pfOeyK0p12rnN", "VXmJTa"};
    public static final C2054ok A07 = new C2O().A05();
    public static final C1R<C2054ok> A06 = new C1R() { // from class: com.facebook.ads.redexgen.X.ol
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            return C2054ok.A00(bundle);
        }
    };

    @Deprecated
    public C2054ok(long j, long j2, long j3, float f, float f2) {
        this.A04 = j;
        this.A03 = j2;
        this.A02 = j3;
        this.A01 = f;
        this.A00 = f2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2054ok(com.facebook.ads.redexgen.X.C2O r10) {
        /*
            r9 = this;
            long r1 = com.facebook.ads.redexgen.X.C2O.A02(r10)
            long r3 = com.facebook.ads.redexgen.X.C2O.A03(r10)
            long r5 = com.facebook.ads.redexgen.X.C2O.A04(r10)
            float r7 = com.facebook.ads.redexgen.X.C2O.A00(r10)
            float r8 = com.facebook.ads.redexgen.X.C2O.A01(r10)
            r0 = r9
            r0.<init>(r1, r3, r5, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2054ok.<init>(com.facebook.ads.redexgen.X.2O):void");
    }

    public static /* synthetic */ C2054ok A00(Bundle bundle) {
        return new C2054ok(bundle.getLong(A01(0), -9223372036854775807L), bundle.getLong(A01(1), -9223372036854775807L), bundle.getLong(A01(2), -9223372036854775807L), bundle.getFloat(A01(3), -3.4028235E38f), bundle.getFloat(A01(4), -3.4028235E38f));
    }

    public static String A01(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2054ok) {
            C2054ok c2054ok = (C2054ok) obj;
            if (this.A04 == c2054ok.A04 && this.A03 == c2054ok.A03) {
                long j = this.A02;
                if (A05[3].charAt(15) == 'f') {
                    throw new RuntimeException();
                }
                A05[3] = "Dnbo0S1X4SiwSLqrl4n96G4h1rg7k6Qp";
                if (j == c2054ok.A02) {
                    int i = (this.A01 > c2054ok.A01 ? 1 : (this.A01 == c2054ok.A01 ? 0 : -1));
                    String[] strArr = A05;
                    if (strArr[5].length() != strArr[7].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A05;
                    strArr2[0] = "apznZec0lqKPAkNyEzYuPUZE7fb8LaPc";
                    strArr2[6] = "99vPzfkBdBLW0Tl0nQsz";
                    if (i == 0 && this.A00 == c2054ok.A00) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int result = (int) (this.A02 ^ (this.A02 >>> 32));
        int result2 = ((((((((int) (this.A04 ^ (this.A04 >>> 32))) * 31) + ((int) (this.A03 ^ (this.A03 >>> 32)))) * 31) + result) * 31) + (this.A01 != 0.0f ? Float.floatToIntBits(this.A01) : 0)) * 31;
        int result3 = (this.A00 > 0.0f ? 1 : (this.A00 == 0.0f ? 0 : -1));
        return result2 + (result3 != 0 ? Float.floatToIntBits(this.A00) : 0);
    }
}
