package com.google.ads.mediation.mintegral.rtb;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralBidNewInterstitialAdWrapper;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.ads.mediation.mintegral.MintegralFactory;
import com.google.ads.mediation.mintegral.MintegralMediationAdapter;
import com.google.ads.mediation.mintegral.MintegralUtils;
import com.google.ads.mediation.mintegral.mediation.MintegralInterstitialAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class MintegralRtbInterstitialAd extends MintegralInterstitialAd {
    private MintegralBidNewInterstitialAdWrapper mbBidNewInterstitialAdWrapper;

    public MintegralRtbInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        super(mediationInterstitialAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.ads.mediation.mintegral.mediation.MintegralInterstitialAd
    public void loadAd() {
        String string = this.adConfiguration.getServerParameters().getString(MintegralConstants.AD_UNIT_ID);
        String string2 = this.adConfiguration.getServerParameters().getString("placement_id");
        String bidResponse = this.adConfiguration.getBidResponse();
        AdError validateMintegralAdLoadParams = MintegralUtils.validateMintegralAdLoadParams(string, string2, bidResponse);
        if (validateMintegralAdLoadParams != null) {
            this.adLoadCallback.onFailure(validateMintegralAdLoadParams);
            return;
        }
        MintegralBidNewInterstitialAdWrapper createBidInterstitialHandler = MintegralFactory.createBidInterstitialHandler();
        this.mbBidNewInterstitialAdWrapper = createBidInterstitialHandler;
        createBidInterstitialHandler.createAd(this.adConfiguration.getContext(), string2, string);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MBridgeConstans.EXTRA_KEY_WM, this.adConfiguration.getWatermark());
            this.mbBidNewInterstitialAdWrapper.setExtraInfo(jSONObject);
        } catch (JSONException unused) {
            String str = MintegralMediationAdapter.TAG;
        }
        this.mbBidNewInterstitialAdWrapper.setInterstitialVideoListener(this);
        this.mbBidNewInterstitialAdWrapper.loadFromBid(bidResponse);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(@NonNull Context context) {
        int i;
        boolean shouldMuteAudio = MintegralUtils.shouldMuteAudio(this.adConfiguration.getMediationExtras());
        MintegralBidNewInterstitialAdWrapper mintegralBidNewInterstitialAdWrapper = this.mbBidNewInterstitialAdWrapper;
        if (shouldMuteAudio) {
            i = 1;
        } else {
            i = 2;
        }
        mintegralBidNewInterstitialAdWrapper.playVideoMute(i);
        this.mbBidNewInterstitialAdWrapper.showFromBid();
    }
}
