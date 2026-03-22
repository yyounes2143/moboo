package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFi1jSDK {
    @Nullable
    public final String AFAdRevenueData;
    public final long getCurrencyIso4217Code;
    public final long getMediationNetwork;
    @Nullable
    public final String getRevenue;

    public AFi1jSDK(long j, long j2, @Nullable String str, @Nullable String str2) {
        this.getMediationNetwork = j;
        this.getCurrencyIso4217Code = j2;
        this.getRevenue = str;
        this.AFAdRevenueData = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFi1jSDK)) {
            return false;
        }
        AFi1jSDK aFi1jSDK = (AFi1jSDK) obj;
        if (this.getMediationNetwork == aFi1jSDK.getMediationNetwork && this.getCurrencyIso4217Code == aFi1jSDK.getCurrencyIso4217Code && Intrinsics.areEqual(this.getRevenue, aFi1jSDK.getRevenue) && Intrinsics.areEqual(this.AFAdRevenueData, aFi1jSDK.AFAdRevenueData)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.getMediationNetwork) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.getCurrencyIso4217Code)) * 31;
        String str = this.getRevenue;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + hashCode) * 31;
        String str2 = this.AFAdRevenueData;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i2 + i;
    }

    @NotNull
    public final String toString() {
        long j = this.getMediationNetwork;
        long j2 = this.getCurrencyIso4217Code;
        String str = this.getRevenue;
        String str2 = this.AFAdRevenueData;
        return "PlayIntegrityApiData(piaTimestamp=" + j + ", ttrMillis=" + j2 + ", piaToken=" + str + ", errorCode=" + str2 + ")";
    }
}
