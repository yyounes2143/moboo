package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFb1gSDK {
    @NotNull
    public final String getMediationNetwork;
    public final int getMonetizationNetwork;

    public AFb1gSDK(int i, @NotNull String str) {
        this.getMonetizationNetwork = i;
        this.getMediationNetwork = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFb1gSDK)) {
            return false;
        }
        AFb1gSDK aFb1gSDK = (AFb1gSDK) obj;
        if (this.getMonetizationNetwork == aFb1gSDK.getMonetizationNetwork && Intrinsics.areEqual(this.getMediationNetwork, aFb1gSDK.getMediationNetwork)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.getMonetizationNetwork * 31) + this.getMediationNetwork.hashCode();
    }

    @NotNull
    public final String toString() {
        int i = this.getMonetizationNetwork;
        String str = this.getMediationNetwork;
        return "AppSetIdModel(scope=" + i + ", id=" + str + ")";
    }
}
