package com.appsflyer.internal;

import com.appsflyer.AppsFlyerLib;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFk1ySDK implements AFk1zSDK {
    @Override // com.appsflyer.internal.AFk1zSDK
    @NotNull
    public final String getMediationNetwork(@NotNull String str) {
        return String.format(str, AppsFlyerLib.getInstance().getHostPrefix(), AFa1ySDK.getRevenue().getHostName());
    }
}
