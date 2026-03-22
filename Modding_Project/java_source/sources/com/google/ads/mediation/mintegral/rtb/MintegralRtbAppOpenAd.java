package com.google.ads.mediation.mintegral.rtb;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.ads.mediation.mintegral.MintegralFactory;
import com.google.ads.mediation.mintegral.MintegralMediationAdapter;
import com.google.ads.mediation.mintegral.MintegralUtils;
import com.google.ads.mediation.mintegral.mediation.MintegralAppOpenAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class MintegralRtbAppOpenAd extends MintegralAppOpenAd {
    private String bidToken;

    public MintegralRtbAppOpenAd(@NonNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NonNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback) {
        super(mediationAppOpenAdConfiguration, mediationAdLoadCallback);
    }

    private void setWatermark(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MBridgeConstans.EXTRA_KEY_WM, str);
            this.splashAdWrapper.setExtraInfo(jSONObject);
        } catch (JSONException unused) {
            String str2 = MintegralMediationAdapter.TAG;
        }
    }

    @Override // com.google.ads.mediation.mintegral.mediation.MintegralAppOpenAd
    public void loadAd() {
        Bundle serverParameters = this.adConfiguration.getServerParameters();
        String string = serverParameters.getString(MintegralConstants.AD_UNIT_ID);
        String string2 = serverParameters.getString("placement_id");
        String bidResponse = this.adConfiguration.getBidResponse();
        this.bidToken = bidResponse;
        AdError validateMintegralAdLoadParams = MintegralUtils.validateMintegralAdLoadParams(string, string2, bidResponse);
        if (validateMintegralAdLoadParams != null) {
            this.adLoadCallback.onFailure(validateMintegralAdLoadParams);
            return;
        }
        this.splashAdWrapper = MintegralFactory.createSplashAdWrapper();
        String watermark = this.adConfiguration.getWatermark();
        if (!TextUtils.isEmpty(watermark)) {
            setWatermark(watermark);
        }
        this.splashAdWrapper.createAd(string2, string);
        this.splashAdWrapper.setSplashLoadListener(this);
        this.splashAdWrapper.setSplashShowListener(this);
        this.splashAdWrapper.preLoadByToken(this.bidToken);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAppOpenAd
    public void showAd(@NonNull Context context) {
        Activity activity = (Activity) context;
        if (this.splashAdWrapper != null) {
            RelativeLayout relativeLayout = new RelativeLayout(activity);
            ((ViewGroup) activity.getWindow().getDecorView().findViewById(16908290)).addView(relativeLayout);
            this.splashAdWrapper.show(relativeLayout, this.bidToken);
        }
    }
}
