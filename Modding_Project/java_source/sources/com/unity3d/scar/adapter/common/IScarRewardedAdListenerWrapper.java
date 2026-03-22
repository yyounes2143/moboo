package com.unity3d.scar.adapter.common;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface IScarRewardedAdListenerWrapper extends IScarAdListenerWrapper {
    void onAdFailedToShow(int i, String str);

    void onAdImpression();

    void onUserEarnedReward();
}
