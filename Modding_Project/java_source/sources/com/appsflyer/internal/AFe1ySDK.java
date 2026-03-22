package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFe1ySDK {
    @NotNull
    final String getCurrencyIso4217Code;
    @NotNull
    final String getMonetizationNetwork;

    public AFe1ySDK(@NotNull String str, @NotNull String str2) {
        this.getMonetizationNetwork = str;
        this.getCurrencyIso4217Code = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFe1ySDK)) {
            return false;
        }
        AFe1ySDK aFe1ySDK = (AFe1ySDK) obj;
        if (Intrinsics.areEqual(this.getMonetizationNetwork, aFe1ySDK.getMonetizationNetwork) && Intrinsics.areEqual(this.getCurrencyIso4217Code, aFe1ySDK.getCurrencyIso4217Code)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.getMonetizationNetwork.hashCode() * 31) + this.getCurrencyIso4217Code.hashCode();
    }

    @NotNull
    public final String toString() {
        String str = this.getMonetizationNetwork;
        String str2 = this.getCurrencyIso4217Code;
        return "HostConfig(prefix=" + str + ", host=" + str2 + ")";
    }
}
