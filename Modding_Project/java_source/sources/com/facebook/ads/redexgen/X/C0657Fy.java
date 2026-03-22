package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* renamed from: com.facebook.ads.redexgen.X.Fy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0657Fy extends FrameLayout implements InterfaceC1106Xo {
    public static byte[] A0L;
    public static String[] A0M = {"2u2dP7fJh3RTJE0f5j", "V84xfC9vRBWBw28ag3Wa", "AJ9OWsf0IOCB9JkMwpi03POlIdxFWB0O", "t4KHUJW6pNylT", "agpCzVGtSfjd9ImL9ArnGOWeGltiI7KT", "yQxi0n265GvpKMbNVeZVKXQg4YYx4N", "9gQlnw56", "rIoCFSW2UJYE3I7OlTOsSCWVSaoSra"};
    public static final RelativeLayout.LayoutParams A0N;
    public static final int A0O;
    public static final int A0P;
    public int A00;
    public int A01;
    public int A02;
    public C1178a8 A03;
    public AbstractC0701Hr A04;
    public C1373dI A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final C1655hw A0A;
    public final R6 A0B;
    public final SF A0C;
    public final C1376dL A0D;
    public final US A0E;
    public final C1017Ua A0F;
    public final XC A0G;
    public final AbstractC1104Xm A0H;
    public final InterfaceC1105Xn A0I;
    public final YY A0J;
    public final ArrayList<C1321cR> A0K;

    public static String A0B(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 100);
        }
        return new String(copyOfRange);
    }

    public static void A0G() {
        A0L = new byte[]{-103, -24, -33, -103, -1, 34, -34};
    }

    static {
        A0G();
        A0N = new RelativeLayout.LayoutParams(-1, -1);
        A0O = (int) (AbstractC1077Wl.A02 * 48.0f);
        A0P = (int) (AbstractC1077Wl.A02 * 64.0f);
    }

    public C0657Fy(C1376dL c1376dL, YY yy, US us, C1655hw c1655hw, SF sf, InterfaceC1105Xn interfaceC1105Xn) {
        super(c1376dL);
        FrameLayout.LayoutParams layoutParams;
        this.A0K = new ArrayList<>();
        this.A09 = false;
        this.A07 = false;
        this.A08 = false;
        this.A06 = true;
        this.A02 = 1;
        this.A00 = 0;
        this.A01 = 0;
        this.A0B = new G1(this);
        this.A0D = c1376dL;
        this.A0J = yy;
        this.A0E = us;
        this.A0A = c1655hw;
        this.A0C = sf;
        this.A0I = interfaceC1105Xn;
        this.A0F = new C1017Ua(this.A0A.A1x(0).A25(), this.A0E);
        this.A0G = new XC(this);
        this.A0G.A05(XB.A02);
        this.A05 = new C1373dI(this.A0D, this.A0J, this.A0A.A1A(), interfaceC1105Xn);
        this.A0H = A05();
        if (this.A0A.A1U()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(A0P, A0O, 0, 0);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-1, this.A0H.getToolbarHeight());
        }
        addView(this.A0H, layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00bf, code lost:
        if (r4.A1I() != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c1, code lost:
        r6.A0H.setToolbarActionMode(0);
        r6.A0D.A0F().A4p();
        r6.A04.A1D();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d5, code lost:
        return 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e6, code lost:
        if (r4.A1I() != false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int A00() {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0657Fy.A00():int");
    }

    private int A01(int i) {
        if (this.A0A.A26()) {
            C1655hw c1655hw = this.A0A;
            String[] strArr = A0M;
            if (strArr[0].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[5] = "SFVCTE3Hv2F6eV4jkYzgVN3BuZvLlt";
            strArr2[7] = "be2ILDbetBMqGPrAeiZBpkZxeTc1wp";
            if (i < c1655hw.A21().size() && i >= 0) {
                return this.A0A.A21().get(i).intValue();
            }
        }
        return this.A0A.A0m();
    }

    public static /* synthetic */ int A02(C0657Fy c0657Fy, int i) {
        int i2 = c0657Fy.A01 + i;
        c0657Fy.A01 = i2;
        return i2;
    }

    private AbstractC1104Xm A05() {
        AbstractC1104Xm c0856Nr;
        if (!this.A0A.A1U()) {
            c0856Nr = new FullScreenAdToolbar(this.A0D, this.A0I, this.A0F, 2, -1, false);
        } else {
            c0856Nr = new C0856Nr(this.A0D, this.A0I, this.A0F, 2);
        }
        c0856Nr.setFullscreen(true);
        c0856Nr.setToolbarListener(new C0658Fz(this));
        return c0856Nr;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.facebook.ads.redexgen.X.AbstractC0701Hr A0A(boolean r33, int r34) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0657Fy.A0A(boolean, int):com.facebook.ads.redexgen.X.Hr");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C() {
        int A00 = A00();
        if (A00 != 0) {
            this.A0D.A0F().A4q(A00);
        }
    }

    private void A0D() {
        if (this.A00 > 0 && !TextUtils.isEmpty(this.A0A.A1x(this.A00 - 1).A25())) {
            US us = this.A0E;
            String A25 = this.A0A.A1x(this.A00 - 1).A25();
            C1159Zp A03 = new C1159Zp().A03(this.A04 != null ? this.A04.getAdViewabilityChecker() : null);
            AbstractC0701Hr abstractC0701Hr = this.A04;
            String[] strArr = A0M;
            if (strArr[6].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[2] = "pDlFeLBfyToKKboIUgGc0hC9I32LVeJD";
            strArr2[4] = "3B6yIVnUpbF0PBycHqRFA1bh2UEjPzxQ";
            us.AAt(A25, A03.A02(abstractC0701Hr != null ? this.A04.getTouchDataRecorder() : null).A05());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E() {
        if (this.A0H.getToolbarActionMode() == 8) {
            AbstractC1104Xm abstractC1104Xm = this.A0H;
            String[] strArr = A0M;
            if (strArr[2].charAt(19) == strArr[4].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[2] = "ALooRHp0AOPErSNB2N5ax0GYeQeSWGkg";
            strArr2[4] = "Jojrpwo5bfgl2L1NDhbRQaPRUafbLI0W";
            abstractC1104Xm.setToolbarActionMode(2);
        }
        int i = this.A00 - 1;
        if (this.A0A.A27(i)) {
            AbstractC1657hy A1x = this.A0A.A1x(i);
            AbstractC1104Xm abstractC1104Xm2 = this.A0H;
            String[] strArr3 = A0M;
            String str = strArr3[2];
            String str2 = strArr3[4];
            int charAt = str.charAt(19);
            int index = str2.charAt(19);
            if (charAt == index) {
                throw new RuntimeException();
            }
            String[] strArr4 = A0M;
            strArr4[0] = "SYmrADrPyc9xENaNAh";
            strArr4[1] = "82lRVJ32R9K27GgHKLOx";
            abstractC1104Xm2.setProgressSpinnerInvisible(!A1x.A2J());
            A1x.A2B(false);
            A1x.A20().A0M(-1);
        }
    }

    private void A0F() {
        this.A0D.A0F().A4o();
        this.A07 = true;
        this.A03 = new C1178a8(this.A0D, this.A0A, this.A0E, this.A0I, this.A0H.getToolbarHeight(), this.A02);
        C1321cR c1321cR = null;
        Iterator<C1321cR> it = this.A0K.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C1321cR next = it.next();
            if (next.A00 == C1321cR.A06) {
                c1321cR = next;
                break;
            }
        }
        if (c1321cR != null) {
            A0L(this.A03, c1321cR);
        } else {
            boolean isEmpty = this.A0K.isEmpty();
            String[] strArr = A0M;
            if (strArr[5].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[5] = "8vyvfMLKM55zirtuKFzVGEL0IOO7sZ";
            strArr2[7] = "ODibu6eYSRbNQzGgUnvrLUj83p1fS4";
            if (!isEmpty) {
                A0L(this.A03, this.A0K.get(0));
            }
        }
        A0U(true);
        if (this.A0H instanceof FullScreenAdToolbar) {
            ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(null);
        }
        if (this.A04 != null) {
            XP.A0H(this.A04);
            this.A04.A1B();
            this.A04 = null;
        }
        XP.A0H(this.A03);
        XP.A0E(1102, this.A03);
        addView(this.A03, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    private final void A0H() {
        this.A0G.A05(XB.A03);
    }

    private synchronized void A0I() {
        this.A0I.A4b(this.A0J.A6d());
        this.A05.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J(float f) {
        float seenCurrentPosMS;
        float A01 = A01(this.A00 - 1);
        float seenCurrentPosMS2 = (this.A0A.A26() ? 0 : this.A01) + f;
        if (A01 > 0.0f) {
            seenCurrentPosMS = seenCurrentPosMS2 / A01;
        } else {
            seenCurrentPosMS = 1.0f;
        }
        if (this.A06 && this.A0A.A26()) {
            this.A06 = false;
            this.A0H.setProgressImmediate(0.0f);
        }
        float unskippableSeconds = 100.0f * seenCurrentPosMS;
        this.A0H.setProgress(unskippableSeconds);
        if (seenCurrentPosMS >= 1.0f && !this.A09) {
            setUnskippableSecondsComplete(true);
            this.A0H.setToolbarActionMode(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0K(int i) {
        this.A0D.A0F().A4l(i);
        setUnskippableSecondsComplete(true);
        A0I();
        A0D();
        this.A0I.A4b(this.A0J.A7o());
    }

    private void A0L(ViewGroup viewGroup, C1321cR c1321cR) {
        if (c1321cR.A00 == C1321cR.A06 && c1321cR.A03 != null) {
            AbstractC1197aR.A00(this.A0D, viewGroup, c1321cR.A03);
        } else {
            int i = c1321cR.A01;
            String[] strArr = A0M;
            if (strArr[0].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[5] = "6Qw2GncBlIK9qwoUetngT0jkAnHCQL";
            strArr2[7] = "iVxLMdIUnWJTFKOlNtOcmcGRsmSn6x";
            XP.A0K(viewGroup, i);
        }
        this.A0H.setFullscreen(c1321cR.A05);
        this.A0H.A0A(c1321cR.A02, c1321cR.A04);
    }

    private void A0M(AbstractC1657hy abstractC1657hy) {
        if (this.A0H instanceof FullScreenAdToolbar) {
            if (A0Z(abstractC1657hy) && this.A02 == 2) {
                ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(abstractC1657hy.A23());
            } else {
                ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(null);
            }
        }
    }

    private final void A0N(R0 r0) {
        r0.A0A(this.A0B);
        int i = r0.A05().getResources().getConfiguration().orientation;
        this.A02 = i;
        A0V(this.A0A.A23(), i);
        A0H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A0U(boolean r7) {
        /*
            r6 = this;
            boolean r0 = r6.A0X()
            r4 = 0
            r3 = 1
            if (r0 == 0) goto La5
            boolean r0 = r6.A0W()
            if (r0 != 0) goto La5
            boolean r5 = r6.A0Y()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0657Fy.A0M
            r0 = 0
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto Lad
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0657Fy.A0M
            java.lang.String r1 = "abX2oERzf98UggHhJlwc5xOu8ehA434Q"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "mcfqurarHSiAo6r6yfyhrMyo3UPU5OrE"
            r0 = 4
            r2[r0] = r1
            if (r5 != 0) goto La5
            r1 = 1
        L33:
            boolean r0 = r6.A0W()
            if (r0 != 0) goto L71
            if (r1 != 0) goto L71
            r6.setUnskippableSecondsComplete(r3)
            if (r7 == 0) goto L4d
            com.facebook.ads.redexgen.X.Xm r3 = r6.A0H
            r2 = 0
            r1 = 0
            r0 = 85
            java.lang.String r0 = A0B(r2, r1, r0)
            r3.setToolbarActionMessage(r0)
        L4d:
            com.facebook.ads.redexgen.X.Xm r3 = r6.A0H
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0657Fy.A0M
            r0 = 6
            r1 = r2[r0]
            r0 = 3
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto La7
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0657Fy.A0M
            java.lang.String r1 = "6hDdRvQvhZI2wvmWyf"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "dfELTL2TgrvtcbRt37j2"
            r0 = 1
            r2[r0] = r1
            r3.setToolbarActionMode(r4)
        L70:
            return
        L71:
            com.facebook.ads.redexgen.X.Xm r4 = r6.A0H
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0657Fy.A0M
            r0 = 0
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L95
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0657Fy.A0M
            java.lang.String r1 = "JMDiVFyp4yY8WixxdBAiYWzIdfNljSYZ"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "DEcXsd0kn675y00aYcKTg0COR2JcG3d3"
            r0 = 4
            r2[r0] = r1
            r4.setToolbarActionMode(r3)
            goto L70
        L95:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0657Fy.A0M
            java.lang.String r1 = "uCb48oA3"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "eCwSqnipc7icS"
            r0 = 3
            r2[r0] = r1
            r4.setToolbarActionMode(r3)
            goto L70
        La5:
            r1 = 0
            goto L33
        La7:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        Lad:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0657Fy.A0U(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0V(boolean z, int i) {
        if (this.A04 != null) {
            this.A04.A1B();
            this.A04.removeAllViews();
            XP.A0H(this.A04);
        }
        if (this.A0A.A1U()) {
            XP.A0H(this.A0H);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(A0P, A0O, 0, 0);
            addView(this.A0H, layoutParams);
        }
        if (!A0W()) {
            setUnskippableSecondsComplete(true);
            if (A0X()) {
                A0F();
                return;
            }
            A0K(1);
            String[] strArr = A0M;
            if (strArr[6].length() != strArr[3].length()) {
                String[] strArr2 = A0M;
                strArr2[5] = "b6hirdpqFqEpTGRF7TvzfLNB23PEQW";
                strArr2[7] = "Y5Eb3FssofDa3ImZpKtnPvm2BrdUNN";
                return;
            }
        } else {
            if (this.A0A.A26()) {
                setUnskippableSecondsComplete(false);
                this.A0H.setProgressImmediate(0.0f);
            }
            SJ A01 = this.A0D.A01();
            AbstractC1657hy A1x = this.A0A.A1x(this.A00);
            String[] strArr3 = A0M;
            if (strArr3[6].length() != strArr3[3].length()) {
                String[] strArr4 = A0M;
                strArr4[0] = "SeXhCWKDArfU2xbUHE";
                strArr4[1] = "icHjaKCGoPIgSTYVXjnx";
                boolean isLoaded = A01.AAD(A1x.A25(), this.A0A.A1y());
                if (!isLoaded) {
                    this.A0D.A0F().A4m();
                    A0K(2);
                    return;
                }
                AbstractC0701Hr A0A = A0A(z, i);
                this.A04 = A0A;
                AbstractC0701Hr abstractC0701Hr = this.A04;
                boolean isLoaded2 = this.A09;
                abstractC0701Hr.A1F(isLoaded2);
                setupToolbarForAd(A0A);
                addView(this.A04, 0, A0N);
                this.A00++;
                this.A04.A1E();
                return;
            }
        }
        throw new RuntimeException();
    }

    private boolean A0W() {
        return this.A00 < this.A0A.A1u();
    }

    private boolean A0X() {
        return this.A0A.A1t() == 2;
    }

    private final boolean A0Y() {
        return this.A07;
    }

    public static boolean A0Z(AbstractC1657hy abstractC1657hy) {
        return TextUtils.isEmpty(abstractC1657hy.A20().A0H().A09());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        this.A0I.A3x(this, A0N);
        A0N(r0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AEV(boolean z) {
        if (this.A04 != null) {
            this.A04.A1G(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AF0(boolean z) {
        if (this.A04 != null) {
            this.A04.A1H(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AIB(Bundle bundle) {
    }

    public AbstractC0701Hr getContentView() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public String getCurrentClientToken() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.A02 = configuration.orientation;
        if (this.A04 != null) {
            this.A04.onConfigurationChanged(configuration);
        }
        if (this.A04 instanceof AnonymousClass50) {
            A0L(this.A04, this.A04.getFullScreenAdStyle());
            A0M(this.A04.getAdDataBundle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void onDestroy() {
        if (this.A04 != null) {
            this.A04.A1B();
            this.A04 = null;
        }
        this.A0D.A01().A4r(this.A0A.A1y());
        this.A0G.A03();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC1105Xn interfaceC1105Xn) {
    }

    public void setServerSideRewardHandler(C1373dI c1373dI) {
        this.A05 = c1373dI;
    }

    public void setUnskippableSecondsComplete(boolean z) {
        this.A09 = z;
        if (this.A04 != null) {
            this.A04.A1F(this.A09);
        }
    }

    private void setupToolbarForAd(AbstractC0701Hr abstractC0701Hr) {
        if (this.A0H == null) {
            return;
        }
        this.A06 = true;
        AbstractC1657hy A1x = this.A0A.A1x(this.A00);
        int A01 = A01(this.A00);
        if (this.A0H instanceof FullScreenAdToolbar) {
            ((FullScreenAdToolbar) this.A0H).A0D(this.A0D, A1x.A1t());
            ((FullScreenAdToolbar) this.A0H).A0C(A1x.A23(), A1x.A25(), A01);
        } else if (this.A0H instanceof C0856Nr) {
            ((C0856Nr) this.A0H).setInitialUnskippableSeconds(A01);
        }
        C1321cR fullScreenAdStyle = abstractC0701Hr.getFullScreenAdStyle();
        A0L(abstractC0701Hr, fullScreenAdStyle);
        this.A0K.add(fullScreenAdStyle);
        this.A0H.setToolbarActionMessage(A0B(4, 3, 90) + (this.A00 + 1) + A0B(0, 4, 21) + this.A0A.A1u());
        if (this.A08) {
            this.A0H.setToolbarActionMode(1);
        }
        A0M(A1x);
    }
}
