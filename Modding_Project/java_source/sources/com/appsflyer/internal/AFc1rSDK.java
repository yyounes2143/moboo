package com.appsflyer.internal;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFc1rSDK {
    @NotNull
    final List<AFc1sSDK> getMediationNetwork;

    public AFc1rSDK(@NotNull List<AFc1sSDK> list) {
        this.getMediationNetwork = list;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AFc1rSDK) && Intrinsics.areEqual(this.getMediationNetwork, ((AFc1rSDK) obj).getMediationNetwork)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.getMediationNetwork.hashCode();
    }

    @NotNull
    public final String toString() {
        List<AFc1sSDK> list = this.getMediationNetwork;
        return "StorageConfig(typeEntries=" + list + ")";
    }
}
