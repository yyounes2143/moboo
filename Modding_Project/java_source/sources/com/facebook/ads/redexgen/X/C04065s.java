package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.5s  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04065s extends FH {
    public static String[] A00 = {"f1NrkMLFHAOxAk1WYXb4ZQBI9BQGMxNf", "ieQbYkP9qXWhodiL", "FasCpRA2RHhykdlBGUblwYUAQMGKU0mS", "sjzKgK2sh59qhJK5Sm5NCXrbKyy", "73hXtYSYooo4yypUFlMlXcqu25ITYI9G", "jFG3gQjXUuH0GALbmhZbm14pHMTfeDNL", "AB4YZhA3BNaHUCHwFjy4bae76Yz8EFa9", "dMMrkYyDXzmdfTW8HhUzXkOm8W"};

    public C04065s(C02670h c02670h, int i, List<C1343cn> list, C1449eX c1449eX, Bundle bundle) {
        super(c02670h, i, list, c1449eX, bundle);
        c02670h.A1h(this);
        this.A03 = new LG(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A00() {
        int A25 = this.A0C.A25();
        if (this.A05 == null || A25 == -1) {
            return;
        }
        int curPos = this.A05.size();
        if (A25 < curPos - 1) {
            int i = A25 + 1;
            if (A00[2].charAt(8) != 'R') {
                throw new RuntimeException();
            }
            A00[2] = "QoZYEwWSRtnMYn7R6MgH1oBp1kGEXSrp";
            A0U(i);
        }
    }

    private void A01(int i) {
        int visibleItem = this.A0C.A26();
        int lastVisibleItem = this.A0C.A27();
        int firstVisibleItem = this.A0C.A25();
        if (firstVisibleItem != visibleItem) {
            A0S(visibleItem);
        }
        if (firstVisibleItem != lastVisibleItem) {
            A0S(lastVisibleItem);
        }
        A0T(firstVisibleItem);
        A0V(visibleItem, lastVisibleItem, i);
    }

    @Override // com.facebook.ads.redexgen.X.FH, com.facebook.ads.redexgen.X.QT
    public final void A0L(C04206g c04206g, int i) {
    }

    @Override // com.facebook.ads.redexgen.X.FH, com.facebook.ads.redexgen.X.QT
    public final void A0M(C04206g c04206g, int i, int i2) {
        if (this.A0C.A25() != -1) {
            AbstractC0727Ir curCard = (AbstractC0727Ir) this.A0C.A1o(this.A0C.A25());
            if (curCard != null && curCard.A1T() && !curCard.A1S()) {
                curCard.A1Q();
            }
            A01(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FH
    public final void A0X(View view, boolean z) {
        view.setAlpha(z ? 1.0f : 0.8f);
    }

    @Override // com.facebook.ads.redexgen.X.FH
    public final void A0Z(AbstractC0727Ir abstractC0727Ir, boolean z) {
        A0X(abstractC0727Ir, z);
        if (!z && abstractC0727Ir.A1S()) {
            abstractC0727Ir.A1P();
        }
    }

    @Override // com.facebook.ads.redexgen.X.FH
    public final boolean A0a(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.75f;
    }

    public final C1449eX A0b() {
        return this.A04;
    }

    public final void A0c(C1449eX c1449eX) {
        this.A04 = c1449eX;
    }

    public final void A0d(List<C1343cn> list) {
        this.A05 = list;
    }
}
