package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.iF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1672iF extends AbstractRunnableC1061Vt {
    public static byte[] A01;
    public final /* synthetic */ C1671iE A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 14);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-107, -116, -95, -116, -98, -114, -99, -108, -101, -97, 101};
    }

    public C1672iF(C1671iE c1671iE) {
        this.A00 = c1671iE;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        C1376dL c1376dL;
        AbstractC1148Ze abstractC1148Ze;
        C1673iG c1673iG;
        c1376dL = this.A00.A03;
        c1376dL.A0F().AKB();
        abstractC1148Ze = this.A00.A05;
        StringBuilder append = new StringBuilder().append(A00(0, 11, 29));
        c1673iG = this.A00.A00;
        abstractC1148Ze.loadUrl(append.append(c1673iG.A03()).toString());
    }
}
