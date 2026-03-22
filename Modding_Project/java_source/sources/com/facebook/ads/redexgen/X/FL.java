package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: assets/audience_network.dex */
public final class FL extends FrameLayout implements InterfaceC1106Xo {
    public static byte[] A0B;
    public static final RelativeLayout.LayoutParams A0C;
    public R0 A00;
    public Intent A01;
    public Bundle A02;
    public InterfaceC1106Xo A03;
    public final AbstractC1657hy A04;
    public final AbstractC1657hy A05;
    public final R0 A06;
    public final C1376dL A07;
    public final US A08;
    public final XC A09;
    public final InterfaceC1105Xn A0A;

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A0B = new byte[]{117, 105, 100, 102, 96, 104, 96, 107, 113};
    }

    static {
        A0A();
        A0C = new RelativeLayout.LayoutParams(-1, -1);
    }

    public FL(C1376dL c1376dL, US us, AbstractC1657hy abstractC1657hy, AbstractC1657hy abstractC1657hy2, InterfaceC1105Xn interfaceC1105Xn, R0 r0) {
        super(c1376dL);
        this.A07 = c1376dL;
        this.A08 = us;
        this.A05 = abstractC1657hy;
        this.A04 = abstractC1657hy2;
        this.A0A = interfaceC1105Xn;
        this.A06 = r0;
        this.A09 = new XC(this);
        this.A09.A05(XB.A02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C0790Lc A05(C1355cz c1355cz, YY yy) {
        return new C0790Lc(this.A07, this.A08, this.A0A, this.A04, this.A04.A1A(), yy, true, c1355cz);
    }

    private C03533r A06() {
        if (this.A04.A20().A0H().A07() != null) {
            this.A05.A1M(this.A04.A20().A0H().A07().A0N());
            this.A05.A1N(this.A04.A20().A0H().A07().A0P());
        }
        LX lx = new LX();
        C1355cz A07 = A07(lx, this.A04);
        C03533r c03533r = new C03533r(this.A07, lx, this.A08, this.A05, new SF(this.A07), this.A0A);
        c03533r.setVideoLeadingPlayableAdListener(new FM(this, A07, lx));
        return c03533r;
    }

    private C1355cz A07(YY yy, AbstractC1657hy abstractC1657hy) {
        NB A07 = abstractC1657hy.A20().A0H().A07();
        if (A07 == null || !A07.A0M()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(A08(0, 9, 37), yy.A8d());
        return new C1355cz(this.A07, abstractC1657hy, A07, this.A08, null, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        if (this.A03 != null) {
            this.A03.onDestroy();
            if (this.A03 instanceof View) {
                ((View) this.A03).setVisibility(8);
                removeView((View) this.A03);
            }
        }
    }

    private final void A0B(Intent intent, Bundle bundle, R0 r0) {
        this.A03 = A06();
        this.A03.AAl(intent, bundle, r0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        this.A01 = intent;
        this.A02 = bundle;
        this.A00 = r0;
        this.A0A.A3x(this, A0C);
        A0B(intent, bundle, r0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AEV(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AF0(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AIB(Bundle bundle) {
    }

    public InterfaceC1106Xo getContentView() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public String getCurrentClientToken() {
        return this.A05.A25();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void onDestroy() {
    }

    public void setListener(InterfaceC1105Xn interfaceC1105Xn) {
    }
}
