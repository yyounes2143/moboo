package com.google.ads.mediation.mintegral.mediation;

import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.ads.mediation.mintegral.MintegralMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeAdWithCodeListener;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class MintegralNativeAdListener extends NativeAdWithCodeListener {
    protected MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> adLoadCallback;
    private MintegralNativeAd mintegralNativeAd;
    protected MediationNativeAdCallback nativeCallback;

    public MintegralNativeAdListener(@NonNull MintegralNativeAd mintegralNativeAd) {
        this.mintegralNativeAd = mintegralNativeAd;
        this.adLoadCallback = mintegralNativeAd.adLoadCallback;
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdClick(Campaign campaign) {
        MediationNativeAdCallback mediationNativeAdCallback = this.nativeCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdClicked();
            this.nativeCallback.onAdLeftApplication();
        }
    }

    @Override // com.mbridge.msdk.out.NativeAdWithCodeListener
    public void onAdLoadErrorWithCode(int i, String str) {
        AdError createSdkError = MintegralConstants.createSdkError(i, str);
        String str2 = MintegralMediationAdapter.TAG;
        createSdkError.toString();
        this.adLoadCallback.onFailure(createSdkError);
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdLoaded(List<Campaign> list, int i) {
        if (list != null && list.size() != 0) {
            this.mintegralNativeAd.mapNativeAd(list.get(0));
            this.nativeCallback = this.adLoadCallback.onSuccess(this.mintegralNativeAd);
            return;
        }
        AdError createAdapterError = MintegralConstants.createAdapterError(104, "Mintegral SDK failed to return a native ad.");
        String str = MintegralMediationAdapter.TAG;
        createAdapterError.toString();
        this.adLoadCallback.onFailure(createAdapterError);
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onLoggingImpression(int i) {
        MediationNativeAdCallback mediationNativeAdCallback = this.nativeCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdImpression();
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdFramesLoaded(List<Frame> list) {
    }
}
