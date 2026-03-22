package com.appsflyer.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFi1rSDK {
    @NotNull
    public final String getCurrencyIso4217Code;
    private final boolean getMediationNetwork;
    @Nullable
    public final String getMonetizationNetwork;
    @Nullable
    public final String getRevenue;

    public AFi1rSDK(@NotNull String str, @Nullable String str2, @Nullable String str3, boolean z) {
        this.getCurrencyIso4217Code = str;
        this.getRevenue = str2;
        this.getMonetizationNetwork = str3;
        this.getMediationNetwork = z;
    }

    public final boolean getMediationNetwork() {
        return this.getMediationNetwork;
    }
}
