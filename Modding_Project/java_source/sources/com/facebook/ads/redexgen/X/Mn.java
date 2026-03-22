package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
/* loaded from: assets/audience_network.dex */
public final class Mn extends AbstractC1165Zv {
    public final TextView A00;
    public final TextView A01;
    public static final int A02 = (int) (AbstractC1077Wl.A02 * 36.0f);
    public static final int A05 = (int) (AbstractC1077Wl.A02 * 4.0f);
    public static final int A03 = (int) (AbstractC1077Wl.A02 * 8.0f);
    public static final int A04 = (int) (AbstractC1077Wl.A02 * 4.0f);

    public Mn(C1376dL c1376dL, int i, C0837My c0837My, boolean z, String str, US us, InterfaceC1105Xn interfaceC1105Xn, C1449eX c1449eX, XH xh, N3 n3) {
        super(c1376dL, null, i, c0837My, z, str, us, interfaceC1105Xn, c1449eX, xh, n3, false, "");
        setOrientation(0);
        setPadding(A05, A05, A05, A05);
        this.A01 = A01(-16448251, 13, true);
        this.A00 = A01(-10131605, 12, false);
        this.A06.addView(A00(i), new LinearLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        addView(this.A06, layoutParams);
        this.A08.setPadding(A03, 0, A03, 0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, A02);
        layoutParams2.gravity = 17;
        addView(this.A08, layoutParams2);
    }

    private LinearLayout A00(int i) {
        LinearLayout linearLayout = new LinearLayout(this.A07);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A04, 0, A04, 0);
        linearLayout.addView(this.A01, AbstractC1165Zv.A0B);
        linearLayout.addView(this.A00, AbstractC1165Zv.A0B);
        LinearLayout linearLayout2 = new LinearLayout(this.A07);
        linearLayout2.setOrientation(0);
        linearLayout2.addView(this.A09, new LinearLayout.LayoutParams(i, i));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 16;
        linearLayout2.addView(linearLayout, layoutParams);
        return linearLayout2;
    }

    private TextView A01(int i, int i2, boolean z) {
        TextView textView = new TextView(this.A07);
        textView.setTextColor(i);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        XP.A0W(textView, z, i2);
        return textView;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1165Zv
    public final void A0g() {
        super.A0g();
        setOnClickListener(this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1165Zv
    public final void A0h(int i) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1165Zv
    public void setInfo(C0835Mw c0835Mw, C0838Mz c0838Mz, String str, String str2, InterfaceC1087Wv interfaceC1087Wv, InterfaceC1174a4 interfaceC1174a4) {
        super.setInfo(c0835Mw, c0838Mz, str, str2, interfaceC1087Wv, interfaceC1174a4);
        this.A01.setText(c0835Mw.A0F());
        this.A00.setText(c0835Mw.A0E());
        if (TextUtils.isEmpty(c0838Mz.A04())) {
            XP.A0F(this.A08);
        }
    }
}
