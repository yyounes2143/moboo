package com.applovin.mediation;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface MaxError {
    @Deprecated
    String getAdLoadFailureInfo();

    int getCode();

    int getMediatedNetworkErrorCode();

    String getMediatedNetworkErrorMessage();

    String getMessage();

    long getRequestLatencyMillis();

    @Nullable
    MaxAdWaterfallInfo getWaterfall();
}
