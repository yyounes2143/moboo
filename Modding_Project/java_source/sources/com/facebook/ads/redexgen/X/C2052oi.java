package com.facebook.ads.redexgen.X;

import android.os.Bundle;
/* renamed from: com.facebook.ads.redexgen.X.oi  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2052oi implements C1S {
    public final C2056om A00;
    @Deprecated
    public final C04969r A01;
    public final C2054ok A02;
    public final C2Q A03;
    @Deprecated
    public final C2053oj A04;
    public final C2050og A05;
    public final String A06;
    public static String[] A07 = {"wAM8vtdO0lmHfSdh0aX8JSKdnwpCp9D2", "", "J6SB4ddL0FfEeVIHYuGnUGetWM2QRdUO", "0HTq7SjPEUFdYYph8tikUta3pLjb69Rn", "wGA6vSFg01QHk42FD2L8p637KRkqAXcn", "9eG6h6QaFREs2gWO0", "Z5vutuZNVsi2rK7c87KXUNl8wBJYnGEL", "V2BGt2aUfGoyLxnwwGFsOMeTNor3H3xe"};
    public static final C2052oi A09 = new C2I().A05();
    public static final C1R<C2052oi> A08 = new C1R() { // from class: com.facebook.ads.redexgen.X.oo
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            C2052oi A00;
            A00 = C2052oi.A00(bundle);
            return A00;
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2052oi A00(Bundle bundle) {
        String str = (String) C3M.A01(bundle.getString(A02(0), ""));
        Bundle bundle2 = bundle.getBundle(A02(1));
        C2054ok A6X = bundle2 == null ? C2054ok.A07 : C2054ok.A06.A6X(bundle2);
        Bundle bundle3 = bundle.getBundle(A02(2));
        C2050og A6X2 = bundle3 == null ? C2050og.A0Z : C2050og.A0Y.A6X(bundle3);
        Bundle bundle4 = bundle.getBundle(A02(3));
        return new C2052oi(str, bundle4 == null ? C04969r.A00 : C2056om.A05.A6X(bundle4), null, A6X, A6X2);
    }

    public C2052oi(String str, C04969r c04969r, C2053oj c2053oj, C2054ok c2054ok, C2050og c2050og) {
        this.A06 = str;
        this.A03 = c2053oj;
        this.A04 = c2053oj;
        this.A02 = c2054ok;
        this.A05 = c2050og;
        this.A00 = c04969r;
        this.A01 = c04969r;
    }

    public static String A02(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2052oi) {
            C2052oi c2052oi = (C2052oi) obj;
            if (AbstractC03624a.A1E(this.A06, c2052oi.A06)) {
                C2056om c2056om = this.A00;
                C2056om c2056om2 = c2052oi.A00;
                String[] strArr = A07;
                if (strArr[7].charAt(22) != strArr[2].charAt(22)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A07;
                strArr2[7] = "WE1TlvFnuMEFfhCqOSZQGPel0cAOxnij";
                strArr2[2] = "QIjSvgjDyRqWUwkha5pDZVewjWBdao8T";
                if (c2056om.equals(c2056om2) && AbstractC03624a.A1E(this.A03, c2052oi.A03) && AbstractC03624a.A1E(this.A02, c2052oi.A02) && AbstractC03624a.A1E(this.A05, c2052oi.A05)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A06.hashCode();
        int i = result * 31;
        int result2 = this.A03 != null ? this.A03.hashCode() : 0;
        int hashCode = (((i + result2) * 31) + this.A02.hashCode()) * 31;
        C2056om c2056om = this.A00;
        String[] strArr = A07;
        String str = strArr[4];
        String str2 = strArr[3];
        int charAt = str.charAt(31);
        int result3 = str2.charAt(31);
        if (charAt != result3) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[7] = "oKnJE1KY80M0C2djBAWfSHeSjkObNKTB";
        strArr2[2] = "bdrBBUaZbF1SVnsIGw0ZL6eMFfyDgZAn";
        int result4 = c2056om.hashCode();
        return ((hashCode + result4) * 31) + this.A05.hashCode();
    }
}
