package com.unity3d.services.ads.operation.load;

import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.core.configuration.Configuration;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class LoadBannerOperationState extends LoadOperationState {
    private ScarAdMetadata _scarAdMetadata;
    private UnityBannerSize _size;

    public LoadBannerOperationState(String str, String str2, UnityBannerSize unityBannerSize, IUnityAdsLoadListener iUnityAdsLoadListener, UnityAdsLoadOptions unityAdsLoadOptions, Configuration configuration) {
        super(str, iUnityAdsLoadListener, unityAdsLoadOptions, configuration);
        this.id = str2;
        this._size = unityBannerSize;
    }

    public ScarAdMetadata getScarAdMetadata() {
        return this._scarAdMetadata;
    }

    public UnityBannerSize getSize() {
        return this._size;
    }

    public boolean isScarAd() {
        if (this._scarAdMetadata != null) {
            return true;
        }
        return false;
    }

    public void setScarAdMetadata(ScarAdMetadata scarAdMetadata) {
        this._scarAdMetadata = scarAdMetadata;
    }

    public void setSize(UnityBannerSize unityBannerSize) {
        this._size = unityBannerSize;
    }
}
