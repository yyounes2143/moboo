package com.google.ads.mediation.unity;

import android.app.Activity;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class UnityBannerViewFactory {
    public UnityBannerViewWrapper createBannerView(Activity activity, String str, UnityBannerSize unityBannerSize) {
        return new UnityBannerViewWrapper(new BannerView(activity, str, unityBannerSize));
    }
}
