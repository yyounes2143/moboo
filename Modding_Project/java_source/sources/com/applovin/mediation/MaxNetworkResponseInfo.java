package com.applovin.mediation;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface MaxNetworkResponseInfo {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum AdLoadState {
        AD_LOAD_NOT_ATTEMPTED,
        AD_LOADED,
        FAILED_TO_LOAD
    }

    AdLoadState getAdLoadState();

    Bundle getCredentials();

    MaxError getError();

    long getLatencyMillis();

    MaxMediatedNetworkInfo getMediatedNetwork();

    boolean isBidding();
}
