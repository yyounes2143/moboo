package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.6w  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04366w extends AbstractC1623hQ {
    public static byte[] A00;
    public static String[] A01 = {"5V5lzA70kRKZvNcqBnXwT00Z041t6ONl", "kRuh8LYE7MIIox", "vbi5lrus1TtIcXopJBSqGum5Kl452Sg0", "JcNQ6WafPgnmx1aBDePIhrwzaceROyrU", "60x4BO5hhvvMWgz", "65jgyaanPJJ2TdYJaJc79ygQBnrUrWFq", "zOX7nuTxFizV3LeqTcyyEc2wd", "PvIxiwPRiyIOar7lINjn4bFuW"};

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{42, 47, 107, 34, 56, 107, 37, 36, 63, 107, 57, 46, 42, 47, 50, 107, 36, 57, 107, 42, 39, 57, 46, 42, 47, 50, 107, 47, 34, 56, 59, 39, 42, 50, 46, 47, Ascii.DC4, Ascii.NAK, Ascii.FS, 17, 9};
    }

    static {
        A03();
    }

    public C04366w(C1376dL c1376dL, NT nt) {
        super(c1376dL, nt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A01(long j) {
        HashMap hashMap = new HashMap();
        hashMap.put(A00(36, 5, 12), String.valueOf(System.currentTimeMillis() - j));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(List<String> trackingUrls, Map<String, String> extraData) {
        if (trackingUrls != null) {
            boolean isEmpty = trackingUrls.isEmpty();
            if (A01[3].charAt(25) != 'c') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[6] = "86KHDrV9NKgfIZAVdUdv4tP2w";
            strArr[7] = "hnWt117Y9rLxZfnYOmFuZ36IL";
            if (isEmpty) {
                return;
            }
            for (String str : trackingUrls) {
                new AsyncTaskC1475ex(this.A0B, extraData).execute(str);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1623hQ
    public final void A0P() {
        C1680iN c1680iN = (C1680iN) this.A01;
        if (c1680iN.A0R()) {
            MQ mq = this.A07;
            if (A01[3].charAt(25) != 'c') {
                throw new RuntimeException();
            }
            A01[4] = "SmlVqZ";
            if (mq != null) {
                this.A07.A0B(c1680iN);
                return;
            }
            return;
        }
        throw new IllegalStateException(A00(0, 36, 55));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1623hQ
    public final void A0R(MP mp, TE te, TC tc, NU nu) {
        C1680iN c1680iN = (C1680iN) mp;
        long currentTimeMillis = System.currentTimeMillis();
        C1620hN c1620hN = new C1620hN(this, nu, c1680iN, currentTimeMillis, tc);
        A0H().postDelayed(c1620hN, te.A05().A05());
        c1680iN.A0L(this.A0B, new C1619hM(this, c1620hN, currentTimeMillis, tc), this.A09, nu, C0917Qc.A0K());
    }
}
