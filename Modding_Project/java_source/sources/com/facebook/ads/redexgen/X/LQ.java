package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
/* loaded from: assets/audience_network.dex */
public class LQ implements ZZ {
    public final /* synthetic */ ZO A00;

    public LQ(ZO zo) {
        this.A00 = zo;
    }

    @Override // com.facebook.ads.redexgen.X.ZZ
    public final void ACa(boolean z) {
        boolean z2;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        this.A00.A0D(z);
        z2 = this.A00.A0C;
        if (!z2) {
            return;
        }
        imageView = this.A00.A00;
        if (imageView == null) {
            return;
        }
        imageView2 = this.A00.A00;
        imageView2.setEnabled(z);
        imageView3 = this.A00.A00;
        imageView3.setAlpha(z ? 1.0f : 0.3f);
    }

    @Override // com.facebook.ads.redexgen.X.ZZ
    public final void ADJ(boolean z) {
        boolean z2;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        this.A00.A0D(z);
        z2 = this.A00.A0C;
        if (!z2) {
            return;
        }
        imageView = this.A00.A02;
        if (imageView == null) {
            return;
        }
        imageView2 = this.A00.A02;
        imageView2.setEnabled(z);
        imageView3 = this.A00.A02;
        imageView3.setAlpha(z ? 1.0f : 0.3f);
    }
}
