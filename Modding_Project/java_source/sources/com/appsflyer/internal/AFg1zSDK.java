package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.appsflyer.AFLogger;
import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFg1zSDK {
    @NotNull
    private final String AFAdRevenueData;
    @NotNull
    private final Map<String, Object> getCurrencyIso4217Code = new LinkedHashMap();
    @Nullable
    private final PackageManager getMediationNetwork;

    public AFg1zSDK(@NotNull AFc1hSDK aFc1hSDK, @NotNull AFc1oSDK aFc1oSDK) {
        PackageManager packageManager;
        Context context = aFc1hSDK.getMonetizationNetwork;
        if (context != null) {
            packageManager = context.getPackageManager();
        } else {
            packageManager = null;
        }
        this.getMediationNetwork = packageManager;
        this.AFAdRevenueData = aFc1oSDK.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
        r0 = r2.getInstallSourceInfo(r0);
     */
    @androidx.annotation.RequiresApi(30)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.Map<java.lang.String, java.lang.Object> getRevenue() {
        /*
            r12 = this;
            java.util.LinkedHashMap r1 = new java.util.LinkedHashMap
            r1.<init>()
            java.lang.String r0 = r12.AFAdRevenueData     // Catch: java.lang.Throwable -> L22
            android.content.pm.PackageManager r2 = r12.getMediationNetwork     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L4c
            android.content.pm.InstallSourceInfo r0 = com.applovin.impl.sdk.Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r0)     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L4c
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L22
            r2.<init>()     // Catch: java.lang.Throwable -> L22
            java.lang.String r3 = "initiating_package"
            java.lang.String r4 = com.appsflyer.internal.Wwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L22
            if (r4 == 0) goto L25
            r2.put(r3, r4)     // Catch: java.lang.Throwable -> L22
            goto L25
        L22:
            r0 = move-exception
            r5 = r0
            goto L3c
        L25:
            java.lang.String r3 = "installing_package"
            java.lang.String r4 = com.applovin.impl.sdk.Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L22
            if (r4 == 0) goto L30
            r2.put(r3, r4)     // Catch: java.lang.Throwable -> L22
        L30:
            java.lang.String r3 = "originating_package"
            java.lang.String r0 = com.appsflyer.internal.Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L3b
            r2.put(r3, r0)     // Catch: java.lang.Throwable -> L22
        L3b:
            return r2
        L3c:
            com.appsflyer.AFLogger r2 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r3 = com.appsflyer.internal.AFg1cSDK.DEVICE_DATA
            r10 = 16
            r11 = 0
            java.lang.String r4 = "Failed to get the app install source info"
            r6 = 1
            r7 = 0
            r8 = 1
            r9 = 1
            com.appsflyer.internal.AFh1ySDK.e$default(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
        L4c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1zSDK.getRevenue():java.util.Map");
    }

    @NotNull
    public final Map<String, Object> AFAdRevenueData() {
        String installerPackageName;
        if (this.getCurrencyIso4217Code.isEmpty()) {
            try {
                PackageManager packageManager = this.getMediationNetwork;
                if (packageManager != null && (installerPackageName = packageManager.getInstallerPackageName(this.AFAdRevenueData)) != null) {
                    this.getCurrencyIso4217Code.put("installer_package", installerPackageName);
                }
            } catch (Exception e) {
                AFLogger.afErrorLog("Exception while getting the app's installer package. ", e);
            }
            if (Build.VERSION.SDK_INT >= 30) {
                this.getCurrencyIso4217Code.put("install_source_info", getRevenue());
            }
        }
        return this.getCurrencyIso4217Code;
    }
}
