package com.unity3d.scar.adapter.v2100.scarads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.unity3d.scar.adapter.common.GMAAdsError;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarFullScreenAd;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2100.requests.AdRequestFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarRewardedAd extends ScarAdBase<RewardedAd> implements IScarFullScreenAd {
    public ScarRewardedAd(Context context, AdRequestFactory adRequestFactory, ScarAdMetadata scarAdMetadata, IAdsErrorHandler iAdsErrorHandler, IScarRewardedAdListenerWrapper iScarRewardedAdListenerWrapper) {
        super(context, scarAdMetadata, adRequestFactory, iAdsErrorHandler);
        this.f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ScarRewardedAdListener(iScarRewardedAdListenerWrapper, this);
    }

    @Override // com.unity3d.scar.adapter.v2100.scarads.ScarAdBase
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdRequest adRequest, IScarLoadListener iScarLoadListener) {
        RewardedAd.load(this.f10901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f10900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), adRequest, ((ScarRewardedAdListener) this.f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.unity3d.scar.adapter.common.scarads.IScarFullScreenAd
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity) {
        T t = this.f10902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (t != 0) {
            ((RewardedAd) t).show(activity, ((ScarRewardedAdListener) this.f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            this.f10897Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.handleError(GMAAdsError.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }
    }
}
