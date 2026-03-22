package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFf1bSDK {
    final int AFAdRevenueData;
    final int getCurrencyIso4217Code;
    final int getMediationNetwork;
    @NotNull
    final String getMonetizationNetwork;
    final int getRevenue;

    public AFf1bSDK(int i, int i2, int i3, int i4, @NotNull String str) {
        this.getCurrencyIso4217Code = i;
        this.getMediationNetwork = i2;
        this.AFAdRevenueData = i3;
        this.getRevenue = i4;
        this.getMonetizationNetwork = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFf1bSDK)) {
            return false;
        }
        AFf1bSDK aFf1bSDK = (AFf1bSDK) obj;
        if (this.getCurrencyIso4217Code == aFf1bSDK.getCurrencyIso4217Code && this.getMediationNetwork == aFf1bSDK.getMediationNetwork && this.AFAdRevenueData == aFf1bSDK.AFAdRevenueData && this.getRevenue == aFf1bSDK.getRevenue && Intrinsics.areEqual(this.getMonetizationNetwork, aFf1bSDK.getMonetizationNetwork)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((((this.getCurrencyIso4217Code * 31) + this.getMediationNetwork) * 31) + this.AFAdRevenueData) * 31) + this.getRevenue) * 31) + this.getMonetizationNetwork.hashCode();
    }

    @NotNull
    public final String toString() {
        int i = this.getCurrencyIso4217Code;
        int i2 = this.getMediationNetwork;
        int i3 = this.AFAdRevenueData;
        int i4 = this.getRevenue;
        String str = this.getMonetizationNetwork;
        return "CmpTcfData(policyVersion=" + i + ", gdprApplies=" + i2 + ", cmpSdkId=" + i3 + ", cmpSdkVersion=" + i4 + ", tcString=" + str + ")";
    }
}
