package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Log;
import android.widget.LinearLayout;
import androidx.media3.common.PlaybackException;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.7L  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C7L<NativeViewabilityLogger> implements InterfaceC1696id {
    public static byte[] A0J;
    public static String[] A0K = {"NhwOmA8H17maQr2Thm3XPPVG1xwEsLhZ", "rranxCubAcBFDRhPr2LDrxoK3htxcyeL", "LmhV8", "ZLGOK7uKxyyp5W3sNEqoBEODv8zXcPE1", "dNK0bBZMrDk2YJmjrhSzlk1RMTFmUAsD", "q33l17MPfjO0fzYSahPh7EE95Ux5x03H", "4VfBn9Mh4W5rafl7A4va0uDeREUgOp63", "NLrbv196ww605txiYhOndsfSQjY"};
    public static final String A0L;
    public MX A00;
    public MY A01;
    public C1671iE A02;
    public AnonymousClass78 A03;
    public C6M A04;
    public US A05;
    public V4 A06;
    public InterfaceC1151Zh A08;
    public C0770Ki A09;
    public C5G A0A;
    public AbstractC1448eW A0B;
    public C1449eX A0C;
    public String A0E;
    public final String A0I = UUID.randomUUID().toString();
    public boolean A0F = false;
    public boolean A0G = false;
    public boolean A0H = false;
    public XH A07 = new XH();
    public Boolean A0D = false;

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A0J = new byte[]{Ascii.FS, 40, 38, -25, Ascii.US, Ascii.SUB, Ascii.FS, Ascii.RS, Ascii.ESC, 40, 40, 36, -25, Ascii.SUB, Ascii.GS, 44, -25, Ascii.ESC, Ascii.SUB, 39, 39, Ascii.RS, 43, -25, Ascii.FS, 37, 34, Ascii.FS, 36, Ascii.RS, Ascii.GS, -15, -30, -11, -15, -84, -27, -15, -22, -23, -21, -22, -36, -93, -82};
    }

    static {
        A0B();
        A0L = C7L.class.getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    public void A0A() {
        if (this.A00 != null && this.A0A != null && this.A03 != null && this.A03.A1Y()) {
            this.A00.ACc(this, this.A0A);
        }
        if (this.A00 != null) {
            boolean z = this.A0F;
            if (A0K[1].charAt(21) == 'I') {
                throw new RuntimeException();
            }
            String[] strArr = A0K;
            strArr[6] = "pcQhCrMOoUvf1wSUiS8eXhj7G6bioSrh";
            strArr[4] = "JWZBC7ZhFf7k7YrTz5pa22tV9NT1Mc4w";
            if (z && (this.A0G || !this.A0H)) {
                MX mx = this.A00;
                if (A0K[3].charAt(25) != 'G') {
                    A0K[3] = "irPj8aYnTZH6GsdLYSbTyVfXBLXHQnPh";
                    mx.ACc(this, this.A09);
                } else {
                    A0K[3] = "5PA9hoTjlgD01Tr6eTkR8jxCvDfXc2RO";
                    mx.ACc(this, this.A09);
                }
            }
        }
        this.A04.A0F().A4G(this.A00 != null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    public void A0C(int i, TF tf) {
        C1692iZ c1692iZ = new C1692iZ(this);
        this.A0A = new C5G(this.A04, this.A05, c1692iZ, this.A03, A08(0, 31, 79), 2, this.A07);
        this.A0B = new C1687iU(this);
        this.A0C = new C1449eX(this.A0A, tf.A04(), tf.A09(), true, new WeakReference(this.A0B), this.A04);
        this.A0C.A0W(this.A03.A0i());
        this.A0C.A0X(this.A03.A0j());
        this.A0A.setVisibility(0);
        this.A04.getResources();
        this.A0A.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        this.A0A.AJS();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    private void A0F(TF tf, JSONObject jSONObject, V4 v4) {
        this.A0G = false;
        final C1673iG A00 = C1673iG.A00(this.A04, jSONObject);
        this.A0E = A00.A7G();
        if (ML.A06(this.A04, A00, this.A05)) {
            this.A04.A0F().A4u();
            this.A00.ADj(this, V1.A00(AdErrorType.NO_FILL));
            return;
        }
        this.A08 = new AbstractC0781Kt() { // from class: com.facebook.ads.redexgen.X.7M
            public static byte[] A02;
            public static String[] A03 = {"dvnbyrX9L5Wlup6c2JnWkpTYBAz3QIun", "ITj", "KqeTcLSx6Zay5vtxcnHqZ", "bGeXa7nDz1byFpBCq22utpLnb", "UYph9iPsD3jee8BOLuPQ6r57rjKJpmVb", "DfaYbRSw6X21pxGApii0qweOJ64z1eNB", "52vckdype7aS5lLwU46sLHF0XTMQAze7", "uuBWL9In1wjj"};

            public static String A00(int i, int i2, int i3) {
                byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                    copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 105);
                }
                return new String(copyOfRange);
            }

            public static void A01() {
                A02 = new byte[]{67, 116, 116, 105, 116, 38, 99, 126, 99, 101, 115, 114, 111, 104, 97, 38, 103, 101, 114, 111, 105, 104, 119, 117, 120, 120, 113, 102, SignedBytes.MAX_POWER_OF_TWO, 109, 100, 113, 116, 112, 115, 118, 81, 74, 77, 85, 81, 65, 109, SignedBytes.MAX_POWER_OF_TWO};
            }

            static {
                A01();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1151Zh
            public final void ACO() {
                boolean z;
                C7L.this.A0G = true;
                z = C7L.this.A0H;
                if (z) {
                    C7L.this.A0A();
                }
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC0781Kt, com.facebook.ads.redexgen.X.InterfaceC1151Zh
            public final void ACj(String str, Map<String, String> map) {
                C6M c6m;
                String str2;
                C6M c6m2;
                US us;
                AnonymousClass78 anonymousClass78;
                AnonymousClass78 anonymousClass782;
                N3 A21;
                String str3;
                C6M c6m3;
                MX mx;
                MX mx2;
                c6m = C7L.this.A04;
                c6m.A0F().A4H();
                Uri A002 = WQ.A00(str);
                map.put(A00(22, 10, 125), AdPlacementType.BANNER.name());
                str2 = C7L.this.A0I;
                map.put(A00(36, 8, 77), str2);
                c6m2 = C7L.this.A04;
                us = C7L.this.A05;
                String A7G = A00.A7G();
                anonymousClass78 = C7L.this.A03;
                if (anonymousClass78 == null) {
                    A21 = null;
                } else {
                    C7L c7l = C7L.this;
                    if (A03[7].length() == 4) {
                        throw new RuntimeException();
                    }
                    A03[2] = "7FoTEC4l3Pv3ceMVIqf";
                    anonymousClass782 = c7l.A03;
                    A21 = anonymousClass782.A21();
                }
                MH adAction = MI.A00(c6m2, us, A7G, A002, map, A21);
                ME me2 = ME.A09;
                if (adAction != null) {
                    try {
                        c6m3 = C7L.this.A04;
                        c6m3.A0F().A4E();
                        me2 = adAction.A0G(null);
                    } catch (Exception e) {
                        str3 = C7L.A0L;
                        Log.e(str3, A00(0, 22, 111), e);
                    }
                }
                if (A00(32, 4, 123).equals(A002.getScheme()) && MI.A04(A002.getAuthority())) {
                    mx = C7L.this.A00;
                    if (mx != null && me2 != ME.A06) {
                        mx2 = C7L.this.A00;
                        mx2.ACb(C7L.this);
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1151Zh
            public final void ADW() {
                C6M c6m;
                C1671iE c1671iE;
                C1671iE c1671iE2;
                C1671iE c1671iE3;
                c6m = C7L.this.A04;
                InterfaceC1725j9 A0F = c6m.A0F();
                c1671iE = C7L.this.A02;
                A0F.A4I(c1671iE != null);
                c1671iE2 = C7L.this.A02;
                if (c1671iE2 != null) {
                    c1671iE3 = C7L.this.A02;
                    c1671iE3.A03();
                }
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC0781Kt, com.facebook.ads.redexgen.X.InterfaceC1151Zh
            public final void AET() {
                C6M c6m;
                C1671iE c1671iE;
                c6m = C7L.this.A04;
                c6m.A0F().A4K();
                c1671iE = C7L.this.A02;
                c1671iE.A09();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC1151Zh
            public final void AFw() {
            }
        };
        this.A09 = new C0770Ki(this.A04, new WeakReference(this.A08), tf.A04(), A7G());
        this.A09.A0L(tf.A07(), tf.A08());
        MS impressionHelper = new C1686iT(this);
        this.A02 = new C1671iE(this.A04, this.A05, this.A09, this.A09.getViewabilityChecker(), impressionHelper, v4);
        this.A02.A0A(A00);
        this.A09.loadDataWithBaseURL(AbstractC1154Zk.A01(AdInternalSettings.getUrlPrefix()), A00.A04(), A08(31, 9, 19), A08(40, 5, 12), null);
        this.A0F = true;
        A0A();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0051, code lost:
        if (com.facebook.ads.redexgen.X.U7.A2A(r10.A04) != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005d, code lost:
        if (com.facebook.ads.redexgen.X.C0946Rf.A0A(r10.A03.A1C()) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005f, code lost:
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
        if (com.facebook.ads.redexgen.X.U7.A2A(r10.A04) != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
        r0 = 0;
     */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0G(com.facebook.ads.redexgen.X.V4 r11, com.facebook.ads.redexgen.X.TF r12) {
        /*
            r10 = this;
            com.facebook.ads.redexgen.X.78 r0 = r10.A03
            if (r0 == 0) goto L23
            com.facebook.ads.redexgen.X.US r3 = r10.A05
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7L.A0K
            r0 = 1
            r1 = r1[r0]
            r0 = 21
            char r1 = r1.charAt(r0)
            r0 = 73
            if (r1 == r0) goto La7
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7L.A0K
            java.lang.String r1 = "0asQ5nS3mEJJFXqECkaJp8czAINd5ojj"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "wkfCN0fAVUFan65EWCqz3ffd3K2ZXjjS"
            r0 = 4
            r2[r0] = r1
            if (r3 != 0) goto L24
        L23:
            return
        L24:
            int r3 = r11.A03()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7L.A0K
            r0 = 3
            r1 = r1[r0]
            r0 = 25
            char r1 = r1.charAt(r0)
            r0 = 71
            if (r1 == r0) goto L66
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7L.A0K
            java.lang.String r1 = "7AAzPingpmVfFCqSXKHauNoNKo9Xv93Z"
            r0 = 5
            r2[r0] = r1
            float r1 = (float) r3
            android.content.res.Resources r0 = android.content.res.Resources.getSystem()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r0 = r0.density
            float r1 = r1 * r0
            int r1 = (int) r1
            com.facebook.ads.redexgen.X.6M r0 = r10.A04
            boolean r0 = com.facebook.ads.redexgen.X.U7.A2A(r0)
            if (r0 == 0) goto L7c
        L53:
            com.facebook.ads.redexgen.X.78 r0 = r10.A03
            org.json.JSONObject r0 = r0.A1C()
            boolean r0 = com.facebook.ads.redexgen.X.C0946Rf.A0A(r0)
            if (r0 == 0) goto L7c
            r0 = 1
        L60:
            if (r0 != 0) goto L7e
            r10.A0C(r1, r12)
            return
        L66:
            float r1 = (float) r3
            android.content.res.Resources r0 = android.content.res.Resources.getSystem()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r0 = r0.density
            float r1 = r1 * r0
            int r1 = (int) r1
            com.facebook.ads.redexgen.X.6M r0 = r10.A04
            boolean r0 = com.facebook.ads.redexgen.X.U7.A2A(r0)
            if (r0 == 0) goto L7c
            goto L53
        L7c:
            r0 = 0
            goto L60
        L7e:
            com.facebook.ads.redexgen.X.6M r0 = r10.A04
            com.facebook.ads.redexgen.X.SF r4 = new com.facebook.ads.redexgen.X.SF
            r4.<init>(r0)
            r2 = r10
            com.facebook.ads.redexgen.X.Rf r3 = new com.facebook.ads.redexgen.X.Rf
            com.facebook.ads.redexgen.X.78 r0 = r10.A03
            org.json.JSONObject r5 = r0.A1C()
            com.facebook.ads.redexgen.X.78 r0 = r10.A03
            java.lang.String r6 = r0.A0v()
            com.facebook.ads.redexgen.X.78 r0 = r10.A03
            java.lang.String r7 = r0.A17()
            com.facebook.ads.redexgen.X.ic r9 = new com.facebook.ads.redexgen.X.ic
            r9.<init>(r10, r1, r12, r2)
            r8 = 1
            r3.<init>(r4, r5, r6, r7, r8, r9)
            r3.A0B()
            return
        La7:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7L.A0G(com.facebook.ads.redexgen.X.V4, com.facebook.ads.redexgen.X.TF):void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.MP
    public final String A7G() {
        return this.A0E;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.MP
    public final AdPlacementType A8c() {
        if (U7.A19(this.A04)) {
            V4 v4 = this.A06;
            String[] strArr = A0K;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A0K[0] = "gRyzGCsQg6apk2eHBZ3N290V4KDgGwY2";
            if (v4 != null && this.A06 == V4.A09) {
                return AdPlacementType.MEDIUM_RECTANGLE;
            }
        }
        return AdPlacementType.BANNER;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1696id
    public final void AAk(C6M c6m, US us, V4 v4, MX mx, JSONObject jSONObject, TF tf) {
        c6m.A0F().A4F();
        this.A04 = c6m;
        this.A05 = us;
        this.A00 = mx;
        this.A06 = v4;
        this.A0H = U7.A1j(this.A04.getApplicationContext());
        this.A03 = AnonymousClass78.A00(jSONObject, this.A04);
        if (this.A03.A1Y()) {
            A0G(v4, tf);
        } else {
            A0F(tf, jSONObject, v4);
        }
        this.A01 = new MY(this.A04, this.A0I, this, mx);
        this.A01.A02();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.MP
    public final boolean AJa() {
        return true;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override // com.facebook.ads.redexgen.X.MP
    public final void onDestroy() {
        this.A04.A0F().A4D(this.A09 != null);
        if (this.A09 != null) {
            this.A09.destroy();
            this.A09 = null;
            this.A08 = null;
        }
        if (this.A01 != null) {
            this.A01.A03();
        }
    }
}
