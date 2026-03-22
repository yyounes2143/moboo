package com.unity3d.scar.adapter.v2300.scarads;

import android.content.Context;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.IScarBannerAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2300.requests.AdRequestFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarBannerAd extends ScarAdBase<AdView> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdView f10949Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f10950Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f10951Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RelativeLayout f10952Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ScarBannerAd(Context context, RelativeLayout relativeLayout, AdRequestFactory adRequestFactory, ScarAdMetadata scarAdMetadata, int i, int i2, IAdsErrorHandler iAdsErrorHandler, IScarBannerAdListenerWrapper iScarBannerAdListenerWrapper) {
        super(context, scarAdMetadata, adRequestFactory, iAdsErrorHandler);
        this.f10952Wwwwwwwwwwwwwwwwwwwwwwwwwwww = relativeLayout;
        this.f10951Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f10950Wwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f10949Wwwwwwwwwwwwwwwwwwwwwwwww = new AdView(this.f10946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f10943Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ScarBannerAdListener(iScarBannerAdListenerWrapper, this);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        AdView adView;
        RelativeLayout relativeLayout = this.f10952Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (relativeLayout != null && (adView = this.f10949Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            relativeLayout.removeView(adView);
        }
    }

    @Override // com.unity3d.scar.adapter.v2300.scarads.ScarAdBase
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdRequest adRequest, IScarLoadListener iScarLoadListener) {
        AdView adView;
        RelativeLayout relativeLayout = this.f10952Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (relativeLayout != null && (adView = this.f10949Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            relativeLayout.addView(adView);
            this.f10949Wwwwwwwwwwwwwwwwwwwwwwwww.setAdSize(new AdSize(this.f10951Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f10950Wwwwwwwwwwwwwwwwwwwwwwwwww));
            this.f10949Wwwwwwwwwwwwwwwwwwwwwwwww.setAdUnitId(this.f10945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f10949Wwwwwwwwwwwwwwwwwwwwwwwww.setAdListener(((ScarBannerAdListener) this.f10943Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f10949Wwwwwwwwwwwwwwwwwwwwwwwww.loadAd(adRequest);
        }
    }
}
