package com.appsflyer.internal;

import android.app.Activity;
import android.content.Intent;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFh1qSDK {
    @Nullable
    public final String AFAdRevenueData;
    @NotNull
    public final String getCurrencyIso4217Code;
    @Nullable
    public final Intent getMonetizationNetwork;

    public AFh1qSDK(@NotNull Activity activity, @NotNull AFi1oSDK aFi1oSDK) {
        this.getMonetizationNetwork = activity.getIntent();
        this.getCurrencyIso4217Code = aFi1oSDK.getMediationNetwork(activity);
        this.AFAdRevenueData = aFi1oSDK.getRevenue(activity);
    }
}
