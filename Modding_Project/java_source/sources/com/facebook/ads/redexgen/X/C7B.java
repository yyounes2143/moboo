package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.7B  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C7B extends AbstractC1667iA {
    public static SF A0D;
    public static byte[] A0E;
    public static String[] A0F = {"g9SdUg6XNSnvVCS02jX19aczyGq48qDV", "lGSQ9LsgX83H3UqklEPZgAjaPEKabNT0", "y0oXMo4BXc2on8MNFvJxgBv", "Ulfd9L14l0ScyK0QB689zsPu0EZ5wfqr", "W3xKKEfUMxBXJmvfztSkCM8j4ls7Vw3H", "lNYBpqeQZYlfeCveDiVEAZh", "rx8", "elj"};
    public long A00;
    public InterfaceC0821Mh A01;
    public C0822Mi A02;
    public AbstractC0827Mo A03;
    public C1376dL A04;
    public EnumC1044Vb A05;
    public C1287bt A06;
    public String A07;
    public String A08;
    public String A09;
    public String A0A;
    public final String A0B = UUID.randomUUID().toString();
    public final AtomicBoolean A0C = new AtomicBoolean();

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 51);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0E = new byte[]{-98, -16, -14, -14, -12, -5, -12, 1, -2, -4, -12, 3, -12, 1, -18, 1, -2, 3, -16, 3, -8, -2, -3, -58, -45, -60, -58, -56, -39, -50, -37, -50, -39, -34, 1, 6, -1, 7, Ascii.FF, 3, 2, -33, 2, -30, -1, Ascii.DC2, -1, -32, 19, Ascii.FF, 2, 10, 3, Ascii.GS, Ascii.NAK, Ascii.DC4, Ascii.EM, 17, 36, Ascii.EM, Ascii.US, Ascii.RS, -12, 17, 36, 17, Ascii.DLE, Ascii.FF, 1, 3, 5, Ascii.CR, 5, Ascii.SO, Ascii.DC4, -23, 4, -68, -66, -79, -80, -79, -78, -75, -70, -79, -80, -101, -66, -75, -79, -70, -64, -83, -64, -75, -69, -70, -105, -79, -59, -17, -30, -18, -14, -30, -16, -15, -47, -26, -22, -30, -2, -15, 3, -19, -2, -16, -33, -15, -2, 2, -15, -2, -31, -34, -40, -13, -26, -8, -30, -13, -27, -26, -27, -41, -22, -27, -26, -16, -62, -27, -59, -30, -11, -30, -61, -10, -17, -27, -19, -26, Ascii.FS, Ascii.SI, 33, Ascii.VT, Ascii.FS, Ascii.SO, Ascii.SI, Ascii.SO, 9, 32, 19, Ascii.SO, Ascii.SI, Ascii.EM, -61, -68, -73, -65, -61, -77, -105, -78, -4, -17, -21, -3, -38, -1, -10, -21};
    }

    static {
        A09();
    }

    private void A07() {
        OO.A00(this.A04).A06(this.A02, this.A02.A00());
    }

    private void A08() {
        if (this.A02 != null) {
            try {
                OO.A00(this.A04).A05(this.A02);
            } catch (Exception unused) {
            }
        }
    }

    private void A0A(Intent intent) {
        int i = super.A00;
        String A05 = A05(77, 24, 25);
        if (i != -1 && Settings.System.getInt(this.A04.getContentResolver(), A05(1, 22, 92), 0) != 1) {
            int i2 = super.A00;
            String[] strArr = A0F;
            if (strArr[4].charAt(19) == strArr[0].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[5] = "RWC7frN5DjKRH0uo4BJmLzj";
            strArr2[2] = "FPcb0UYEDF6wwONX6Ty9E2F";
            intent.putExtra(A05, i2);
            return;
        }
        C1376dL c1376dL = this.A04;
        String[] strArr3 = A0F;
        if (strArr3[7].length() == strArr3[6].length()) {
            String[] strArr4 = A0F;
            strArr4[5] = "O4w3do1khQsKhsE3USwlJ7C";
            strArr4[2] = "rALKIAVwphrvKmHx0hqaLzY";
            if (U7.A0h(c1376dL)) {
                return;
            }
        } else if (U7.A0h(c1376dL)) {
            return;
        }
        intent.putExtra(A05, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(final C1376dL c1376dL, final C1655hw c1655hw, final int i) {
        if (i >= c1655hw.A1u()) {
            return;
        }
        final AnonymousClass73 anonymousClass73 = (AnonymousClass73) c1655hw.A1x(i);
        A0D = new SF(c1376dL);
        A0D.A0e(new C1017Ua(anonymousClass73.A25(), c1376dL.A0A()));
        NS.A02(c1376dL, A0D, anonymousClass73);
        final boolean z = i == 0;
        A0D.A0X(new AbstractC1627hU(z) { // from class: com.facebook.ads.redexgen.X.7C
            @Override // com.facebook.ads.redexgen.X.AbstractC1627hU
            public final void A00() {
                InterfaceC0821Mh interfaceC0821Mh;
                interfaceC0821Mh = C7B.this.A01;
                interfaceC0821Mh.AF7(C7B.this, AdError.CACHE_ERROR);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1627hU
            public final void A01(boolean z2) {
                AtomicBoolean atomicBoolean;
                InterfaceC0821Mh interfaceC0821Mh;
                C7B.A0D = null;
                if (z2) {
                    c1376dL.A01().AIU(anonymousClass73.A25(), c1655hw.A1y());
                }
                if (i == 0) {
                    atomicBoolean = C7B.this.A0C;
                    atomicBoolean.set(true);
                    interfaceC0821Mh = C7B.this.A01;
                    interfaceC0821Mh.AF4(C7B.this);
                }
                C7B.this.A0C(c1376dL, c1655hw, i + 1);
            }
        }, new S8(anonymousClass73.A17(), A05(152, 14, 119), i));
    }

    private void A0D(boolean z) {
        if (this.A05 == EnumC1044Vb.A0F) {
            A0F(z);
        } else if (this.A05 == EnumC1044Vb.A0H) {
            A0G(z);
        } else if (this.A05 == EnumC1044Vb.A0G) {
            A0E(z);
        } else {
            A0G(z);
        }
    }

    private void A0E(boolean z) {
        SF sf = new SF(this.A04);
        boolean z2 = U7.A2A(this.A04) && C0946Rf.A0A(this.A03.A1C());
        if (z2) {
            C0946Rf unifiedAssetsLoader = new C0946Rf(sf, this.A03.A1C(), this.A03.A0v(), this.A03.A17(), z2, new C1675iI(this));
            sf.A0e(new C1017Ua(((AbstractC1657hy) this.A03).A25(), this.A04.A0A()));
            unifiedAssetsLoader.A0B();
            return;
        }
        NR.A02(this.A04, (AbstractC1657hy) this.A03, z, new C1674iH(this));
    }

    private void A0F(boolean z) {
        SF sf = new SF(this.A04);
        sf.A0e(new C1017Ua(((AbstractC1657hy) this.A03).A25(), this.A04.A0A()));
        NS.A03(this.A04, sf, (AnonymousClass73) this.A03);
        sf.A0X(new C1679iM(this), new S8(this.A03.A17(), A05(152, 14, 119)));
    }

    private void A0G(boolean z) {
        boolean z2 = false;
        if (this.A03.A1T()) {
            C1655hw c1655hw = (C1655hw) this.A03;
            for (int i = 0; i < c1655hw.A1u(); i++) {
                if (TextUtils.isEmpty(c1655hw.A1x(i).A20().A0H().A09())) {
                    this.A01.AF7(this, AdError.INTERNAL_ERROR);
                    return;
                }
            }
            A0C(this.A04, c1655hw, 0);
            return;
        }
        SF sf = new SF(this.A04);
        sf.A0e(new C1017Ua(((AbstractC1657hy) this.A03).A25(), this.A04.A0A()));
        if (U7.A2A(this.A04) && C0946Rf.A0A(this.A03.A1C())) {
            z2 = true;
        }
        boolean A1Y = this.A03.A1Y();
        if (z2) {
            C0946Rf unifiedAssetsLoader = new C0946Rf(sf, this.A03.A1C(), this.A03.A0v(), this.A03.A17(), z2, new C1677iK(this, A1Y));
            unifiedAssetsLoader.A0B();
            return;
        }
        AnonymousClass73 anonymousClass73 = (AnonymousClass73) this.A03;
        if (TextUtils.isEmpty(anonymousClass73.A20().A0H().A09())) {
            if (this.A05 == EnumC1044Vb.A0I) {
                this.A04.A0F().ADm();
            }
            this.A01.AF7(this, AdError.INTERNAL_ERROR);
            return;
        }
        NS.A02(this.A04, sf, anonymousClass73);
        sf.A0X(new C7E(this, z, A1Y, anonymousClass73, this), new S8(anonymousClass73.A17(), A05(152, 14, 119)));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1667iA
    public final int A0H() {
        if (this.A03 == null) {
            return -1;
        }
        return this.A03.A0m();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1667iA
    public final AbstractC0827Mo A0I() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1667iA
    public final boolean A0J() {
        if (this.A0C.get()) {
            this.A03.A1E(super.A01);
            String A03 = C1373dI.A03(super.A02, this.A0B, this.A07);
            this.A03.A1F(super.A02);
            this.A03.A1J(A03);
            AdActivityIntent A05 = WB.A05(this.A04);
            A05.putExtra(A05(174, 8, 83), this.A05);
            A05.putExtra(A05(127, 25, 78), this.A03);
            A05.putExtra(A05(34, 19, 107), this.A03);
            String A052 = A05(166, 8, 27);
            String rewardUrl = this.A0B;
            A05.putExtra(A052, rewardUrl);
            if (A03 != null) {
                String rewardUrl2 = A05(112, 15, 89);
                A05.putExtra(rewardUrl2, A03);
            }
            String A053 = A05(66, 11, 109);
            String rewardUrl3 = this.A0A;
            A05.putExtra(A053, rewardUrl3);
            A05.putExtra(A05(101, 11, 74), this.A00);
            String rewardUrl4 = this.A09;
            if (rewardUrl4 != null) {
                String A054 = A05(53, 13, 125);
                String rewardUrl5 = this.A09;
                A05.putExtra(A054, rewardUrl5);
            }
            A0A(A05);
            if (!ProcessUtils.isRemoteRenderingProcess()) {
                A05.setFlags(A05.getFlags() | 268435456);
            }
            ActivityUtils.A03(this.A04);
            try {
                if (ProcessUtils.isRemoteRenderingProcess()) {
                    if (!WB.A0I(this.A04, A05)) {
                        this.A04.A0F().AHS();
                        if (this.A01 != null) {
                            this.A01.AF7(this, AdError.AD_PRESENTATION_ERROR);
                        }
                        return false;
                    }
                    return true;
                }
                WB.A0B(this.A04, A05);
                return true;
            } catch (W9 e) {
                String[] strArr = A0F;
                if (strArr[1].charAt(25) != strArr[3].charAt(25)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0F;
                strArr2[7] = "zr3";
                strArr2[6] = "zCM";
                Throwable cause = e.getCause();
                Throwable th = e;
                if (cause != null) {
                    th = e.getCause();
                }
                InterfaceC0986Su A08 = this.A04.A08();
                int i = AbstractC0987Sv.A01;
                C0988Sw c0988Sw = new C0988Sw(th);
                String rewardUrl6 = A05(23, 11, 50);
                A08.AAy(rewardUrl6, i, c0988Sw);
                return true;
            }
        }
        return false;
    }

    public final void A0K(C1376dL c1376dL, InterfaceC0821Mh interfaceC0821Mh, NU nu, boolean z, String str, String str2) {
        String A05;
        this.A0C.set(false);
        this.A04 = c1376dL;
        this.A01 = interfaceC0821Mh;
        this.A0A = nu.A02();
        this.A00 = nu.A00();
        this.A09 = str2;
        if (this.A0A != null) {
            String str3 = this.A0A;
            String A052 = A05(0, 1, 12);
            String[] strArr = A0F;
            if (strArr[7].length() == strArr[6].length()) {
                String[] strArr2 = A0F;
                strArr2[7] = "x5W";
                strArr2[6] = "dMK";
                A05 = str3.split(A052)[0];
            }
            throw new RuntimeException();
        }
        A05 = A05(0, 0, 100);
        this.A07 = A05;
        this.A03 = AbstractC0827Mo.A03(nu.A03(), this.A04);
        this.A03.A1H(str);
        this.A03.A1D(nu.A01().A06());
        if (this.A03.A1T()) {
            this.A08 = ((C1655hw) this.A03).A20();
        } else {
            this.A08 = ((AbstractC1657hy) this.A03).A25();
        }
        if (this.A03.A1Y()) {
            this.A05 = EnumC1044Vb.A08;
            if (this.A03.A1P()) {
                this.A04.A0F().AJ9(LT.A08);
            } else {
                this.A04.A0F().AJ9(LT.A0A);
            }
        } else {
            switch (this.A03.A0l()) {
                case 0:
                    this.A05 = EnumC1044Vb.A0H;
                    this.A04.A0F().AJ9(LT.A0D);
                    break;
                case 1:
                    this.A05 = EnumC1044Vb.A0G;
                    this.A04.A0F().AJ9(LT.A0C);
                    break;
                case 2:
                    this.A05 = EnumC1044Vb.A05;
                    this.A04.A0F().AJ9(LT.A05);
                    break;
                case 3:
                    this.A05 = EnumC1044Vb.A0F;
                    this.A04.A0F().AJ9(LT.A04);
                    break;
                case 4:
                    this.A05 = EnumC1044Vb.A0I;
                    this.A04.A0F().AJ9(LT.A0E);
                    break;
            }
        }
        if (U7.A0v(c1376dL)) {
            AbstractC0827Mo abstractC0827Mo = this.A03;
            String[] strArr3 = A0F;
            if (strArr3[4].charAt(19) != strArr3[0].charAt(19)) {
                String[] strArr4 = A0F;
                strArr4[4] = "c2SjyVfNFMTSQhwflPzyjFy3Fjr2snH4";
                strArr4[0] = "k4vT1WhZbJ1Mlr1eks5fTJscMmdnfo8D";
                if (abstractC0827Mo.A1T()) {
                    C1655hw c1655hw = (C1655hw) this.A03;
                    for (int A1u = c1655hw.A1u() - 1; A1u >= 0; A1u--) {
                        AbstractC1657hy A1x = c1655hw.A1x(A1u);
                        if (ML.A06(this.A04, ML.A01(c1376dL, A1x.A1C(), A1x.A25()), c1376dL.A0A())) {
                            this.A04.A0F().A4u();
                            c1655hw.A22(A1u);
                            return;
                        }
                    }
                    if (c1655hw.A1u() == 0) {
                        this.A01.AF7(this, AdError.NO_FILL);
                        return;
                    }
                } else if (ML.A06(this.A04, ML.A01(c1376dL, nu.A03(), ((AbstractC1657hy) this.A03).A25()), c1376dL.A0A())) {
                    this.A04.A0F().A4u();
                    this.A01.AF7(this, AdError.NO_FILL);
                    return;
                }
            }
            throw new RuntimeException();
        }
        this.A02 = new C0822Mi(this.A0B, this, interfaceC0821Mh);
        A07();
        A0D(z);
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final String A7G() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final boolean AJa() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void onDestroy() {
        A08();
    }
}
