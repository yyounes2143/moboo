package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFi1wSDK {
    @Nullable
    public final String AFAdRevenueData;
    @Nullable
    public final AFi1ySDK areAllFieldsValid;
    @Nullable
    public final Throwable component1;
    @Nullable
    public final String component2;
    public final long getCurrencyIso4217Code;
    public final int getMediationNetwork;
    @NonNull
    public final String getMonetizationNetwork;
    public final long getRevenue;

    public AFi1wSDK(@Nullable String str, @NonNull String str2, long j, long j2, int i, @Nullable AFi1ySDK aFi1ySDK, @Nullable String str3, Throwable th) {
        this.AFAdRevenueData = str;
        this.getMonetizationNetwork = str2;
        this.getCurrencyIso4217Code = j;
        this.getRevenue = j2;
        this.getMediationNetwork = i;
        this.areAllFieldsValid = aFi1ySDK;
        this.component2 = str3;
        this.component1 = th;
    }
}
