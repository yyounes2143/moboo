package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.LinearLayout;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Nr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0856Nr extends AbstractC1104Xm {
    public static byte[] A03;
    public C1376dL A00;
    public InterfaceC1103Xl A01;
    public final YQ A02;

    static {
        A05();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 75);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{-75, -34, -31, -27, -41, -110, -77, -42};
    }

    public C0856Nr(C1376dL c1376dL, InterfaceC1105Xn interfaceC1105Xn, C1017Ua c1017Ua, int i) {
        super(c1376dL);
        this.A00 = c1376dL;
        setGravity(16);
        A04();
        this.A02 = new YQ(this.A00, i);
        A03();
    }

    private void A03() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.A02.setContentDescription(A02(0, 8, 39));
        this.A02.setActionClickListener(new View$OnClickListenerC1115Xx(this));
        addView(this.A02, layoutParams);
    }

    private void A04() {
        View view = new View(this.A00);
        view.setLayoutParams(new LinearLayout.LayoutParams(0, 0, 1.0f));
        addView(view);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public final void A06() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public final void A07() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public final void A08() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public final void A09(float f, int i) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public final void A0A(C0837My c0837My, boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public final boolean A0B() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public int getToolbarActionMode() {
        return this.A02.getToolbarActionMode();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public int getToolbarHeight() {
        return AbstractC1104Xm.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public InterfaceC1103Xl getToolbarListener() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setAdReportingVisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setCTAClickListener(View.OnClickListener onClickListener) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setCTAClickListener(KE ke) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setFullscreen(boolean z) {
    }

    public void setInitialUnskippableSeconds(int i) {
        this.A02.setInitialUnskippableSeconds(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setPageDetails(N9 n9, String str, int i, NF nf) {
        this.A02.setInitialUnskippableSeconds(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setPageDetailsVisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setProgress(float f) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setProgressClickListener(View.OnClickListener onClickListener) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setProgressImage(XX xx) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setProgressImmediate(float f) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setProgressSpinnerInvisible(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setToolbarActionMessage(String str) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setToolbarActionMode(int i) {
        this.A02.setToolbarActionMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1104Xm
    public void setToolbarListener(InterfaceC1103Xl interfaceC1103Xl) {
        this.A01 = interfaceC1103Xl;
    }
}
