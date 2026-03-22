package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: assets/audience_network.dex */
public final class NH {
    public static byte[] A05;
    public static String[] A06 = {"SwW", "nKJOmWTx3LjNZvOp7YbBROgXIyGkfXUh", "cNvS8LZQYgXEdOP85dYAvAy4C3J", "ICxq6EmLG0dgZi7UJ5PBV2wBsvrmCfpb", "tKedy3gZYTLe", "bmz0vq", "hvIAQTYE0cdtFIL2", "tj9oqRvQS19ndgZTuA"};
    public SF A00;
    public EnumC1163Zt A01 = EnumC1163Zt.A05;
    public ArrayList<C1287bt> A02 = new ArrayList<>();
    public final AbstractC0827Mo A03;
    public final NG A04;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 97);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{-35, Ascii.ETB, 35, Ascii.FS, Ascii.ESC, -66, -29, -23, -38, -25, -29, -42, -31, -107, -70, -25, -25, -28, -25, -107, -89, -91, -91, -85, -107, -20, -34, -23, -35, -28, -22, -23, -107, -42, -107, -21, -42, -31, -34, -39, -107, -74, -39, -66, -29, -37, -28, -93, Ascii.NAK, Ascii.CAN, 19, Ascii.CAN, Ascii.NAK, 40, Ascii.NAK, 19, Ascii.SYN, 41, 34, Ascii.CAN, 32, Ascii.EM, -29, -14, -21, -36, -31, -38, -30, -25, -40, -23, -38, -21, -38, -26, -20, Ascii.DC2, Ascii.ETB, Ascii.DLE, Ascii.CAN, Ascii.GS, Ascii.DC4, 19, -16, 19, -13, Ascii.DLE, 35, Ascii.DLE, -15, 36, Ascii.GS, 19, Ascii.ESC, Ascii.DC4, 63, 68, 74, 59, 72, 73, 74, 63, 74, 63, 55, 66};
    }

    static {
        A06();
    }

    public NH(C1376dL c1376dL, NU nu, NG ng, String str) {
        JSONObject dataObject = nu.A03();
        this.A03 = A01(c1376dL, nu, str, dataObject);
        this.A04 = ng;
    }

    private AdError A00(C1376dL c1376dL, AbstractC1657hy abstractC1657hy) {
        if (abstractC1657hy == null || abstractC1657hy.A27().isEmpty()) {
            c1376dL.A08().AAy(A04(62, 3, 33), AbstractC0987Sv.A0Z, new C0988Sw(A04(5, 43, 20)));
            return AdError.internalError(2006);
        }
        return null;
    }

    public static AbstractC0827Mo A01(C1376dL c1376dL, NU nu, String str, JSONObject jSONObject) {
        AbstractC0827Mo abstractC0827Mo = null;
        if (jSONObject.has(A04(65, 12, 24))) {
            try {
                abstractC0827Mo = C1655hw.A01(jSONObject, c1376dL, true);
                abstractC0827Mo.A1L(true);
                abstractC0827Mo.A1I(A04(96, 12, 117));
            } catch (JSONException unused) {
            }
        }
        if (abstractC0827Mo == null) {
            abstractC0827Mo = AnonymousClass77.A00(jSONObject, c1376dL);
        }
        abstractC0827Mo.A1H(str);
        TF A01 = nu.A01();
        if (A01 != null) {
            abstractC0827Mo.A1D(A01.A06());
        }
        return abstractC0827Mo;
    }

    private SF A03(C1376dL c1376dL) {
        return this.A00 != null ? this.A00 : new SF(c1376dL);
    }

    private void A08(C1376dL c1376dL, AnonymousClass77 anonymousClass77) {
        NB playableData = anonymousClass77.A20().A0H().A07();
        A0B(playableData != null ? playableData.A0B() : EnumC1163Zt.A05);
        C1634hb c1634hb = new C1634hb(this);
        SF sf = new SF(c1376dL);
        boolean z = U7.A2A(c1376dL) && C0946Rf.A0A(anonymousClass77.A1C());
        if (z) {
            C0946Rf unifiedAssetsLoader = new C0946Rf(sf, anonymousClass77.A1C(), anonymousClass77.A0v(), anonymousClass77.A17(), z, new C1633ha(this));
            sf.A0e(new C1017Ua(anonymousClass77.A25(), c1376dL.A0A()));
            unifiedAssetsLoader.A0B();
            return;
        }
        NR.A02(c1376dL, anonymousClass77, true, c1634hb);
    }

    private void A09(C1376dL c1376dL, EnumSet<CacheFlag> enumSet, AbstractC1657hy abstractC1657hy, int i, NG ng) {
        boolean A1Y = abstractC1657hy.A1Y();
        SF A03 = A03(c1376dL);
        A03.A0e(new C1017Ua(abstractC1657hy.A25(), c1376dL.A0A()));
        boolean z = U7.A2A(c1376dL) && C0946Rf.A0A(abstractC1657hy.A1C());
        if (z) {
            new C0946Rf(A03, abstractC1657hy.A1C(), abstractC1657hy.A0v(), abstractC1657hy.A17(), z, new C1641hi(this, c1376dL, A1Y, abstractC1657hy, ng)).A0B();
            return;
        }
        String A04 = A04(96, 12, 117);
        if (A1Y) {
            SB sb = new SB(abstractC1657hy.A0s(), abstractC1657hy.A17(), A04);
            sb.A04 = true;
            sb.A03 = A04(0, 5, 78);
            A03.A0Y(sb);
        }
        A03.A0d(new SD(abstractC1657hy.A23().A01(), C1342cm.A04, C1342cm.A04, abstractC1657hy.A17(), A04(96, 12, 117)));
        boolean contains = enumSet.contains(CacheFlag.VIDEO);
        int i2 = 0;
        boolean A2s = U7.A2s(c1376dL, C1431eF.A03());
        for (C0828Mp adInfo : abstractC1657hy.A27()) {
            SD sd = new SD(adInfo.A0H().A08(), NN.A00(adInfo.A0H()), NN.A01(adInfo.A0H()), abstractC1657hy.A17(), A04(96, 12, 117));
            if (i2 == 0) {
                A03.A0c(sd);
            } else {
                A03.A0d(sd);
            }
            for (String str : adInfo.A0K().A02()) {
                A03.A0d(new SD(str, -1, -1, abstractC1657hy.A17(), A04(96, 12, 117)));
            }
            if (contains && !TextUtils.isEmpty(adInfo.A0H().A09())) {
                SB sb2 = new SB(adInfo.A0H().A09(), abstractC1657hy.A17(), A04(96, 12, 117), adInfo.A0H().A06());
                sb2.A04 = false;
                if (i2 == 0) {
                    if (A1Y && !A2s) {
                        A03.A0Y(sb2);
                    } else {
                        A03.A0b(sb2);
                    }
                } else if (A1Y && !A2s) {
                    A03.A0Z(sb2);
                } else {
                    A03.A0a(sb2);
                }
            }
            i2++;
        }
        A03.A0X(new C1639hg(this, c1376dL, A1Y, abstractC1657hy, ng), new S8(abstractC1657hy.A17(), A04, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A(C1376dL c1376dL, EnumSet<CacheFlag> enumSet, C1655hw c1655hw, AbstractC1657hy abstractC1657hy, int i, NG ng) {
        A09(c1376dL, enumSet, abstractC1657hy, i, new C1643hk(this, c1376dL, abstractC1657hy, c1655hw, i, ng, enumSet));
    }

    private void A0B(EnumC1163Zt enumC1163Zt) {
        this.A01 = enumC1163Zt;
    }

    private boolean A0C(C1376dL c1376dL, AbstractC1657hy abstractC1657hy) {
        AdError A00 = A00(c1376dL, abstractC1657hy);
        if (A00 != null) {
            this.A04.ACF(A00);
            return true;
        }
        return false;
    }

    public final AbstractC0827Mo A0D() {
        return this.A03;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
        return com.facebook.ads.redexgen.X.EnumC1044Vb.A0D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0071, code lost:
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0076, code lost:
        return com.facebook.ads.redexgen.X.EnumC1044Vb.A0B;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.facebook.ads.redexgen.X.EnumC1044Vb A0E() {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.Mo r0 = r5.A03
            boolean r0 = r0.A1T()
            if (r0 == 0) goto Lb
            com.facebook.ads.redexgen.X.Vb r0 = com.facebook.ads.redexgen.X.EnumC1044Vb.A04
            return r0
        Lb:
            com.facebook.ads.redexgen.X.Mo r4 = r5.A03
            com.facebook.ads.redexgen.X.hy r4 = (com.facebook.ads.redexgen.X.AbstractC1657hy) r4
            boolean r0 = r4.A1Y()
            if (r0 == 0) goto L18
            com.facebook.ads.redexgen.X.Vb r0 = com.facebook.ads.redexgen.X.EnumC1044Vb.A06
            return r0
        L18:
            java.util.List r0 = r4.A27()
            int r1 = r0.size()
            r0 = 1
            if (r1 <= r0) goto L26
            com.facebook.ads.redexgen.X.Vb r0 = com.facebook.ads.redexgen.X.EnumC1044Vb.A0A
            return r0
        L26:
            com.facebook.ads.redexgen.X.Mp r0 = r4.A20()
            com.facebook.ads.redexgen.X.Ms r0 = r0.A0H()
            com.facebook.ads.redexgen.X.NB r3 = r0.A07()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.NH.A06
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 14
            if (r1 == r0) goto L77
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.NH.A06
            java.lang.String r1 = "HO5lN2vl3hawZ3xdOTbB4PXxItmZOFKM"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "QabHGQsenJFHZf5mHftqzVXi6FXcwsQx"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L50
            com.facebook.ads.redexgen.X.Vb r0 = com.facebook.ads.redexgen.X.EnumC1044Vb.A0C
            return r0
        L50:
            boolean r3 = r5.A0L(r4)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.NH.A06
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 2
            if (r1 == r0) goto L71
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.NH.A06
            java.lang.String r1 = "iV2CDA2M2IfUZLXvhnmiNr1pV0Sur2CQ"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "GDT4frbvCKvkZrCQcOaJTMqN9T6RIdn0"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L74
        L6e:
            com.facebook.ads.redexgen.X.Vb r0 = com.facebook.ads.redexgen.X.EnumC1044Vb.A0D
            return r0
        L71:
            if (r3 == 0) goto L74
            goto L6e
        L74:
            com.facebook.ads.redexgen.X.Vb r0 = com.facebook.ads.redexgen.X.EnumC1044Vb.A0B
            return r0
        L77:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.NH.A0E():com.facebook.ads.redexgen.X.Vb");
    }

    public final EnumC1163Zt A0F() {
        return this.A01;
    }

    public final String A0G() {
        if (this.A03.A1T()) {
            return ((C1655hw) this.A03).A20();
        }
        return ((AbstractC1657hy) this.A03).A25();
    }

    public final void A0H() {
        this.A04.AJm();
    }

    public final void A0I(Intent intent, RewardData rewardData, String str) {
        this.A03.A1F(rewardData);
        this.A03.A1J(str);
        if (A0D().A1T()) {
            intent.putExtra(A04(77, 19, 78), this.A03);
        }
        intent.putExtra(A04(48, 14, 83), this.A03);
    }

    public final void A0J(C1376dL c1376dL, EnumSet<CacheFlag> enumSet) {
        if (A0E() == EnumC1044Vb.A04) {
            C1655hw c1655hw = (C1655hw) this.A03;
            AbstractC1657hy A1w = c1655hw.A1w();
            if (A0C(c1376dL, A1w) || A1w == null) {
                return;
            }
            this.A04.AGo();
            A0A(c1376dL, enumSet, c1655hw, A1w, 0, this.A04);
            return;
        }
        AbstractC1657hy abstractC1657hy = (AbstractC1657hy) this.A03;
        if (A06[5].length() == 0) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[1] = "h3j4XQE4N9RDZ4AU6tvjsFYKX3e30HKG";
        strArr[3] = "lDhcJ7lgFtqhZjTb781X3zaoWDc2BWUc";
        if (A0C(c1376dL, abstractC1657hy)) {
            return;
        }
        this.A04.AGo();
        if (A0E() == EnumC1044Vb.A0C) {
            AnonymousClass77 anonymousClass77 = (AnonymousClass77) this.A03;
            String[] strArr2 = A06;
            if (strArr2[2].length() != strArr2[6].length()) {
                A06[7] = "0uVLF1bkkTEn2WeYm46QMmOd1A6";
                A08(c1376dL, anonymousClass77);
                return;
            }
            A08(c1376dL, anonymousClass77);
            return;
        }
        A09(c1376dL, enumSet, (AnonymousClass77) this.A03, -1, this.A04);
    }

    public final boolean A0K() {
        return this.A03.A1P();
    }

    public final boolean A0L(AbstractC1657hy abstractC1657hy) {
        return !TextUtils.isEmpty(abstractC1657hy.A20().A0H().A09());
    }
}
