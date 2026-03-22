package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.FirebaseMessagingServiceListener;
import com.google.firebase.messaging.FirebaseMessagingService;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFg1sSDK {
    public final AFc1qSDK getCurrencyIso4217Code;

    public AFg1sSDK(@NonNull Context context) {
        this.getCurrencyIso4217Code = AFa1ySDK.getRevenue().getMonetizationNetwork(context);
    }

    public static boolean AFAdRevenueData(@NonNull AFc1qSDK aFc1qSDK) {
        return aFc1qSDK.getMediationNetwork("sentRegisterRequestToAF", false);
    }

    public static boolean getMonetizationNetwork(Context context) {
        if (AppsFlyerLib.getInstance().isStopped()) {
            return false;
        }
        try {
            String str = FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT;
        } catch (ClassNotFoundException unused) {
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(AFg1cSDK.UNINSTALL, "An error occurred while trying to verify manifest declarations: ", th);
        }
        if (!AFj1kSDK.L_(context, new Intent("com.google.firebase.MESSAGING_EVENT", null, context, FirebaseMessagingServiceListener.class))) {
            return false;
        }
        return true;
    }

    @Nullable
    public final AFf1aSDK getRevenue() {
        String string;
        String string2;
        String monetizationNetwork = this.getCurrencyIso4217Code.getMonetizationNetwork("afUninstallToken", (String) null);
        long monetizationNetwork2 = this.getCurrencyIso4217Code.getMonetizationNetwork("afUninstallToken_received_time", 0L);
        boolean mediationNetwork = this.getCurrencyIso4217Code.getMediationNetwork("afUninstallToken_queued", false);
        this.getCurrencyIso4217Code.AFAdRevenueData("afUninstallToken_queued", false);
        if (monetizationNetwork == null && (string2 = AppsFlyerProperties.getInstance().getString("afUninstallToken")) != null) {
            String[] split = string2.split(",");
            monetizationNetwork = split[split.length - 1];
        }
        if (monetizationNetwork2 == 0 && (string = AppsFlyerProperties.getInstance().getString("afUninstallToken")) != null) {
            String[] split2 = string.split(",");
            if (split2.length >= 2) {
                try {
                    monetizationNetwork2 = Long.parseLong(split2[split2.length - 2]);
                } catch (NumberFormatException unused) {
                }
            }
        }
        if (monetizationNetwork == null) {
            return null;
        }
        return new AFf1aSDK(monetizationNetwork, monetizationNetwork2, mediationNetwork);
    }
}
