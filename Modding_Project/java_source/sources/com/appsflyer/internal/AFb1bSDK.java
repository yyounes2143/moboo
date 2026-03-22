package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.appsflyer.internal.AFb1aSDK;
import java.util.concurrent.ScheduledExecutorService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFb1bSDK implements AFb1aSDK {
    @NotNull
    private final ScheduledExecutorService AFAdRevenueData;
    @NotNull
    private final AFa1mSDK getCurrencyIso4217Code;
    @Nullable
    private AFb1iSDK getMonetizationNetwork;
    @NotNull
    private final AFi1oSDK getRevenue;

    public AFb1bSDK(@NotNull ScheduledExecutorService scheduledExecutorService, @NotNull AFa1mSDK aFa1mSDK, @NotNull AFi1oSDK aFi1oSDK) {
        this.AFAdRevenueData = scheduledExecutorService;
        this.getCurrencyIso4217Code = aFa1mSDK;
        this.getRevenue = aFi1oSDK;
    }

    @Override // com.appsflyer.internal.AFb1aSDK
    public final void AFAdRevenueData(@NotNull Context context, @NotNull AFb1aSDK.AFa1tSDK aFa1tSDK) {
        if (this.getMonetizationNetwork != null) {
            ((Application) context.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.getMonetizationNetwork);
        }
        this.getMonetizationNetwork = null;
        AFb1iSDK aFb1iSDK = new AFb1iSDK(this.AFAdRevenueData, this.getCurrencyIso4217Code, this.getRevenue, aFa1tSDK);
        this.getMonetizationNetwork = aFb1iSDK;
        if (context instanceof Activity) {
            aFb1iSDK.onActivityResumed((Activity) context);
        }
        Application O_ = AFj1kSDK.O_(context);
        if (O_ != null) {
            O_.registerActivityLifecycleCallbacks(this.getMonetizationNetwork);
        }
    }

    @Override // com.appsflyer.internal.AFb1aSDK
    public final boolean getMediationNetwork() {
        if (this.getMonetizationNetwork != null) {
            return true;
        }
        return false;
    }

    @Override // com.appsflyer.internal.AFb1aSDK
    public final void getMonetizationNetwork() {
        AFb1aSDK.AFa1tSDK aFa1tSDK;
        AFb1iSDK aFb1iSDK = this.getMonetizationNetwork;
        if (aFb1iSDK != null && (aFa1tSDK = aFb1iSDK.getRevenue) != null) {
            aFa1tSDK.getMediationNetwork();
        }
    }
}
