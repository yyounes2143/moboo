package com.unity3d.scar.adapter.v2100.scarads;

import android.content.Context;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.IScarBannerAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2100.requests.AdRequestFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarBannerAd extends ScarAdBase<AdView> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdView f10904Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f10905Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f10906Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RelativeLayout f10907Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ScarBannerAd(Context context, RelativeLayout relativeLayout, AdRequestFactory adRequestFactory, ScarAdMetadata scarAdMetadata, int i, int i2, IAdsErrorHandler iAdsErrorHandler, IScarBannerAdListenerWrapper iScarBannerAdListenerWrapper) {
        super(context, scarAdMetadata, adRequestFactory, iAdsErrorHandler);
        this.f10907Wwwwwwwwwwwwwwwwwwwwwwwwwwww = relativeLayout;
        this.f10906Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f10905Wwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f10904Wwwwwwwwwwwwwwwwwwwwwwwww = new AdView(this.f10901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ScarBannerAdListener(iScarBannerAdListenerWrapper, this);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        AdView adView;
        RelativeLayout relativeLayout = this.f10907Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (relativeLayout != null && (adView = this.f10904Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            relativeLayout.removeView(adView);
        }
    }

    @Override // com.unity3d.scar.adapter.v2100.scarads.ScarAdBase
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdRequest adRequest, IScarLoadListener iScarLoadListener) {
        AdView adView;
        RelativeLayout relativeLayout = this.f10907Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (relativeLayout != null && (adView = this.f10904Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            relativeLayout.addView(adView);
            this.f10904Wwwwwwwwwwwwwwwwwwwwwwwww.setAdSize(new AdSize(this.f10906Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f10905Wwwwwwwwwwwwwwwwwwwwwwwwww));
            this.f10904Wwwwwwwwwwwwwwwwwwwwwwwww.setAdUnitId(this.f10900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f10904Wwwwwwwwwwwwwwwwwwwwwwwww.setAdListener(((ScarBannerAdListener) this.f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f10904Wwwwwwwwwwwwwwwwwwwwwwwww.loadAd(adRequest);
        }
    }
}
