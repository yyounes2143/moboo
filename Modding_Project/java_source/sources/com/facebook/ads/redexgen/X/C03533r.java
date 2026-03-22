package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.io.encoding.Base64;
/* renamed from: com.facebook.ads.redexgen.X.3r  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C03533r extends G2 {
    public static byte[] A0U;
    public static String[] A0V = {"", "YtQm2387uXJs", "MlRkJczYYxJD4Wwp0SHW4B9CEOUSnddR", "Rw6HEQ3C6e1KGOQ0gaz0SQKaqXM6WP6s", "SVsTOXJGQLTRlrov45UN9nTiloFn5X8Y", "Icuwm310fXqoj23c8ds7ElfBFjsMoXLO", "Pjvv6hw4WD5DyhE4XvR8T7jl", "KYBHBzoeYb2kbTAqfKJN2TrMGpQFpmBq"};
    public int A00;
    public UZ A01;
    public AbstractC1104Xm A02;
    public AbstractC1210ae A03;
    public InterfaceC1335cf A04;
    public C1373dI A05;
    public EnumC1392db A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public final Handler A0G;
    public final View A0H;
    public final R6 A0I;
    public final InterfaceC1334ce A0J;
    public final EG A0K;
    public final E1 A0L;
    public final C03443i A0M;
    public final DX A0N;
    public final DV A0O;
    public final DR A0P;
    public final DP A0Q;
    public final DN A0R;
    public final DM A0S;
    public final C0577Cw A0T;

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0U, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(copyOfRange);
    }

    public static void A0G() {
        A0U = new byte[]{Ascii.ETB, 63, 41, 47, 63, 17, 103, 96, 122, 107, 124, 125, 122, 103, 122, 103, 111, 98, Base64.padSymbol, 42, 56, 46, Base64.padSymbol, 43, 42, 43, Ascii.DLE, 57, 38, 43, 42, 32, 49, 41, 43, 50};
    }

    static {
        A0G();
    }

    public C03533r(C1376dL c1376dL, YY yy, US us, AbstractC1657hy abstractC1657hy, SF sf, InterfaceC1105Xn interfaceC1105Xn) {
        super(c1376dL, yy, us, abstractC1657hy, sf, interfaceC1105Xn);
        this.A0I = new FO(this);
        this.A0R = new DN() { // from class: com.facebook.ads.redexgen.X.4G
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DO r3) {
                AbstractC1210ae abstractC1210ae;
                C03533r.this.A0E = true;
                abstractC1210ae = C03533r.this.A03;
                abstractC1210ae.A1I(r3);
            }
        };
        this.A0Q = new DP() { // from class: com.facebook.ads.redexgen.X.4F
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DQ dq) {
                C03533r.this.A0F = true;
                C03533r.this.A0c();
            }
        };
        this.A0P = new DR() { // from class: com.facebook.ads.redexgen.X.4E
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(C3Y c3y) {
            }
        };
        this.A0S = new DM() { // from class: com.facebook.ads.redexgen.X.42
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(C3Q c3q) {
                AbstractC1210ae abstractC1210ae;
                int i;
                C03533r.this.A0Q(c3q);
                C03533r.this.A0P(c3q);
                abstractC1210ae = C03533r.this.A03;
                i = C03533r.this.A00;
                abstractC1210ae.A1J(c3q, i);
            }
        };
        this.A0N = new DX() { // from class: com.facebook.ads.redexgen.X.3t
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(C03393d c03393d) {
                E1 e1;
                C03533r c03533r = C03533r.this;
                e1 = C03533r.this.A0L;
                c03533r.A0O(c03393d, e1.getState() != EnumC1446eU.A06, false);
            }
        };
        this.A0O = new C03543s(this);
        boolean z = false;
        this.A0E = false;
        this.A0F = false;
        this.A0D = false;
        this.A0C = false;
        this.A0A = false;
        this.A00 = 0;
        this.A07 = false;
        this.A09 = false;
        this.A01 = UZ.A0c;
        this.A0G = new Handler(Looper.getMainLooper());
        this.A0J = new FN(this);
        this.A0L = new E1(super.A04);
        this.A0L.setFunnelLoggingHandler(super.A06);
        this.A0L.getEventBus().A03(this.A0R, this.A0Q, this.A0P, this.A0S, this.A0N, this.A0O);
        this.A0B = abstractC1657hy.A1k();
        this.A0M = new C03443i(super.A04, super.A05, this.A0L, super.A02.A25(), 0, 0, super.A02.A20().A0U(), null, null);
        if (U7.A1v(super.A04)) {
            this.A0K = new EG(super.A04, super.A05, this.A0L, super.A02.A25(), super.A02.A20().A0U(), this.A0M, null);
        } else {
            this.A0K = null;
        }
        this.A05 = new C1373dI(super.A04, super.A0A, super.A02.A1A(), interfaceC1105Xn);
        if (!A0j()) {
            this.A0H = new D1(super.A04, super.A06);
        } else {
            this.A0H = new D0(super.A04, super.A06);
        }
        int i = -1;
        i = (super.A02.A1Z() || A0j()) ? A02(super.A02) * 1000 : i;
        if (!A0j()) {
            this.A0T = new C0577Cw(super.A04, i);
        } else {
            this.A0T = new C0577Cw(super.A04, i, C0577Cw.A0D);
        }
        if ((this.A0B && !super.A02.A1i()) || super.A02.A1a()) {
            this.A0T.setVisibility(8);
        }
        if (super.A02.A20().A0U()) {
            this.A0T.setShouldClearAnimationWhenVideoCompleted(false);
        }
        A0F();
        String A09 = super.A02.A20().A0H().A09();
        E1 e1 = this.A0L;
        String videoUrl = super.A03.A0T(A09);
        e1.setVideoURI(videoUrl);
        A0D();
        int unskippableSeconds = super.A02.A20().A0H().A04();
        if (U7.A2J(super.A04)) {
            this.A0C = unskippableSeconds == 0;
        } else {
            this.A0C = unskippableSeconds <= 0;
        }
        if (super.A02.A20().A0S() && super.A02.A20().A0H().A03() > 0) {
            z = true;
        }
        this.A08 = z;
        C0837My colors = super.A02.A1z().A01();
        XP.A0K(this, colors.A08(true));
        if (U7.A2D(super.A04) || super.A02.A1Z()) {
            super.A08.setProgressSpinnerInvisible(true);
        }
        if (super.A02.A1l()) {
            super.A04.A0F().ADt();
        }
    }

    private float A00() {
        float A04 = super.A02.A20().A0H().A04();
        boolean isRV = super.A0A.A8d().equals(AdPlacementType.REWARDED_VIDEO.toString());
        if (A04 == -1.0f && isRV && super.A02.A1e()) {
            float videoDuration = this.A0L.getDuration();
            if (videoDuration <= 0.0f) {
                return 0.0f;
            }
            return videoDuration;
        } else if (!this.A0B) {
            float serverUnskippableSeconds = this.A0L.getDuration();
            return Math.min(1000.0f * A04, serverUnskippableSeconds);
        } else {
            return 1000.0f * A04;
        }
    }

    private int A01(int i, int i2, int i3) {
        int i4 = 0;
        if (this.A0B) {
            int i5 = this.A00;
            if (A0V[4].charAt(26) != 'F') {
                throw new RuntimeException();
            }
            String[] strArr = A0V;
            strArr[0] = "";
            strArr[1] = "GEJnt8SXHB7Z";
            i4 = i3 * i5;
        }
        int completedVideoCycleDuration = i / 1000;
        return (i2 - i4) - completedVideoCycleDuration;
    }

    public static int A02(AbstractC1657hy abstractC1657hy) {
        if (abstractC1657hy.A0v().equals(A0A(18, 14, 49))) {
            return abstractC1657hy.A20().A0H().A03();
        }
        if (abstractC1657hy.A0v().equals(A0A(6, 12, 112))) {
            return abstractC1657hy.A20().A0H().A04();
        }
        String[] strArr = A0V;
        if (strArr[7].charAt(8) != strArr[2].charAt(8)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0V;
        strArr2[0] = "";
        strArr2[1] = "oU1GMCkqMMy1";
        return 0;
    }

    private AbstractC1210ae A06(int i) {
        C1213ah A0N = new C1213ah(super.A04, super.A05, super.A09, super.A02, this.A0L, super.A0B, super.A07).A0K(super.A08.getToolbarHeight()).A0R(super.A08).A0J(i).A0L(this.A0H).A0T(this.A0T).A0Q(this.A02).A0N(super.A06);
        if (super.A02.A20().A0S() && U7.A1Y(super.A04) && super.A02.A20().A0L() != null) {
            A0N.A0P(getPackageInstallListener());
        }
        A0N.A0M(MI.A00(super.A04, super.A05, A0A(0, 0, 98), WQ.A00(super.A02.A20().A0J().A05()), new HashMap(), super.A02.A21()));
        C1214ai params = A0N.A0W();
        return AbstractC1211af.A00(params, null, true);
    }

    private void A0B() {
        if (!super.A02.A20().A0K().A03()) {
            this.A02 = new FullScreenAdToolbar(super.A04, super.A09, super.A06, 0, super.A02.A1t(), super.A02.A1j());
            this.A02.setFullscreen(true);
            this.A02.A0A(super.A02.A1z().A01(), KE.A05(super.A02));
            this.A02.setPageDetails(super.A02.A23(), super.A02.A25(), 0, super.A02.A24());
            this.A02.setPageDetailsVisible(false);
            this.A02.setToolbarListener(new C0644Fl(this));
            if (super.A02.A2K()) {
                this.A02.setOnClickListener(new View$OnClickListenerC1329cZ(this));
            }
        }
    }

    private void A0C() {
        this.A0L.postDelayed(new C0635Fc(this), U7.A0O(super.A04));
    }

    private void A0D() {
        this.A0L.postDelayed(new C0634Fb(this), U7.A0P(super.A04));
    }

    private void A0E() {
        this.A0C = true;
        super.A08.A07();
        if (this.A03 != null) {
            this.A03.A1E();
        }
    }

    private void A0F() {
        this.A0L.A0i(this.A0T);
        if (this.A0H instanceof InterfaceC1393dc) {
            this.A0L.A0i((InterfaceC1393dc) this.A0H);
        }
        if (!TextUtils.isEmpty(super.A02.A20().A0H().A08())) {
            C03252p c03252p = new C03252p(super.A04, A0j());
            this.A0L.A0i(c03252p);
            c03252p.setImage(super.A02.A20().A0H().A08());
        }
        if (!A0j()) {
            C2R c2r = new C2R(super.A04, true, super.A06);
            this.A0L.A0i(c2r);
            this.A0L.A0i(new D4(c2r, EnumC1407dr.A02, true));
        }
        this.A0L.A0i(new C2Y(super.A04));
    }

    private void A0H(UZ uz) {
        new C1017Ua(super.A02.A25(), super.A04.A0A()).A04(uz, null);
        super.A09.A4b(super.A0A.A6d());
        this.A05.A05();
        if (this.A03 instanceof C03915d) {
            ((C03915d) this.A03).A1Y();
        }
        if (!super.A02.A1i()) {
            this.A0G.postDelayed(new RunnableC1331cb(this), 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(UZ uz) {
        if (!this.A07) {
            this.A09 = true;
            this.A01 = uz;
            return;
        }
        A0H(uz);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0O(C03393d c03393d, boolean z, boolean z2) {
        if (this.A04 != null) {
            if (z) {
                super.A04.A0F().ADu();
            }
            super.A04.A0F().ADr();
            this.A04.AHo();
        } else if (this.A0D) {
        } else {
            if (!z && this.A08 && this.A0B) {
                this.A00++;
                this.A0L.A0h(EnumC1392db.A02, 20);
                return;
            }
            if (!this.A0C) {
                A0E();
            }
            if (!z && this.A00 < super.A02.A20().A0G()) {
                this.A0L.A0h(EnumC1392db.A02, 32);
            } else {
                this.A0D = true;
                if (this.A03 != null) {
                    this.A03.A1H(c03393d);
                }
            }
            if (this.A00 == 0) {
                A0S(z, z2);
            }
            this.A00++;
            String[] strArr = A0V;
            if (strArr[0].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0V;
            strArr2[0] = "";
            strArr2[1] = "mBWwcFSbVIKH";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0P(C3Q c3q) {
        if (this.A0L.getState() == EnumC1446eU.A02 && U7.A1Z(super.A04)) {
            this.A0L.postDelayed(new FZ(this, c3q), 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q(C3Q c3q) {
        float f;
        int A00 = c3q.A00();
        int totalSecondsForNextCta = super.A02.A20().A0H().A02();
        int currentPosMs = super.A02.A20().A0H().A05();
        int currentPosMs2 = A01(A00, totalSecondsForNextCta, currentPosMs);
        if (totalSecondsForNextCta >= 0 && currentPosMs2 <= 0 && !super.A01 && this.A03 != null && this.A03.A1L()) {
            super.A01 = true;
            super.A08.setToolbarActionMode(8);
        }
        if (this.A08) {
            int totalSecondsForNextCta2 = super.A02.A20().A0H().A03();
            int currentPosMs3 = super.A02.A20().A0H().A05();
            int A01 = A01(A00, totalSecondsForNextCta2, currentPosMs3);
            AbstractC1657hy abstractC1657hy = super.A02;
            if (A0V[6].length() != 22) {
                String[] strArr = A0V;
                strArr[0] = "";
                strArr[1] = "CRWrhlQnYLwh";
                if (!KE.A05(abstractC1657hy)) {
                    boolean A1l = super.A02.A1l();
                    String A0A = A0A(0, 0, 98);
                    if (A1l || super.A02.A1j() || super.A02.A1Z()) {
                        super.A08.setToolbarActionMessage(A0A);
                    } else if (A01 > 0) {
                        super.A08.setToolbarActionMessage(super.A02.A24().A02().replace(A0A(0, 6, 50), String.valueOf(A01)));
                    } else {
                        super.A08.setToolbarActionMessage(A0A);
                    }
                }
                if (A01 <= 0) {
                    A0T(false, false);
                }
            } else {
                throw new RuntimeException();
            }
        }
        float A002 = A00();
        float totalCurrentPosMs = A00;
        if (this.A0B) {
            int totalSecondsForNextCta3 = this.A0L.getDuration();
            int currentPosMs4 = this.A00;
            totalCurrentPosMs += totalSecondsForNextCta3 * currentPosMs4;
        }
        if (super.A02.A1e()) {
            int currentPosMs5 = (A002 > 0.0f ? 1 : (A002 == 0.0f ? 0 : -1));
            if (currentPosMs5 > 0) {
                f = totalCurrentPosMs / A002;
            } else {
                f = 1.0f;
            }
        } else {
            f = totalCurrentPosMs / A002;
        }
        boolean A1j = super.A02.A1j();
        if (A0V[5].charAt(8) != 102) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0V;
        strArr2[7] = "BY5kACpHY7KFfLoLkWPFyXHXe8tQ4ZYS";
        strArr2[2] = "FXqF0wWRYQoNHbRw7kiC8WRpThpP8Fmr";
        if (!A1j) {
            float unskippableSeconds = 100.0f * f;
            super.A08.setProgress(unskippableSeconds);
        } else {
            int i = 0;
            int currentPosMs6 = ((A002 - totalCurrentPosMs) > 0.0f ? 1 : ((A002 - totalCurrentPosMs) == 0.0f ? 0 : -1));
            if (currentPosMs6 > 0) {
                int currentPosMs7 = (int) (A002 - totalCurrentPosMs);
                i = currentPosMs7 / 1000;
            }
            AbstractC1104Xm abstractC1104Xm = super.A08;
            String[] strArr3 = A0V;
            String str = strArr3[7];
            String str2 = strArr3[2];
            int totalSecondsForNextCta4 = str.charAt(8);
            int currentPosMs8 = str2.charAt(8);
            if (totalSecondsForNextCta4 != currentPosMs8) {
                float unskippableSeconds2 = 100.0f * f;
                abstractC1104Xm.A09(unskippableSeconds2, i);
            } else {
                A0V[3] = "ksHgyK5pJeiIhpnbSmOLRLGEWkwS8h7S";
                float unskippableSeconds3 = 100.0f * f;
                abstractC1104Xm.A09(unskippableSeconds3, i);
            }
        }
        int currentPosMs9 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        if (currentPosMs9 >= 0 && !this.A0C) {
            A0E();
            AbstractC1104Xm abstractC1104Xm2 = super.A08;
            int currentPosMs10 = getCloseButtonStyle();
            abstractC1104Xm2.setToolbarActionMode(currentPosMs10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0R(String str) {
        int i = 0;
        int i2 = 0;
        if (this.A0L != null) {
            i = this.A0L.getCurrentPositionInMillis();
            i2 = this.A0L.getDuration();
            this.A0L.A0e(3);
        }
        super.A04.A0F().A3S(str);
        if (U7.A1a(super.A04)) {
            A0O(new C03393d(i, i2), false, true);
            return;
        }
        super.A09.A4b(super.A0A.A7t());
        super.A09.A4b(super.A0A.A7o());
    }

    private void A0S(boolean z, boolean z2) {
        super.A08.setToolbarActionMessage(A0A(0, 0, 98));
        A0T(z, z2);
        super.A08.setToolbarActionMode(getCloseButtonStyle());
    }

    private synchronized void A0T(boolean z, boolean z2) {
        if (this.A04 != null) {
            this.A08 = false;
            return;
        }
        if (this.A08 && !z && !z2) {
            super.A09.A4b(super.A0A.A6d());
            this.A05.A05();
            this.A08 = false;
            if (this.A03 != null) {
                this.A03.A1C();
            }
            return;
        }
        this.A08 = false;
    }

    @Override // com.facebook.ads.redexgen.X.G2
    public final AbstractC1104Xm A0b() {
        AbstractC1104Xm c0856Nr;
        if (!A0j()) {
            c0856Nr = new FullScreenAdToolbar(super.A04, super.A09, super.A06, 1, super.A02.A1t(), super.A02.A1j());
        } else {
            c0856Nr = new C0856Nr(super.A04, super.A09, super.A06, 1);
            A0B();
            if (super.A02.A2K()) {
                c0856Nr.setOnTouchListener(new View$OnTouchListenerC1333cd(this));
            }
        }
        if (super.A02.A2K()) {
            c0856Nr.setOnClickListener(new View$OnClickListenerC1328cY(this));
        }
        return c0856Nr;
    }

    @Override // com.facebook.ads.redexgen.X.G2
    public final void A0e() {
        if (this.A03 != null) {
            super.A06.A04(UZ.A0Y, null);
            ME A1A = this.A03.A1A(A0A(32, 4, 60));
            if (super.A02.A2D()) {
                return;
            }
            ME actionOutcome = ME.A09;
            if (A1A != actionOutcome) {
                ME actionOutcome2 = ME.A06;
                if (A1A != actionOutcome2) {
                    A0d();
                    return;
                }
                return;
            }
            return;
        }
        super.A06.A04(UZ.A0Z, null);
    }

    @Override // com.facebook.ads.redexgen.X.G2
    public final void A0f() {
        XP.A0J(this.A03);
        this.A0L.setVisibility(4);
        if (!super.A02.A1f()) {
            A0k();
        }
    }

    @Override // com.facebook.ads.redexgen.X.G2
    public final void A0h(R0 r0) {
        FrameLayout.LayoutParams layoutParams;
        r0.A0A(this.A0I);
        int orientation = r0.A05().getResources().getConfiguration().orientation;
        this.A03 = A06(orientation);
        this.A03.setAccidentalClickCappingListener(new MF() { // from class: com.facebook.ads.redexgen.X.Fq
            @Override // com.facebook.ads.redexgen.X.MF
            public final void ACB() {
                C03533r.this.A0l();
            }
        });
        addView(this.A03, G2.A0E);
        boolean z = false;
        if (A0j()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
            int i = G2.A0G;
            int orientation2 = G2.A0F;
            layoutParams.setMargins(i, orientation2, 0, 0);
        } else {
            int orientation3 = super.A08.getToolbarHeight();
            layoutParams = new FrameLayout.LayoutParams(-1, orientation3);
        }
        addView(super.A08, layoutParams);
        if (this.A02 != null) {
            addView(this.A02, new FrameLayout.LayoutParams(-1, this.A02.getToolbarHeight()));
            XP.A0F(this.A02);
        }
        XP.A0F(this.A03);
        XP.A0F(super.A08);
        if (super.A02.A1f() && (this.A03 instanceof C03915d)) {
            ((C03915d) this.A03).setVideoAdViewListener(this.A0J);
        }
        AbstractC1210ae abstractC1210ae = this.A03;
        if (A0V[6].length() == 22) {
            throw new RuntimeException();
        }
        A0V[5] = "wo0V9GMefx8z7FmkoRuQRU6XLmQOOAjz";
        if (abstractC1210ae != null && this.A03.A1M()) {
            z = true;
        }
        setUpFullscreenMode(z);
    }

    @Override // com.facebook.ads.redexgen.X.G2
    public final boolean A0i() {
        if (this.A03 != null) {
            boolean A1N = this.A03.A1N(this.A08);
            String[] strArr = A0V;
            if (strArr[7].charAt(8) != strArr[2].charAt(8)) {
                throw new RuntimeException();
            }
            A0V[5] = "3q2LSuBAfmgZDuIIO8XYef2gzNnaMySy";
            if (A1N) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.G2
    public final boolean A0j() {
        return super.A02.A1m() || super.A02.A1o();
    }

    public final void A0k() {
        this.A0L.setVisibility(0);
        XP.A0J(super.A08);
        this.A0L.setVolume(super.A02.A20().A0H().A0A() ? 0.0f : 1.0f);
        if (A0j()) {
            AbstractC1210ae abstractC1210ae = this.A03;
            if (A0V[3].charAt(17) == 'M') {
                throw new RuntimeException();
            }
            String[] strArr = A0V;
            strArr[7] = "EZroGEyqYXPxT1OpX1Zo9PGFXXX4LGG2";
            strArr[2] = "A8BrNBzgYOoIkIhiYkC2R6mbpOJkqkYa";
            if (abstractC1210ae instanceof C03915d) {
                ((C03915d) this.A03).A1Z(getResources().getConfiguration().orientation);
                ((C03915d) this.A03).A1X();
            }
        }
        this.A0L.A0h(EnumC1392db.A02, 20);
        if (this.A03 != null && this.A08) {
            this.A03.A1D();
        }
        if (this.A03 != null && !this.A0C) {
            this.A03.A1F();
        }
        A0C();
    }

    public final /* synthetic */ void A0l() {
        A0d();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AEV(boolean z) {
        this.A07 = false;
        if (this.A0L.getVisibility() != 0 || this.A0L.A0q()) {
            return;
        }
        this.A06 = this.A0L.getVideoStartReason();
        this.A0A = z;
        this.A0L.A0l(false, 13);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AF0(boolean z) {
        this.A07 = true;
        if (this.A09) {
            this.A09 = false;
            A0H(this.A01);
        }
        if (this.A0L.getVisibility() != 0 || this.A0L.A0r() || this.A0D || this.A0L.getState() == EnumC1446eU.A06 || this.A06 == null) {
            return;
        }
        if (!this.A0A || z) {
            this.A0L.A0h(this.A06, 19);
        }
    }

    private int getCloseButtonStyle() {
        if (this.A03 != null) {
            return this.A03.getCloseButtonStyle();
        }
        return 0;
    }

    private InterfaceC1087Wv getPackageInstallListener() {
        return new FP(this);
    }

    @Override // com.facebook.ads.redexgen.X.G2, com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void onDestroy() {
        super.onDestroy();
        if (U7.A1u(super.A04)) {
            super.A04.A0B().AJj(this.A0L);
        }
        if (this.A03 != null) {
            this.A03.A1B();
        }
        if (this.A0L != null) {
            if (!this.A0D) {
                this.A0L.A0g(EnumC1384dT.A05);
            }
            this.A0L.getEventBus().A04(this.A0R, this.A0Q, this.A0P, this.A0S, this.A0N, this.A0O);
            this.A0L.A0Z();
        }
        if (this.A0K != null) {
            this.A0K.A07();
        }
        C03443i c03443i = this.A0M;
        if (A0V[3].charAt(17) == 'M') {
            throw new RuntimeException();
        }
        A0V[5] = "JW7Ky8SZfj6uPXM0M3owDCnBT69Er2UJ";
        c03443i.A0p();
        this.A0G.removeCallbacksAndMessages(null);
    }

    public void setServerSideRewardHandler(C1373dI c1373dI) {
        this.A05 = c1373dI;
    }

    public void setVideoLeadingPlayableAdListener(InterfaceC1335cf interfaceC1335cf) {
        this.A04 = interfaceC1335cf;
    }
}
