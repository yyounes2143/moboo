package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
/* renamed from: com.facebook.ads.redexgen.X.6Q  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C6Q extends C1519fg {
    public InterfaceC1377dM A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A06(NativeAdLayout nativeAdLayout, C1376dL c1376dL, NativeAd nativeAd, C1034Ur c1034Ur) {
        C1190aK c1190aK = new C1190aK(c1376dL);
        MediaView mediaView = new MediaView(c1376dL);
        AdOptionsView adOptionsView = new AdOptionsView(c1376dL, nativeAd, nativeAdLayout);
        c1034Ur.A09(adOptionsView, 28);
        this.A00 = new EP(c1376dL, nativeAd, c1034Ur, C0917Qc.A0L(nativeAd.getInternalNativeAd()).A18(), c1190aK, mediaView, adOptionsView);
        XP.A0K(nativeAdLayout, c1034Ur.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, c1190aK, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.R8, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}
