package com.unity3d.scar.adapter.v2100.scarads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.unity3d.scar.adapter.common.GMAAdsError;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.IScarInterstitialAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarFullScreenAd;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2100.requests.AdRequestFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarInterstitialAd extends ScarAdBase<InterstitialAd> implements IScarFullScreenAd {
    public ScarInterstitialAd(Context context, AdRequestFactory adRequestFactory, ScarAdMetadata scarAdMetadata, IAdsErrorHandler iAdsErrorHandler, IScarInterstitialAdListenerWrapper iScarInterstitialAdListenerWrapper) {
        super(context, scarAdMetadata, adRequestFactory, iAdsErrorHandler);
        this.f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ScarInterstitialAdListener(iScarInterstitialAdListenerWrapper, this);
    }

    @Override // com.unity3d.scar.adapter.v2100.scarads.ScarAdBase
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdRequest adRequest, IScarLoadListener iScarLoadListener) {
        InterstitialAd.load(this.f10901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f10900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), adRequest, ((ScarInterstitialAdListener) this.f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.unity3d.scar.adapter.common.scarads.IScarFullScreenAd
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity) {
        T t = this.f10902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (t != 0) {
            ((InterstitialAd) t).show(activity);
        } else {
            this.f10897Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.handleError(GMAAdsError.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }
    }
}
