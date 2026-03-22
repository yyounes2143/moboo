package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* renamed from: com.facebook.ads.redexgen.X.fZ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1512fZ implements RQ {
    public final /* synthetic */ ImageView A00;
    public final /* synthetic */ RS A01;
    public final /* synthetic */ C0917Qc A02;

    public C1512fZ(RS rs, ImageView imageView, C0917Qc c0917Qc) {
        this.A01 = rs;
        this.A00 = imageView;
        this.A02 = c0917Qc;
    }

    @Override // com.facebook.ads.redexgen.X.RQ
    public final void ADU(Drawable drawable) {
        C0917Qc.A0f(drawable, this.A00);
        this.A02.A1K(drawable);
    }
}
