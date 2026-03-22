package com.appsflyer.internal;

import androidx.exifinterface.media.ExifInterface;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFh1wSDK extends AFh1ySDK {
    private final boolean getCurrencyIso4217Code = true;
    @NotNull
    private final AFd1zSDK getMediationNetwork;

    public AFh1wSDK(@NotNull AFd1zSDK aFd1zSDK) {
        this.getMediationNetwork = aFd1zSDK;
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void d(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z) {
        if (z) {
            this.getMediationNetwork.copy().getMonetizationNetwork("D", getMediationNetwork(str, aFg1cSDK));
        }
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th, boolean z, boolean z2, boolean z3, boolean z4) {
        if (z4) {
            this.getMediationNetwork.copy().getMonetizationNetwork(ExifInterface.LONGITUDE_EAST, getMediationNetwork(str, aFg1cSDK));
        }
        if (z4) {
            this.getMediationNetwork.copy().getRevenue(th);
        }
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void force(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        this.getMediationNetwork.copy().getMonetizationNetwork("F", getMediationNetwork(str, aFg1cSDK));
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final boolean getShouldExtendMsg() {
        return this.getCurrencyIso4217Code;
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void i(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z) {
        if (z) {
            this.getMediationNetwork.copy().getMonetizationNetwork("I", getMediationNetwork(str, aFg1cSDK));
        }
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void v(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z) {
        if (z) {
            this.getMediationNetwork.copy().getMonetizationNetwork(ExifInterface.GPS_MEASUREMENT_INTERRUPTED, getMediationNetwork(str, aFg1cSDK));
        }
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void w(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z) {
        if (z) {
            this.getMediationNetwork.copy().getMonetizationNetwork(ExifInterface.LONGITUDE_WEST, getMediationNetwork(str, aFg1cSDK));
        }
    }
}
