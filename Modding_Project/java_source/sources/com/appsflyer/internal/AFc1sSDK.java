package com.appsflyer.internal;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFc1sSDK {
    @NotNull
    final String AFAdRevenueData;
    @NotNull
    final List<AFe1pSDK> getMediationNetwork;
    final int getMonetizationNetwork;

    /* JADX WARN: Multi-variable type inference failed */
    public AFc1sSDK(@NotNull String str, @NotNull List<? extends AFe1pSDK> list, int i) {
        this.AFAdRevenueData = str;
        this.getMediationNetwork = list;
        this.getMonetizationNetwork = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFc1sSDK)) {
            return false;
        }
        AFc1sSDK aFc1sSDK = (AFc1sSDK) obj;
        if (Intrinsics.areEqual(this.AFAdRevenueData, aFc1sSDK.AFAdRevenueData) && Intrinsics.areEqual(this.getMediationNetwork, aFc1sSDK.getMediationNetwork) && this.getMonetizationNetwork == aFc1sSDK.getMonetizationNetwork) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((this.AFAdRevenueData.hashCode() * 31) + this.getMediationNetwork.hashCode()) * 31) + this.getMonetizationNetwork;
    }

    @NotNull
    public final String toString() {
        String str = this.AFAdRevenueData;
        List<AFe1pSDK> list = this.getMediationNetwork;
        int i = this.getMonetizationNetwork;
        return "StorageConfigTypeEntry(cacheDirName=" + str + ", eventTypes=" + list + ", maxCapacity=" + i + ")";
    }
}
