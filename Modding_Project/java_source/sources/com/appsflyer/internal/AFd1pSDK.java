package com.appsflyer.internal;

import kotlin.Pair;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFd1pSDK {
    public static boolean getCurrencyIso4217Code(@NotNull String str, @NotNull String str2) {
        int mediationNetwork = AFk1xSDK.getMediationNetwork(str);
        int mediationNetwork2 = AFk1xSDK.getMediationNetwork(str2);
        Pair<Integer, Integer> monetizationNetwork = AFd1rSDK.getMonetizationNetwork(str2);
        Pair<Integer, Integer> AFAdRevenueData = AFd1rSDK.AFAdRevenueData(str2);
        if (mediationNetwork2 != -1 && monetizationNetwork == null) {
            if (mediationNetwork2 == mediationNetwork) {
                return true;
            }
            return false;
        } else if (AFAdRevenueData != null) {
            if (AFAdRevenueData.getFirst().intValue() <= mediationNetwork && mediationNetwork <= AFAdRevenueData.getSecond().intValue()) {
                return true;
            }
            return false;
        } else if (monetizationNetwork != null && monetizationNetwork.getFirst().intValue() <= mediationNetwork && mediationNetwork <= monetizationNetwork.getSecond().intValue()) {
            return true;
        } else {
            return false;
        }
    }
}
