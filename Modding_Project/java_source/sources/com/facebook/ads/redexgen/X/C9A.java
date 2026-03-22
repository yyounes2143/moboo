package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.facebook.ads.redexgen.X.9A */
/* loaded from: assets/audience_network.dex */
public final class C9A implements InterfaceC1909mM, GY, InterfaceC0613Eg<C1907mK>, InterfaceC0617Ek, InterfaceC0568Cn {
    public static byte[] A0e;
    public static String[] A0f = {"o2fAJH6DTExx5HfWJCXs", "", "TsjJo55j6Kq128TfeQrvBtnORCvXohBg", "QpymssT", "p1Azi7mByqrjPk9ZTQVOCdIp8WANOiZ", "P8K3es9juVbjT7QsA9zjw4fZ7CWDxkC3", "f2TCNbDOQ", "8xae32DDfRwM"};
    public static final C2061or A0g;
    public static final Map<String, String> A0h;
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public long A05;
    public InterfaceC1910mN A06;
    public C0563Ci A07;
    public InterfaceC0681Gw A08;
    public IcyHeaders A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public C0562Ch[] A0K;
    public C1901mE[] A0L;
    public final long A0M;
    public final Uri A0N;
    public final Handler A0O;
    public final C3W A0P;
    public final InterfaceC1996nl A0Q;
    public final C9P A0R;
    public final C9U A0S;
    public final CW A0T;
    public final InterfaceC0556Cb A0U;
    public final InterfaceC0561Cg A0V;
    public final EO A0W;
    public final InterfaceC0610Ed A0X;
    public final C1864lc A0Y;
    public final Runnable A0Z;
    public final Runnable A0a;
    public final String A0b;
    public final boolean A0c;
    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"})
    public final boolean A0d;

    public static String A0B(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 68);
        }
        return new String(copyOfRange);
    }

    public static void A0I() {
        A0e = new byte[]{-76, -81, -55, -33, -109, -77, -53, -38, -57, -86, -57, -38, -57, -29, 6, -8, -5, -4, 9, -47, -25, 9, 6, -2, 9, -4, 10, 10, 0, Ascii.CR, -4, -28, -4, -5, 0, -8, -25, -4, 9, 0, 6, -5, -62, -27, -41, -38, -33, -28, -35, -106, -36, -33, -28, -33, -23, -34, -37, -38, -106, -40, -37, -36, -27, -24, -37, -106, -26, -24, -37, -26, -41, -24, -41, -22, -33, -27, -28, -106, -33, -23, -106, -39, -27, -29, -26, -30, -37, -22, -37, -92, -49, -14, -28, -25, -20, -15, -22, -93, -23, -20, -15, -20, -10, -21, -24, -25, -93, -27, -24, -23, -14, -11, -24, -93, -13, -11, -24, -13, -28, -11, -28, -9, -20, -14, -15, -93, -20, -10, -93, -26, -14, -16, -13, -17, -24, -9, -24, -79, -93, -40, -43, -52, -67, -93, -12, 3, 3, -1, -4, -10, -12, 7, -4, 2, 1, -62, Ascii.VT, -64, -4, -10, Ascii.FF, -6, -12, 10, 47, 54, 45, 45};
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x003a, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long AIP(com.facebook.ads.redexgen.X.InterfaceC1871lj[] r15, boolean[] r16, com.facebook.ads.redexgen.X.InterfaceC0572Cr[] r17, boolean[] r18, long r19) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9A.AIP(com.facebook.ads.redexgen.X.lj[], boolean[], com.facebook.ads.redexgen.X.Cr[], boolean[], long):long");
    }

    static {
        A0I();
        A0h = A0D();
        A0g = new C2D().A0y(A0B(161, 3, 77)).A11(A0B(144, 17, 79)).A14();
    }

    public C9A(Uri uri, InterfaceC1996nl interfaceC1996nl, InterfaceC0556Cb interfaceC0556Cb, C9U c9u, C9P c9p, InterfaceC0610Ed interfaceC0610Ed, CW cw, InterfaceC0561Cg interfaceC0561Cg, EO eo, String str, int i, InterfaceExecutorC0632Ez interfaceExecutorC0632Ez) {
        C1864lc c1864lc;
        this.A0N = uri;
        this.A0Q = interfaceC1996nl;
        this.A0S = c9u;
        this.A0R = c9p;
        this.A0X = interfaceC0610Ed;
        this.A0T = cw;
        this.A0V = interfaceC0561Cg;
        this.A0W = eo;
        this.A0b = str;
        this.A0M = i;
        if (interfaceExecutorC0632Ez != null) {
            c1864lc = new C1864lc(interfaceExecutorC0632Ez);
        } else {
            c1864lc = new C1864lc(A0B(13, 29, 83));
        }
        this.A0Y = c1864lc;
        this.A0U = interfaceC0556Cb;
        this.A0P = new C3W();
        this.A0Z = new Runnable() { // from class: com.facebook.ads.redexgen.X.Ce
            @Override // java.lang.Runnable
            public final void run() {
                C9A.this.A0F();
            }
        };
        this.A0a = new Runnable() { // from class: com.facebook.ads.redexgen.X.Cf
            @Override // java.lang.Runnable
            public final void run() {
                C9A.this.A0b();
            }
        };
        this.A0O = AbstractC03624a.A0Y();
        boolean z = false;
        this.A0K = new C0562Ch[0];
        this.A0L = new C1901mE[0];
        this.A05 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
        this.A00 = 1;
        this.A0d = (C1662i5.A03(EnumC1659i2.A0d) || C1662i5.A03(EnumC1659i2.A0e) || C1662i5.A03(EnumC1659i2.A1f)) ? true : true;
        this.A0c = C1662i5.A03(EnumC1659i2.A0g);
    }

    private int A00() {
        int i = 0;
        for (C1901mE c1901mE : this.A0L) {
            int extractedSamplesCount = c1901mE.A0P();
            i += extractedSamplesCount;
        }
        return i;
    }

    public long A03(boolean z) {
        long j = Long.MIN_VALUE;
        for (int i = 0; i < this.A0L.length; i++) {
            if (!z) {
                Object A01 = C3M.A01(this.A07);
                String[] strArr = A0f;
                if (strArr[6].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0f;
                strArr2[6] = "FDopTuaFs";
                strArr2[7] = "ze95XzERDUjm";
                if (!((C0563Ci) A01).A01[i]) {
                }
            }
            j = Math.max(j, this.A0L[i].A0T());
        }
        return j;
    }

    private C1901mE A06(C0562Ch c0562Ch) {
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            if (c0562Ch.equals(this.A0K[i])) {
                return this.A0L[i];
            }
        }
        C1901mE A0B = C1901mE.A0B(this.A0W, this.A0S, this.A0R);
        A0B.A0d(this);
        int trackCount = length + 1;
        C0562Ch[] c0562ChArr = (C0562Ch[]) Arrays.copyOf(this.A0K, trackCount);
        c0562ChArr[length] = c0562Ch;
        this.A0K = (C0562Ch[]) AbstractC03624a.A1H(c0562ChArr);
        int trackCount2 = length + 1;
        C1901mE[] c1901mEArr = (C1901mE[]) Arrays.copyOf(this.A0L, trackCount2);
        c1901mEArr[length] = A0B;
        this.A0L = (C1901mE[]) AbstractC03624a.A1H(c1901mEArr);
        return A0B;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0613Eg
    /* renamed from: A07 */
    public final C0614Eh AE0(C1907mK c1907mK, long j, long j2, IOException iOException, int i) {
        C04809b c04809b;
        long j3;
        AnonymousClass56 anonymousClass56;
        long j4;
        C0614Eh c0614Eh;
        long j5;
        c04809b = c1907mK.A08;
        j3 = c1907mK.A05;
        anonymousClass56 = c1907mK.A01;
        CE ce = new CE(j3, anonymousClass56, c04809b.A01(), c04809b.A02(), j, j2, c04809b.A00());
        j4 = c1907mK.A00;
        long A8m = this.A0X.A8m(new C0609Ec(ce, new CG(1, -1, null, 0, null, AbstractC03624a.A0P(j4), AbstractC03624a.A0P(this.A03)), iOException, i));
        if (A8m == -9223372036854775807L) {
            c0614Eh = C1864lc.A06;
        } else {
            int A00 = A00();
            boolean z = A00 > this.A02;
            if (A0U(c1907mK, A00)) {
                c0614Eh = C1864lc.A01(z, A8m);
            } else {
                c0614Eh = C1864lc.A05;
            }
        }
        CW cw = this.A0T;
        j5 = c1907mK.A00;
        cw.A07(ce, 1, -1, null, 0, null, j5, this.A03, iOException, !c0614Eh.A02());
        return c0614Eh;
    }

    public static Map<String, String> A0D() {
        HashMap hashMap = new HashMap();
        hashMap.put(A0B(1, 12, 34), A0B(0, 1, 63));
        Map<String, String> headers = Collections.unmodifiableMap(hashMap);
        return headers;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private void A0E() {
        C3M.A08(this.A0G);
        C3M.A01(this.A07);
        C3M.A01(this.A08);
    }

    public void A0F() {
        if (this.A0H || this.A0G) {
            return;
        }
        boolean z = this.A0I;
        String[] strArr = A0f;
        if (strArr[1].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0f;
        strArr2[2] = "grMxxjGjFdBhxw9MDZtvFg4OZy35nlzN";
        strArr2[5] = "E38rNlujzeckGRbn7d7aukKxtTtuF9Uw";
        if (!z || this.A08 == null) {
            return;
        }
        for (C1901mE c1901mE : this.A0L) {
            if (c1901mE.A0U() == null) {
                return;
            }
        }
        this.A0P.A02();
        int length = this.A0L.length;
        C2027oH[] c2027oHArr = new C2027oH[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            C2061or c2061or = (C2061or) C3M.A01(this.A0L[i].A0U());
            String str = c2061or.A0W;
            boolean A0C = AbstractC03172h.A0C(str);
            boolean z2 = A0C || AbstractC03172h.A0F(str);
            zArr[i] = z2;
            this.A0A |= z2;
            IcyHeaders icyHeaders = this.A09;
            if (icyHeaders != null) {
                if (A0C || this.A0K[i].A01) {
                    Metadata metadata = c2061or.A0P;
                    C2D A0v = c2061or.A07().A0v(metadata == null ? new Metadata(icyHeaders) : metadata.A05(icyHeaders));
                    if (A0f[0].length() != 20) {
                        throw new RuntimeException();
                    }
                    String[] strArr3 = A0f;
                    strArr3[2] = "WsODqr3j7Qd6qKAaI5Z8JETVOkriGcMH";
                    strArr3[5] = "rCf1buyjz0YjJBdswvkAeWhqIr4TjJn3";
                    c2061or = A0v.A14();
                }
                if (A0C) {
                    int trackCount = c2061or.A04;
                    if (trackCount == -1) {
                        int trackCount2 = c2061or.A0D;
                        if (trackCount2 == -1) {
                            int trackCount3 = icyHeaders.A00;
                            if (trackCount3 != -1) {
                                C2D A07 = c2061or.A07();
                                int trackCount4 = icyHeaders.A00;
                                c2061or = A07.A0a(trackCount4).A14();
                            }
                        }
                    }
                }
            }
            c2027oHArr[i] = new C2027oH(c2061or);
        }
        this.A07 = new C0563Ci(new C1898mA(c2027oHArr), zArr);
        this.A0G = true;
        ((InterfaceC1910mN) C3M.A01(this.A06)).AEk(this);
    }

    public void A0G() {
        this.A0O.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Cd
            @Override // java.lang.Runnable
            public final void run() {
                C9A.this.A0c();
            }
        });
    }

    private void A0H() {
        AnonymousClass56 anonymousClass56;
        long j;
        long j2;
        C1907mK c1907mK = new C1907mK(this, this.A0N, this.A0Q, this.A0U, this, this.A0P);
        if (this.A0G) {
            C3M.A08(A0S());
            if (this.A03 != -9223372036854775807L && this.A05 >= this.A03) {
                this.A0D = true;
                this.A05 = -9223372036854775807L;
                return;
            }
            c1907mK.A04(((InterfaceC0681Gw) C3M.A01(this.A08)).A8t(this.A05).A00.A00, this.A05);
            for (C1901mE c1901mE : this.A0L) {
                c1901mE.A0b(this.A05);
            }
            this.A05 = -9223372036854775807L;
        }
        this.A02 = A00();
        long A08 = this.A0Y.A08(c1907mK, this, this.A0X.A8R(this.A00));
        anonymousClass56 = c1907mK.A01;
        CW cw = this.A0T;
        j = c1907mK.A05;
        CE ce = new CE(j, anonymousClass56, A08);
        j2 = c1907mK.A00;
        cw.A06(ce, 1, -1, null, 0, null, j2, this.A03, 0);
    }

    private final void A0J() throws IOException {
        this.A0Y.A0B(this.A0X.A8R(this.A00));
    }

    private void A0K(int i) {
        A0E();
        boolean[] zArr = this.A07.A03;
        if (!zArr[i]) {
            C2061or A08 = this.A07.A00.A05(i).A08(0);
            this.A0T.A03(AbstractC03172h.A01(A08.A0W), A08, 0, null, this.A04);
            zArr[i] = true;
        }
    }

    private void A0L(int i) {
        A0E();
        boolean[] zArr = this.A07.A02;
        if (this.A0F && zArr[i]) {
            if (this.A0L[i].A0g(false)) {
                return;
            }
            this.A05 = 0L;
            this.A0F = false;
            this.A0E = true;
            this.A04 = 0L;
            this.A02 = 0;
            for (C1901mE c1901mE : this.A0L) {
                c1901mE.A0Z();
            }
            ((InterfaceC1910mN) C3M.A01(this.A06)).ACs(this);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0613Eg
    /* renamed from: A0M */
    public final void ADz(C1907mK c1907mK, long j, long j2) {
        C04809b c04809b;
        long j3;
        AnonymousClass56 anonymousClass56;
        long j4;
        long largestQueuedTimestampUs;
        if (this.A03 == -9223372036854775807L && this.A08 != null) {
            boolean AAa = this.A08.AAa();
            long A03 = A03(true);
            int i = (A03 > Long.MIN_VALUE ? 1 : (A03 == Long.MIN_VALUE ? 0 : -1));
            String[] strArr = A0f;
            if (strArr[1].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0f;
            strArr2[6] = "VBgm4XD5c";
            strArr2[7] = "eM9hzsMViOdm";
            if (i == 0) {
                largestQueuedTimestampUs = 0;
            } else {
                largestQueuedTimestampUs = 10000 + A03;
            }
            this.A03 = largestQueuedTimestampUs;
            this.A0V.AFH(this.A03, AAa, this.A0C);
        }
        c04809b = c1907mK.A08;
        j3 = c1907mK.A05;
        anonymousClass56 = c1907mK.A01;
        CE ce = new CE(j3, anonymousClass56, c04809b.A01(), c04809b.A02(), j, j2, c04809b.A00());
        CW cw = this.A0T;
        j4 = c1907mK.A00;
        cw.A08(ce, 1, -1, null, 0, null, j4, this.A03, c1907mK, null);
        this.A0D = true;
        ((InterfaceC1910mN) C3M.A01(this.A06)).ACs(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0613Eg
    /* renamed from: A0N */
    public final void AE3(C1907mK c1907mK, long j, long j2, int i) {
        C04809b dataSource;
        CE ce;
        long j3;
        AnonymousClass56 anonymousClass56;
        long j4;
        long j5;
        AnonymousClass56 anonymousClass562;
        dataSource = c1907mK.A08;
        if (i == 0) {
            j5 = c1907mK.A05;
            anonymousClass562 = c1907mK.A01;
            ce = new CE(j5, anonymousClass562, j);
        } else {
            j3 = c1907mK.A05;
            anonymousClass56 = c1907mK.A01;
            ce = new CE(j3, anonymousClass56, dataSource.A01(), dataSource.A02(), j, j2, dataSource.A00());
        }
        CW cw = this.A0T;
        j4 = c1907mK.A00;
        cw.A06(ce, 1, -1, null, 0, null, j4, this.A03, i);
        String[] strArr = A0f;
        if (strArr[6].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0f;
        strArr2[6] = "RSQzFltms";
        strArr2[7] = "MablvJN0SXK9";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0613Eg
    /* renamed from: A0O */
    public final void ADx(C1907mK c1907mK, long j, long j2, boolean z) {
        C04809b dataSource;
        long j3;
        AnonymousClass56 anonymousClass56;
        long j4;
        dataSource = c1907mK.A08;
        j3 = c1907mK.A05;
        anonymousClass56 = c1907mK.A01;
        CE ce = new CE(j3, anonymousClass56, dataSource.A01(), dataSource.A02(), j, j2, dataSource.A00());
        CW cw = this.A0T;
        j4 = c1907mK.A00;
        cw.A05(ce, 1, -1, null, 0, null, j4, this.A03);
        if (!z) {
            for (C1901mE c1901mE : this.A0L) {
                c1901mE.A0Z();
            }
            if (this.A01 > 0) {
                ((InterfaceC1910mN) C3M.A01(this.A06)).ACs(this);
            }
        }
    }

    /* renamed from: A0R */
    public void A0e(InterfaceC0681Gw interfaceC0681Gw) {
        this.A08 = interfaceC0681Gw;
        this.A03 = interfaceC0681Gw.A7l();
        this.A0C = !this.A0B && interfaceC0681Gw.A7l() == -9223372036854775807L;
        this.A00 = this.A0C ? 7 : 1;
        this.A0V.AFH(this.A03, interfaceC0681Gw.AAa(), this.A0C);
        if (!this.A0G) {
            A0F();
        }
    }

    private boolean A0S() {
        return this.A05 != -9223372036854775807L;
    }

    private boolean A0T() {
        return this.A0E || A0S();
    }

    private boolean A0U(C1907mK c1907mK, int i) {
        if (this.A0B || (this.A08 != null && this.A08.A7l() != -9223372036854775807L)) {
            this.A02 = i;
            return true;
        }
        if (this.A0G && !A0T()) {
            this.A0F = true;
            return false;
        }
        this.A0E = this.A0G;
        this.A04 = 0L;
        this.A02 = 0;
        for (C1901mE c1901mE : this.A0L) {
            c1901mE.A0Z();
        }
        c1907mK.A04(0L, 0L);
        return true;
    }

    private boolean A0V(boolean[] zArr, long j) {
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            if (!this.A0L[i].A0f(j, false) && (zArr[i] || !this.A0A)) {
                return false;
            }
        }
        return true;
    }

    public final int A0X(int i, long j) {
        if (A0T()) {
            return 0;
        }
        A0K(i);
        C1901mE c1901mE = this.A0L[i];
        int A0Q = c1901mE.A0Q(j, this.A0D);
        c1901mE.A0a(A0Q);
        if (A0Q == 0) {
            A0L(i);
        }
        return A0Q;
    }

    public final int A0Y(int i, C6N c6n, C1983nY c1983nY, int i2) {
        if (A0T()) {
            return -3;
        }
        A0K(i);
        int result = this.A0L[i].A0R(c6n, c1983nY, i2, this.A0D);
        if (result == -3) {
            A0L(i);
        }
        return result;
    }

    public final H1 A0Z() {
        return A06(new C0562Ch(0, true));
    }

    public final void A0a() {
        if (this.A0G) {
            for (C1901mE c1901mE : this.A0L) {
                c1901mE.A0X();
            }
        }
        this.A0Y.A0C(this);
        this.A0O.removeCallbacksAndMessages(null);
        this.A06 = null;
        this.A0H = true;
    }

    public final /* synthetic */ void A0b() {
        if (!this.A0H) {
            ((InterfaceC1910mN) C3M.A01(this.A06)).ACs(this);
        }
    }

    public final /* synthetic */ void A0c() {
        this.A0B = true;
    }

    public final void A0d(int i) throws IOException {
        this.A0L[i].A0W();
        A0J();
    }

    public final boolean A0f(int i) {
        return !A0T() && this.A0L[i].A0g(this.A0D);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0576Cv
    @MetaExoPlayerCustomization("Added in D19760981 for cancel request")
    public final void A4k(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final boolean A54(long j) {
        if (this.A0D || this.A0Y.A0D() || this.A0F) {
            return false;
        }
        if (this.A0G && this.A01 == 0) {
            return false;
        }
        boolean A04 = this.A0P.A04();
        boolean continuedLoading = this.A0Y.A0E();
        if (!continuedLoading) {
            A0H();
            return true;
        }
        return A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final void A5s(long j, boolean z) {
        A0E();
        if (A0S()) {
            return;
        }
        boolean[] zArr = this.A07.A01;
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            C1901mE[] c1901mEArr = this.A0L;
            String[] strArr = A0f;
            String str = strArr[6];
            String str2 = strArr[7];
            int trackCount = str.length();
            if (trackCount == str2.length()) {
                throw new RuntimeException();
            }
            A0f[0] = "xFMIvf7swbs88yH1ASsn";
            c1901mEArr[i].A0c(j, z, zArr[i]);
        }
    }

    @Override // com.facebook.ads.redexgen.X.GY
    public final void A6G() {
        this.A0I = true;
        this.A0O.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final long A6j(long j, C7I c7i) {
        A0E();
        if (!this.A08.AAa()) {
            return 0L;
        }
        C0680Gv A8t = this.A08.A8t(j);
        long j2 = A8t.A00.A01;
        String[] strArr = A0f;
        if (strArr[6].length() != strArr[7].length()) {
            String[] strArr2 = A0f;
            strArr2[2] = "A6SKS5Ejxr3dBguC5asmpR7Eo1U8ekaX";
            strArr2[5] = "H67kjT3j1V6FB1MougrbLEHHMAKkStlF";
            return c7i.A00(j, j2, A8t.A01.A01);
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0576Cv
    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "Added in D9949576 for unstall buffer")
    public final long A6y(long j) {
        if (this.A0d && !this.A0G) {
            return 0L;
        }
        if (this.A0D) {
            return this.A03 - j;
        }
        return A70() - j;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00ad  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long A70() {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9A.A70():long");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final long A8T() {
        return A70();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final C1898mA A9E() {
        A0E();
        return this.A07.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final void ABt() throws IOException {
        A0J();
        if (this.A0D && !this.A0G) {
            if (this.A0c) {
                throw C03182i.A01(A0B(90, 54, 63) + (this.A0N != null ? this.A0N.toString() : A0B(164, 4, 125)), null);
            }
            throw C03182i.A01(A0B(42, 48, 50), null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0617Ek
    public final void AE4() {
        for (C1901mE c1901mE : this.A0L) {
            c1901mE.A0Y();
        }
        this.A0U.AGr();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0568Cn
    public final void AFb(C2061or c2061or) {
        this.A0O.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final void AGL(InterfaceC1910mN interfaceC1910mN, long j) {
        this.A06 = interfaceC1910mN;
        this.A0P.A04();
        A0H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final long AGg() {
        if (this.A0E) {
            boolean z = this.A0D;
            if (A0f[0].length() == 20) {
                String[] strArr = A0f;
                strArr[1] = "";
                strArr[4] = "OLDtf0M6xpFiQAaUF2mFzXoKXa03XjZ";
                if (z || A00() > this.A02) {
                    this.A0E = false;
                    long j = this.A04;
                    if (A0f[0].length() == 20) {
                        String[] strArr2 = A0f;
                        strArr2[6] = "30bUCuPdV";
                        strArr2[7] = "qvk1tPvPLdJz";
                        return j;
                    }
                } else {
                    return -9223372036854775807L;
                }
            }
            throw new RuntimeException();
        }
        return -9223372036854775807L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final void AGm(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.GY
    public final void AIN(final InterfaceC0681Gw interfaceC0681Gw) {
        this.A0O.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Cc
            @Override // java.lang.Runnable
            public final void run() {
                C9A.this.A0e(interfaceC0681Gw);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909mM
    public final long AIO(@MetaExoPlayerCustomization long j, boolean z) {
        A0E();
        boolean[] zArr = this.A07.A02;
        if (!this.A08.AAa()) {
            j = 0;
        }
        int i = 0;
        this.A0E = false;
        this.A04 = j;
        if (A0S()) {
            this.A05 = j;
            return j;
        } else if (this.A00 != 7 && A0V(zArr, j)) {
            return j;
        } else {
            this.A0F = false;
            this.A05 = j;
            this.A0D = false;
            if (this.A0Y.A0E()) {
                C1901mE[] c1901mEArr = this.A0L;
                int length = c1901mEArr.length;
                while (i < length) {
                    c1901mEArr[i].A0V();
                    String[] strArr = A0f;
                    if (strArr[6].length() == strArr[7].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A0f;
                    strArr2[2] = "OrOS7Vhjp4VBbz175mMxq2SuFvjpl5bQ";
                    strArr2[5] = "EAKZg7yj0ctHJiN4FHg90oFZJxg2ecfG";
                    i++;
                }
                this.A0Y.A09();
                return j;
            }
            this.A0Y.A0A();
            C1901mE[] c1901mEArr2 = this.A0L;
            int length2 = c1901mEArr2.length;
            while (i < length2) {
                c1901mEArr2[i].A0Z();
                String[] strArr3 = A0f;
                if (strArr3[2].charAt(7) != strArr3[5].charAt(7)) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A0f;
                strArr4[6] = "p5drqiHAR";
                strArr4[7] = "h8TdfbRbJweW";
                i++;
            }
            return j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0576Cv
    @MetaExoPlayerCustomization("Added in D19875605 for error load during pause")
    public final void AIs(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.GY
    public final H1 AJh(int i, int i2) {
        return A06(new C0562Ch(i, false));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0576Cv
    @MetaExoPlayerCustomization("Added in D13267633 for lower priority during pause")
    public final void AJq(byte b) {
    }
}
