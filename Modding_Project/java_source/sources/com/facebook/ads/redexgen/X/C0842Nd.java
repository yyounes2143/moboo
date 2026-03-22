package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.InterstitialAdListener;
/* renamed from: com.facebook.ads.redexgen.X.Nd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0842Nd implements InterstitialAdListener {
    public final /* synthetic */ AbstractC1657hy A00;
    public final /* synthetic */ C1601h4 A01;

    public C0842Nd(C1601h4 c1601h4, AbstractC1657hy abstractC1657hy) {
        this.A01 = c1601h4;
        this.A00 = abstractC1657hy;
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdClicked(com.facebook.ads.Ad ad) {
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdLoaded(com.facebook.ads.Ad ad) {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        interstitialAdExtendedListener = this.A01.A00.A07;
        c1593gv = this.A01.A00.A08;
        interstitialAdExtendedListener.onAdLoaded(c1593gv.A6c());
    }

    @Override // com.facebook.ads.AdListener
    public final void onError(com.facebook.ads.Ad ad, AdError adError) {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        this.A01.A00.A01 = null;
        this.A00.A2A(false);
        interstitialAdExtendedListener = this.A01.A00.A07;
        c1593gv = this.A01.A00.A08;
        interstitialAdExtendedListener.onAdLoaded(c1593gv.A6c());
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public final void onInterstitialDismissed(com.facebook.ads.Ad ad) {
        C04386y c04386y;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        C04386y c04386y2;
        C04386y c04386y3;
        C04386y c04386y4;
        this.A01.A00.A04 = false;
        c04386y = this.A01.A00.A03;
        if (c04386y != null) {
            c04386y2 = this.A01.A00.A03;
            c04386y2.A0S(new C1603h6(this));
            c04386y3 = this.A01.A00.A03;
            c04386y3.A0N();
            c04386y4 = this.A01.A00.A03;
            c04386y4.A0K();
            this.A01.A00.A03 = null;
        }
        interstitialAdExtendedListener = this.A01.A00.A07;
        c1593gv = this.A01.A00.A08;
        interstitialAdExtendedListener.onInterstitialDismissed(c1593gv.A6c());
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public final void onInterstitialDisplayed(com.facebook.ads.Ad ad) {
    }

    @Override // com.facebook.ads.AdListener
    public final void onLoggingImpression(com.facebook.ads.Ad ad) {
    }
}
