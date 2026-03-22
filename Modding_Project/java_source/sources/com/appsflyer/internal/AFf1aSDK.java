package com.appsflyer.internal;

import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFf1aSDK {
    @JvmField
    public final boolean getMediationNetwork;
    @JvmField
    public final long getMonetizationNetwork;
    @JvmField
    @NotNull
    public final String getRevenue;

    public AFf1aSDK(@NotNull String str, long j, boolean z) {
        this.getRevenue = str;
        this.getMonetizationNetwork = j;
        this.getMediationNetwork = z;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFf1aSDK)) {
            return false;
        }
        AFf1aSDK aFf1aSDK = (AFf1aSDK) obj;
        if (Intrinsics.areEqual(this.getRevenue, aFf1aSDK.getRevenue) && this.getMonetizationNetwork == aFf1aSDK.getMonetizationNetwork && this.getMediationNetwork == aFf1aSDK.getMediationNetwork) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = ((this.getRevenue.hashCode() * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.getMonetizationNetwork)) * 31;
        boolean z = this.getMediationNetwork;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public final String toString() {
        String str = this.getRevenue;
        long j = this.getMonetizationNetwork;
        boolean z = this.getMediationNetwork;
        return "AFUninstallToken(token=" + str + ", receivedTime=" + j + ", isQueued=" + z + ")";
    }
}
