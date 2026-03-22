package com.unity3d.scar.adapter.v2300.scarads;

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
import com.unity3d.scar.adapter.v2300.requests.AdRequestFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarRewardedAd extends ScarAdBase<RewardedAd> implements IScarFullScreenAd {
    public ScarRewardedAd(Context context, AdRequestFactory adRequestFactory, ScarAdMetadata scarAdMetadata, IAdsErrorHandler iAdsErrorHandler, IScarRewardedAdListenerWrapper iScarRewardedAdListenerWrapper) {
        super(context, scarAdMetadata, adRequestFactory, iAdsErrorHandler);
        this.f10943Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ScarRewardedAdListener(iScarRewardedAdListenerWrapper, this);
    }

    @Override // com.unity3d.scar.adapter.v2300.scarads.ScarAdBase
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdRequest adRequest, IScarLoadListener iScarLoadListener) {
        RewardedAd.load(this.f10946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f10945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), adRequest, ((ScarRewardedAdListener) this.f10943Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.unity3d.scar.adapter.common.scarads.IScarFullScreenAd
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity) {
        T t = this.f10947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (t != 0) {
            ((RewardedAd) t).show(activity, ((ScarRewardedAdListener) this.f10943Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            this.f10942Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.handleError(GMAAdsError.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }
    }
}
