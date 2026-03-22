package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: assets/audience_network.dex */
public class FH extends QT {
    public static byte[] A0H;
    public static String[] A0I = {"oHxG", "", "w7XeyG7wcXlBDThCLG4YobF5JePdGcu8", "IQ8LgqWvoXOpUTXgnww89j6rU6uuZ1nj", "", "WKMwHhIum9", "0nm7H4VWCUBWNiJwCQAonSVvBZFyt", "hLsDwSpuFLAE"};
    public InterfaceC1264bW A02;
    public C1449eX A04;
    public List<C1343cn> A05;
    public boolean A09;
    public final int A0A;
    public final Context A0B;
    public final C1556gI A0C;
    public final AbstractC0916Qb A0D;
    public final Set<Integer> A0G = new HashSet();
    public boolean A08 = true;
    public boolean A06 = true;
    public boolean A07 = true;
    public int A01 = -1;
    public float A00 = 0.0f;
    public final InterfaceC1268ba A0F = new FK(this);
    public InterfaceC1266bY A03 = new FJ(this);
    public final InterfaceC1267bZ A0E = new FI(this);

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 7);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        String[] strArr = A0I;
        if (strArr[0].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0I;
        strArr2[7] = "Cbp585p0FHy9";
        strArr2[6] = "QC7w158vCCR5KGktiGCBodiqPhNZq";
        A0H = new byte[]{-122, -102, -103, -108, -92, -107, -111, -122, -98, -92, -118, -109, -122, -121, -111, -118, -119, -92, -107, -122, -105, -122, -110, 81, 91, 103, 78, 81, 90, 91, 92, 103, 94, 81, 76, 77, 87, 103, 88, 73, 90, 73, 85, -51, -58, -61, -52, -60, -68, -42, -61, -68, -51, -68, -61, -42, -57, -72, -55, -72, -60};
    }

    static {
        A08();
    }

    public FH(C02670h c02670h, int i, List<C1343cn> list, C1449eX c1449eX, Bundle bundle) {
        this.A0C = c02670h.getLayoutManager();
        this.A0A = i;
        this.A05 = list;
        this.A04 = c1449eX;
        this.A0D = new C1555gH(c02670h.getContext());
        this.A0B = c02670h.getContext();
        c02670h.A1h(this);
        A0D(bundle);
    }

    private AbstractC0727Ir A03(int i, int i2) {
        return A04(i, i2, true);
    }

    private AbstractC0727Ir A04(int i, int i2, boolean z) {
        AbstractC0727Ir abstractC0727Ir = null;
        while (i <= i2) {
            AbstractC0727Ir abstractC0727Ir2 = (AbstractC0727Ir) this.A0C.A1o(i);
            if (abstractC0727Ir2 == null || abstractC0727Ir2.A1S()) {
                return null;
            }
            boolean A0a = A0a(abstractC0727Ir2);
            if (abstractC0727Ir == null && abstractC0727Ir2.A1T() && A0a && !this.A0G.contains(Integer.valueOf(i)) && (!z || A0I(abstractC0727Ir2, this.A0A))) {
                abstractC0727Ir = abstractC0727Ir2;
            }
            if (abstractC0727Ir2.A1T() && !A0a) {
                A0C(i, false);
            }
            i++;
        }
        return abstractC0727Ir;
    }

    private void A06() {
        if (!this.A07) {
            return;
        }
        int lastVisibleItem = this.A0C.A26();
        int firstVisibleItem = this.A0C.A27();
        AbstractC0727Ir A03 = A03(lastVisibleItem, firstVisibleItem);
        if (A03 != null) {
            A03.A1Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() {
        int A25 = this.A0C.A25();
        if (A25 != -1) {
            int curPos = this.A05.size();
            if (A25 < curPos - 1) {
                int curPos2 = A25 + 1;
                A0U(curPos2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09(int i) {
        AbstractC0727Ir A04 = A04(i + 1, this.A0C.A27(), false);
        if (A04 != null) {
            A04.A1Q();
            A0U(((Integer) A04.getTag(-1593835536)).intValue());
        }
    }

    private void A0A(int i, int i2) {
        while (i <= i2) {
            A0T(i);
            i++;
        }
    }

    private final void A0B(int i, int i2) {
        A0S(i);
        A0S(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(int i, boolean z) {
        if (z) {
            this.A0G.add(Integer.valueOf(i));
        } else {
            this.A0G.remove(Integer.valueOf(i));
        }
    }

    private void A0D(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.A00 = bundle.getFloat(A05(43, 18, 112), 0.0f);
        this.A07 = bundle.getBoolean(A05(0, 23, 62), true);
        this.A08 = bundle.getBoolean(A05(23, 20, 1), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0H() {
        return this.A0A == 1;
    }

    public static boolean A0I(AbstractC1210ae abstractC1210ae, int i) {
        int allowedAreaMaxX;
        int furthestX;
        if (i == 2) {
            allowedAreaMaxX = AbstractC1077Wl.A04.widthPixels - 1;
        } else {
            int width = abstractC1210ae.getWidth();
            int allowedAreaMinX = AbstractC1077Wl.A04.widthPixels;
            allowedAreaMaxX = (int) (((width + allowedAreaMinX) * 1.3f) / 2.0f);
        }
        if (i == 2) {
            furthestX = 1;
        } else {
            int i2 = AbstractC1077Wl.A04.widthPixels;
            int allowedAreaMinX2 = abstractC1210ae.getWidth();
            furthestX = (int) (((i2 - allowedAreaMinX2) * 0.7f) / 2.0f);
        }
        float x = abstractC1210ae.getX();
        int allowedAreaMinX3 = abstractC1210ae.getWidth();
        if (((int) (x + allowedAreaMinX3)) <= allowedAreaMaxX) {
            int allowedAreaMinX4 = (abstractC1210ae.getX() > furthestX ? 1 : (abstractC1210ae.getX() == furthestX ? 0 : -1));
            if (allowedAreaMinX4 >= 0) {
                return true;
            }
        }
        return false;
    }

    private boolean A0J(AbstractC0727Ir abstractC0727Ir) {
        if (this.A08 && abstractC0727Ir.A1T()) {
            this.A08 = false;
            return true;
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public void A0L(C04206g c04206g, int i) {
        super.A0L(c04206g, i);
        if (i == 0) {
            this.A09 = true;
            A06();
        }
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public void A0M(C04206g c04206g, int i, int i2) {
        super.A0M(c04206g, i, i2);
        this.A09 = false;
        if (this.A06) {
            this.A09 = true;
            A06();
            this.A06 = false;
        }
        int lastVisibleItem = this.A0C.A26();
        int firstVisibleItem = this.A0C.A27();
        A0B(lastVisibleItem, firstVisibleItem);
        A0A(lastVisibleItem, firstVisibleItem);
        A0V(lastVisibleItem, firstVisibleItem, i);
    }

    public final InterfaceC1266bY A0N() {
        return this.A03;
    }

    public final InterfaceC1267bZ A0O() {
        return this.A0E;
    }

    public final InterfaceC1268ba A0P() {
        return this.A0F;
    }

    public final void A0Q() {
        this.A01 = -1;
        int A27 = this.A0C.A27();
        for (int A26 = this.A0C.A26(); A26 <= A27 && A26 >= 0; A26++) {
            AbstractC0727Ir card = (AbstractC0727Ir) this.A0C.A1o(A26);
            String[] strArr = A0I;
            String str = strArr[1];
            String str2 = strArr[4];
            int lastPos = str.length();
            int firstPos = str2.length();
            if (lastPos != firstPos) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[0] = "4n0r";
            strArr2[5] = "UAml839wpr";
            if (card != null && card.A1S()) {
                this.A01 = A26;
                card.A1P();
                return;
            }
        }
    }

    public final void A0R() {
        AbstractC0727Ir abstractC0727Ir = (AbstractC0727Ir) this.A0C.A1o(this.A01);
        if (abstractC0727Ir != null && this.A01 >= 0) {
            abstractC0727Ir.A1Q();
        }
    }

    public final void A0S(int i) {
        AbstractC0727Ir abstractC0727Ir = (AbstractC0727Ir) this.A0C.A1o(i);
        if (abstractC0727Ir != null && !A0a(abstractC0727Ir)) {
            A0Z(abstractC0727Ir, false);
        }
    }

    public final void A0T(int i) {
        AbstractC0727Ir abstractC0727Ir = (AbstractC0727Ir) this.A0C.A1o(i);
        if (abstractC0727Ir == null) {
            return;
        }
        if (A0a(abstractC0727Ir)) {
            A0Z(abstractC0727Ir, true);
        }
        if (!A0J(abstractC0727Ir) || this.A05 == null) {
            return;
        }
        this.A0F.setVolume(this.A05.get(((Integer) abstractC0727Ir.getTag(-1593835536)).intValue()).A03().A0H().A0A() ? 0.0f : 1.0f);
    }

    public final void A0U(int i) {
        this.A0D.A0A(i);
        this.A0C.A1N(this.A0D);
    }

    public final void A0V(int i, int i2, int i3) {
        if (!A0H() || this.A02 == null) {
            return;
        }
        int recomputeFrom = this.A0C.A25();
        if (recomputeFrom == -1) {
            recomputeFrom = i3 < 0 ? i : i2;
        }
        this.A02.AJp(recomputeFrom);
    }

    public final void A0W(Bundle bundle) {
        bundle.putFloat(A05(43, 18, 112), this.A00);
        bundle.putBoolean(A05(0, 23, 62), this.A07);
        bundle.putBoolean(A05(23, 20, 1), this.A08);
    }

    public void A0X(View view, boolean z) {
        view.setAlpha(z ? 1.0f : 0.5f);
    }

    public final void A0Y(InterfaceC1264bW interfaceC1264bW) {
        this.A02 = interfaceC1264bW;
    }

    public void A0Z(AbstractC0727Ir abstractC0727Ir, boolean z) {
        if (A0H()) {
            A0X(abstractC0727Ir, z);
        }
        if (!z && abstractC0727Ir.A1S()) {
            abstractC0727Ir.A1P();
        }
    }

    public boolean A0a(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.15f;
    }
}
