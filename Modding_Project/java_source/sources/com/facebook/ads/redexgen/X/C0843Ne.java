package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAdListener;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
/* renamed from: com.facebook.ads.redexgen.X.Ne  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0843Ne implements RewardedVideoAdListener {
    public final /* synthetic */ C1596gy A00;

    public C0843Ne(C1596gy c1596gy) {
        this.A00 = c1596gy;
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdClicked(com.facebook.ads.Ad ad) {
    }

    @Override // com.facebook.ads.AdListener
    public final void onAdLoaded(com.facebook.ads.Ad ad) {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C1584gm c1584gm;
        s2SRewardedVideoAdExtendedListener = this.A00.A00.A08;
        c1584gm = this.A00.A00.A09;
        s2SRewardedVideoAdExtendedListener.onAdLoaded(c1584gm.A6c());
    }

    @Override // com.facebook.ads.AdListener
    public final void onError(com.facebook.ads.Ad ad, AdError adError) {
        AbstractC0827Mo abstractC0827Mo;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C1584gm c1584gm;
        this.A00.A00.A03 = null;
        abstractC0827Mo = this.A00.A00.A04;
        ((AbstractC1657hy) abstractC0827Mo).A2A(false);
        s2SRewardedVideoAdExtendedListener = this.A00.A00.A08;
        c1584gm = this.A00.A00.A09;
        s2SRewardedVideoAdExtendedListener.onAdLoaded(c1584gm.A6c());
    }

    @Override // com.facebook.ads.AdListener
    public final void onLoggingImpression(com.facebook.ads.Ad ad) {
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public final void onRewardedVideoClosed() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardedVideoClosed();
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardedVideoCompleted();
    }
}
