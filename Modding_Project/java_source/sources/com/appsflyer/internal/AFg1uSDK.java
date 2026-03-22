package com.appsflyer.internal;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface AFg1uSDK {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AFa1zSDK {
        @Nullable
        final String AFAdRevenueData;
        final float getMonetizationNetwork;

        public AFa1zSDK(float f, @Nullable String str) {
            this.getMonetizationNetwork = f;
            this.AFAdRevenueData = str;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AFa1zSDK)) {
                return false;
            }
            AFa1zSDK aFa1zSDK = (AFa1zSDK) obj;
            if (Float.compare(this.getMonetizationNetwork, aFa1zSDK.getMonetizationNetwork) == 0 && Intrinsics.areEqual(this.AFAdRevenueData, aFa1zSDK.AFAdRevenueData)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int floatToIntBits = Float.floatToIntBits(this.getMonetizationNetwork) * 31;
            String str = this.AFAdRevenueData;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return floatToIntBits + hashCode;
        }

        @NotNull
        public final String toString() {
            float f = this.getMonetizationNetwork;
            String str = this.AFAdRevenueData;
            return "BatteryData(level=" + f + ", charging=" + str + ")";
        }
    }

    @NotNull
    AFa1zSDK getCurrencyIso4217Code(@NotNull Context context);
}
