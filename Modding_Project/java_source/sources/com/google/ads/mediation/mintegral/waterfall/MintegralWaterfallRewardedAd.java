package com.google.ads.mediation.mintegral.waterfall;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.ads.mediation.mintegral.MintegralUtils;
import com.google.ads.mediation.mintegral.mediation.MintegralRewardedAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.mbridge.msdk.out.MBRewardVideoHandler;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class MintegralWaterfallRewardedAd extends MintegralRewardedAd {
    private MBRewardVideoHandler mbRewardVideoHandler;

    public MintegralWaterfallRewardedAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        super(mediationRewardedAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.ads.mediation.mintegral.mediation.MintegralRewardedAd
    public void loadAd() {
        String string = this.adConfiguration.getServerParameters().getString(MintegralConstants.AD_UNIT_ID);
        String string2 = this.adConfiguration.getServerParameters().getString("placement_id");
        AdError validateMintegralAdLoadParams = MintegralUtils.validateMintegralAdLoadParams(string, string2);
        if (validateMintegralAdLoadParams != null) {
            this.adLoadCallback.onFailure(validateMintegralAdLoadParams);
            return;
        }
        MBRewardVideoHandler mBRewardVideoHandler = new MBRewardVideoHandler(this.adConfiguration.getContext(), string2, string);
        this.mbRewardVideoHandler = mBRewardVideoHandler;
        mBRewardVideoHandler.setRewardVideoListener(this);
        this.mbRewardVideoHandler.load();
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(@NonNull Context context) {
        int i;
        boolean shouldMuteAudio = MintegralUtils.shouldMuteAudio(this.adConfiguration.getMediationExtras());
        MBRewardVideoHandler mBRewardVideoHandler = this.mbRewardVideoHandler;
        if (shouldMuteAudio) {
            i = 1;
        } else {
            i = 2;
        }
        mBRewardVideoHandler.playVideoMute(i);
        this.mbRewardVideoHandler.show();
    }
}
