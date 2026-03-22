package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: assets/audience_network.dex */
public final class IG extends FrameLayout implements InterfaceC1106Xo {
    public static String[] A03 = {"wtXzJScKRPxajxCcdRbPmb0KadlxC", "7nKoFE8ui8VEpuvPlBMmVCUEP2sqkB6T", "33CWdOtYDTa7rzeiAlLBu", "lc", "strpzcWL7DajPBiGDWIDQH24h3nkF6Q8", "KD2NqWHNK6oFw2qGkV253wUFP2DdgfCk", "fVTYPEGDbO1sEyo8c0rX1ThQbYeRG1Ca", "mBAzb1XhvrptTGzmv2edBpTADNq"};
    public String A00;
    public final InterfaceC1105Xn A01;
    public final C1287bt A02;

    public IG(C1376dL c1376dL, InterfaceC1105Xn interfaceC1105Xn, C1287bt c1287bt, String str) {
        super(c1376dL);
        this.A02 = c1287bt;
        this.A01 = interfaceC1105Xn;
        this.A00 = str;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        C1287bt.A0B().incrementAndGet();
        this.A02.A0V();
        XP.A0H(this.A02.A0O());
        addView(this.A02.A0O(), new FrameLayout.LayoutParams(-1, -1));
        this.A01.A3x(this, new RelativeLayout.LayoutParams(-1, -1));
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

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public String getCurrentClientToken() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1106Xo
    public final void onDestroy() {
        this.A02.A0U();
        if (this.A02.A0N() != null) {
            this.A02.A0N().ADO();
        }
        AtomicInteger A0B = C1287bt.A0B();
        String[] strArr = A03;
        if (strArr[7].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[7] = "U60adJ6O15pnx6aeoiW8dFURNXF";
        strArr2[0] = "aGZEm4xR2YGCAhvP8isAV9os5hRSz";
        A0B.decrementAndGet();
    }

    public void setListener(InterfaceC1105Xn interfaceC1105Xn) {
    }
}
