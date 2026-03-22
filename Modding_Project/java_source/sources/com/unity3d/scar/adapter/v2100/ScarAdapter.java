package com.unity3d.scar.adapter.v2100;

import android.content.Context;
import android.widget.RelativeLayout;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.IScarAdapter;
import com.unity3d.scar.adapter.common.IScarBannerAdListenerWrapper;
import com.unity3d.scar.adapter.common.IScarInterstitialAdListenerWrapper;
import com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper;
import com.unity3d.scar.adapter.common.ScarAdapterBase;
import com.unity3d.scar.adapter.common.Utils;
import com.unity3d.scar.adapter.common.WebViewAdsError;
import com.unity3d.scar.adapter.common.requests.RequestExtras;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2100.requests.AdRequestFactory;
import com.unity3d.scar.adapter.v2100.scarads.ScarBannerAd;
import com.unity3d.scar.adapter.v2100.scarads.ScarInterstitialAd;
import com.unity3d.scar.adapter.v2100.scarads.ScarRewardedAd;
import com.unity3d.scar.adapter.v2100.signals.SignalsCollector;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarAdapter extends ScarAdapterBase implements IScarAdapter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdRequestFactory f10885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ScarAdapter(IAdsErrorHandler<WebViewAdsError> iAdsErrorHandler, String str) {
        super(iAdsErrorHandler);
        AdRequestFactory adRequestFactory = new AdRequestFactory(new RequestExtras(str));
        this.f10885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adRequestFactory;
        this.f10863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SignalsCollector(adRequestFactory);
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, final ScarAdMetadata scarAdMetadata, IScarInterstitialAdListenerWrapper iScarInterstitialAdListenerWrapper) {
        final ScarInterstitialAd scarInterstitialAd = new ScarInterstitialAd(context, this.f10885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, scarAdMetadata, this.f10860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, iScarInterstitialAdListenerWrapper);
        Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                scarInterstitialAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new IScarLoadListener() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.1.1
                    @Override // com.unity3d.scar.adapter.common.scarads.IScarLoadListener
                    public void onAdLoaded() {
                        ScarAdapter.this.f10862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scarInterstitialAd);
                    }
                });
            }
        });
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, final ScarAdMetadata scarAdMetadata, IScarRewardedAdListenerWrapper iScarRewardedAdListenerWrapper) {
        final ScarRewardedAd scarRewardedAd = new ScarRewardedAd(context, this.f10885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, scarAdMetadata, this.f10860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, iScarRewardedAdListenerWrapper);
        Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                scarRewardedAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new IScarLoadListener() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.2.1
                    @Override // com.unity3d.scar.adapter.common.scarads.IScarLoadListener
                    public void onAdLoaded() {
                        ScarAdapter.this.f10862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scarRewardedAd);
                    }
                });
            }
        });
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, RelativeLayout relativeLayout, ScarAdMetadata scarAdMetadata, int i, int i2, IScarBannerAdListenerWrapper iScarBannerAdListenerWrapper) {
        final ScarBannerAd scarBannerAd = new ScarBannerAd(context, relativeLayout, this.f10885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, scarAdMetadata, i, i2, this.f10860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, iScarBannerAdListenerWrapper);
        Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.unity3d.scar.adapter.v2100.ScarAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                scarBannerAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            }
        });
    }
}
