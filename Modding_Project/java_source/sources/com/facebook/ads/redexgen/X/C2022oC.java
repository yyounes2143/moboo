package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.oC  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2022oC implements C1S {
    public final C2027oH A00;
    public final AbstractC0517Am<Integer> A01;
    public static final String A04 = AbstractC03624a.A0h(0);
    public static final String A03 = AbstractC03624a.A0h(1);
    public static final C1R<C2022oC> A02 = new C1R() { // from class: com.facebook.ads.redexgen.X.oD
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            return C2022oC.A00(bundle);
        }
    };

    public C2022oC(C2027oH c2027oH, List<Integer> trackIndices) {
        if (trackIndices.isEmpty() || (((Integer) Collections.min(trackIndices)).intValue() >= 0 && ((Integer) Collections.max(trackIndices)).intValue() < c2027oH.A01)) {
            this.A00 = c2027oH;
            this.A01 = AbstractC0517Am.A05(trackIndices);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public static /* synthetic */ C2022oC A00(Bundle bundle) {
        return new C2022oC(C2027oH.A06.A6X((Bundle) C3M.A01(bundle.getBundle(A04))), AD.A0A((int[]) C3M.A01(bundle.getIntArray(A03))));
    }

    public final int A01() {
        return this.A00.A02;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2022oC c2022oC = (C2022oC) obj;
        return this.A00.equals(c2022oC.A00) && this.A01.equals(c2022oC.A01);
    }

    public final int hashCode() {
        return this.A00.hashCode() + (this.A01.hashCode() * 31);
    }
}
