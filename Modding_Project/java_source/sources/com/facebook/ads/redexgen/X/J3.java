package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;
/* loaded from: assets/audience_network.dex */
public class J3 implements InterfaceC1158Zo {
    public final /* synthetic */ C0728Is A00;

    public J3(C0728Is c0728Is) {
        this.A00 = c0728Is;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1158Zo
    public final void ADT(C1157Zn c1157Zn) {
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        ImageView imageView4;
        imageView = this.A00.A02;
        if (imageView != null && c1157Zn.A00() != null) {
            imageView2 = this.A00.A02;
            imageView2.setImageBitmap(c1157Zn.A00());
            imageView3 = this.A00.A02;
            imageView3.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView4 = this.A00.A02;
            imageView4.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }
}
