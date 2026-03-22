package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.o7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2017o7 implements C1S {
    public final int A00;
    public final C2027oH A01;
    public final boolean A02;
    public final int[] A03;
    public final boolean[] A04;
    public static final String A07 = AbstractC03624a.A0h(0);
    public static final String A09 = AbstractC03624a.A0h(1);
    public static final String A08 = AbstractC03624a.A0h(3);
    public static final String A06 = AbstractC03624a.A0h(4);
    public static final C1R<C2017o7> A05 = new C1R() { // from class: com.facebook.ads.redexgen.X.o8
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            return C2017o7.A00(bundle);
        }
    };

    public C2017o7(C2027oH c2027oH, boolean z, int[] iArr, boolean[] zArr) {
        this.A00 = c2027oH.A01;
        boolean z2 = false;
        C3M.A07(this.A00 == iArr.length && this.A00 == zArr.length);
        this.A01 = c2027oH;
        if (z && this.A00 > 1) {
            z2 = true;
        }
        this.A02 = z2;
        this.A03 = (int[]) iArr.clone();
        this.A04 = (boolean[]) zArr.clone();
    }

    public static /* synthetic */ C2017o7 A00(Bundle bundle) {
        C2027oH A6X = C2027oH.A06.A6X((Bundle) C3M.A01(bundle.getBundle(A07)));
        boolean[] selected = (boolean[]) AbstractC1718j1.A00(bundle.getBooleanArray(A08), new boolean[A6X.A01]);
        return new C2017o7(A6X, bundle.getBoolean(A06, false), (int[]) AbstractC1718j1.A00(bundle.getIntArray(A09), new int[A6X.A01]), selected);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2017o7 c2017o7 = (C2017o7) obj;
        if (this.A02 == c2017o7.A02 && this.A01.equals(c2017o7.A01) && Arrays.equals(this.A03, c2017o7.A03) && Arrays.equals(this.A04, c2017o7.A04)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A01.hashCode();
        int i = result * 31;
        int result2 = this.A02 ? 1 : 0;
        int result3 = Arrays.hashCode(this.A04);
        return ((((i + result2) * 31) + Arrays.hashCode(this.A03)) * 31) + result3;
    }
}
