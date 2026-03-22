package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
/* renamed from: com.facebook.ads.redexgen.X.ge  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1576ge implements OF {
    public Drawable A00;
    public final /* synthetic */ OE A01;

    public C1576ge(OE oe) {
        this.A01 = oe;
    }

    @Override // com.facebook.ads.redexgen.X.OF
    public final Drawable A76() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.OF
    public final OE A77() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.OF
    public final boolean A8i() {
        return this.A01.getPreventCornerOverlap();
    }

    @Override // com.facebook.ads.redexgen.X.OF
    public final boolean A9J() {
        return this.A01.getUseCompatPadding();
    }

    @Override // com.facebook.ads.redexgen.X.OF
    public final void AIa(Drawable drawable) {
        this.A00 = drawable;
        this.A01.setBackgroundDrawable(drawable);
    }

    @Override // com.facebook.ads.redexgen.X.OF
    public final void AJ1(int i, int i2, int i3, int i4) {
        this.A01.A05.set(i, i2, i3, i4);
        super/*android.widget.FrameLayout*/.setPadding(this.A01.A04.left + i, this.A01.A04.top + i2, this.A01.A04.right + i3, this.A01.A04.bottom + i4);
    }
}
