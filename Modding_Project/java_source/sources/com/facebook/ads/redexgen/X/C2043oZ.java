package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
/* renamed from: com.facebook.ads.redexgen.X.oZ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2043oZ implements C1S {
    public final C2B A00;
    public static String[] A01 = {"mula3CidaM", "QXZvrsMqvoQg77WBvlve", "clHaL9AVxqL", "4", "dTVzaj3Js", "vbPIPyw6rptXOUyrUErD6RaDDuBNyqsV", "dqUk2BmO1rRhKnsvPvl2vnYni3", "mE8b9jVFwC8HjBTnnlrMONG37KhdcP6J"};
    public static final C2043oZ A03 = new C03232n().A04();
    public static final String A04 = AbstractC03624a.A0h(0);
    public static final C1R<C2043oZ> A02 = new C1R() { // from class: com.facebook.ads.redexgen.X.oa
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            C2043oZ A012;
            A012 = C2043oZ.A01(bundle);
            return A012;
        }
    };

    public C2043oZ(C2B c2b) {
        this.A00 = c2b;
    }

    public static C2043oZ A01(Bundle bundle) {
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(A04);
        if (integerArrayList == null) {
            return A03;
        }
        C03232n c03232n = new C03232n();
        int i = 0;
        while (true) {
            int size = integerArrayList.size();
            if (A01[7].charAt(28) != 'c') {
                throw new RuntimeException();
            }
            A01[7] = "mp2TMNIiilctnlK0CRpdI2bFoWxScr6M";
            if (i < size) {
                c03232n.A00(integerArrayList.get(i).intValue());
                i++;
            } else {
                return c03232n.A04();
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C2043oZ)) {
                return false;
            }
            return this.A00.equals(((C2043oZ) obj).A00);
        } else if (A01[5].charAt(22) != 'S') {
            String[] strArr = A01;
            strArr[2] = "64Urjp6xISM";
            strArr[0] = "9byEEtKTR1";
            return true;
        } else {
            throw new RuntimeException();
        }
    }

    public final int hashCode() {
        return this.A00.hashCode();
    }
}
