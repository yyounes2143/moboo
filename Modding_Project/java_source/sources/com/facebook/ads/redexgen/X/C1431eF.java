package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.view.Surface;
import com.google.common.base.Ascii;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.eF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1431eF {
    public static byte[] A02;
    public final C9V A00;
    public final C1867lf A01 = new C1867lf();

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 50);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-64, -54, -66, -64, 1, -1, 19, 17, 3, -64, -66, -40, -66, -64, -74, -64, -76, -74, 6, -7, 2, -8, -7, 6, -7, 6, -35, 2, -8, -7, Ascii.FF, -74, -76, -50, -76, -74, -54, 37, -9, -6, 9, Ascii.DLE, -73, 2, -6, 8, 8, -10, -4, -6, -73, -75, -49, -75, -73, -75, 92, -82, -77, -86, -97, 92, 90, 116, 90, 92};
    }

    public C1431eF(C1376dL c1376dL) {
        EA trackSelectionFactory = new C1893m5(this.A01);
        AnonymousClass92 anonymousClass92 = new AnonymousClass92(trackSelectionFactory);
        C6S loadControl = new C1980nV();
        this.A00 = AbstractC04135z.A00(new C1977nS(c1376dL), anonymousClass92, loadControl, this.A01);
    }

    public static String A01(C2047od c2047od) {
        boolean z = c2047od instanceof C9Y;
        String A00 = A00(36, 2, 118);
        String A002 = A00(0, 14, 108);
        if (z) {
            C9Y c9y = (C9Y) c2047od;
            return A00(55, 11, 8) + c9y.A03 + A00(14, 22, 98) + c9y.A02 + A002 + c9y.getCause() + A00;
        }
        return A00(41, 14, 99) + c2047od.getMessage() + A002 + c2047od.getCause() + A00;
    }

    public static boolean A03() {
        return true;
    }

    public final int A04() {
        return this.A00.A0I();
    }

    public final int A05() {
        return this.A00.A00();
    }

    public final long A06() {
        return this.A00.A7W();
    }

    public final long A07() {
        return this.A00.A7k();
    }

    public final C1429eD A08() {
        C2061or vf = this.A00.A0K();
        if (vf == null) {
            return null;
        }
        return new C1429eD(vf.A0L, vf.A0A);
    }

    public final void A09() {
        this.A00.A0L();
    }

    public final void A0A() {
        this.A00.A02();
    }

    public final void A0B() {
        this.A00.A01();
    }

    public final void A0C(float f) {
        this.A00.A0M(f);
    }

    public final void A0D(long j) {
        this.A00.A04(j);
    }

    public final void A0E(Surface surface) {
        this.A00.A0N(surface);
    }

    public final void A0F(C1350cu c1350cu, Uri uri) {
        if (U7.A2r(c1350cu, A03())) {
            C1435eJ cacheManager = C1435eJ.A06(c1350cu);
            InterfaceC03844w cachedDataSourceFactory = cacheManager.A0H(c1350cu);
            this.A00.A0Q(new AnonymousClass99(cachedDataSourceFactory).A04(uri));
            return;
        }
        CL mediaSource = new AnonymousClass99(new C1995nk(c1350cu, AbstractC03624a.A0j(c1350cu, A00(38, 3, 100)), this.A01)).A04(uri);
        this.A00.A0Q(mediaSource);
    }

    public final void A0G(InterfaceC1428eC interfaceC1428eC) {
        this.A00.A0O(new CR(this, interfaceC1428eC));
    }

    public final void A0H(final InterfaceC1430eE interfaceC1430eE) {
        this.A00.A0P(new InterfaceC1966nH() { // from class: com.facebook.ads.redexgen.X.27
            @Override // com.facebook.ads.redexgen.X.InterfaceC03714j
            public final void AFq(int i, int i2, int i3, float f) {
                interfaceC1430eE.AFq(i, i2, i3, f);
            }
        });
    }

    public final void A0I(boolean z) {
        this.A00.A0S(z);
    }

    public final boolean A0J() {
        return this.A00.A0T();
    }

    public final boolean A0K() {
        return this.A00.A0J() != null;
    }
}
