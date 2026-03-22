package com.facebook.ads.redexgen.X;

import android.os.Bundle;
/* renamed from: com.facebook.ads.redexgen.X.om  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2056om implements C1S {
    public final long A00;
    public final long A01;
    public final boolean A02;
    public final boolean A03;
    public final boolean A04;
    public static final C2056om A06 = new C2J().A0A();
    public static final C1R<C04969r> A05 = new C1R() { // from class: com.facebook.ads.redexgen.X.on
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            C04969r A0B;
            A0B = new C2J().A06(bundle.getLong(C2056om.A01(0), 0L)).A05(bundle.getLong(C2056om.A01(1), Long.MIN_VALUE)).A08(bundle.getBoolean(C2056om.A01(2), false)).A07(bundle.getBoolean(C2056om.A01(3), false)).A09(bundle.getBoolean(C2056om.A01(4), false)).A0B();
            return A0B;
        }
    };

    public C2056om(C2J c2j) {
        this.A01 = C2J.A00(c2j);
        this.A00 = C2J.A01(c2j);
        this.A03 = C2J.A02(c2j);
        this.A02 = C2J.A03(c2j);
        this.A04 = C2J.A04(c2j);
    }

    public static String A01(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2056om) {
            C2056om c2056om = (C2056om) obj;
            return this.A01 == c2056om.A01 && this.A00 == c2056om.A00 && this.A03 == c2056om.A03 && this.A02 == c2056om.A02 && this.A04 == c2056om.A04;
        }
        return false;
    }

    public final int hashCode() {
        int result = ((((int) (this.A01 ^ (this.A01 >>> 32))) * 31) + ((int) (this.A00 ^ (this.A00 >>> 32)))) * 31;
        int result2 = this.A03 ? 1 : 0;
        int result3 = this.A04 ? 1 : 0;
        return ((((result + result2) * 31) + (this.A02 ? 1 : 0)) * 31) + result3;
    }
}
