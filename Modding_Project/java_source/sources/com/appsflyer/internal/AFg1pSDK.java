package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFg1pSDK extends AFe1fSDK<Map<String, Object>> {
    private static final List<String> component2 = Arrays.asList("googleplay", "playstore", "googleplaystore");
    @Nullable
    private String AFKeystoreWrapper;
    private final AFh1xSDK copy;
    private final AFd1nSDK copydefault;
    private final AFc1oSDK equals;
    @Nullable
    private Map<String, Object> hashCode;
    private final AFc1qSDK toString;

    public AFg1pSDK(@NonNull AFd1zSDK aFd1zSDK) {
        super(AFe1pSDK.GCDSDK, new AFe1pSDK[]{AFe1pSDK.RC_CDN}, aFd1zSDK, "GCD-FETCH");
        this.copydefault = aFd1zSDK.getRevenue();
        this.toString = aFd1zSDK.component4();
        this.copy = aFd1zSDK.areAllFieldsValid();
        this.equals = aFd1zSDK.AFAdRevenueData();
        this.getCurrencyIso4217Code.add(AFe1pSDK.CONVERSION);
        this.getCurrencyIso4217Code.add(AFe1pSDK.LAUNCH);
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final AFd1hSDK<Map<String, Object>> AFAdRevenueData(@NonNull String str) {
        String str2;
        String AFAdRevenueData = AFa1ySDK.AFAdRevenueData(this.toString, this.equals.component3());
        if (AFAdRevenueData != null && !AFAdRevenueData.trim().isEmpty()) {
            if (!component2.contains(AFAdRevenueData.toLowerCase(Locale.getDefault()))) {
                str2 = "-".concat(AFAdRevenueData);
                AFd1hSDK<Map<String, Object>> monetizationNetwork = this.copydefault.getMonetizationNetwork(str2, str);
                StringBuilder sb = new StringBuilder("[GCD-B01] URL: ");
                sb.append(monetizationNetwork.getMonetizationNetwork.getMediationNetwork);
                AFLogger.afInfoLog(sb.toString());
                return monetizationNetwork;
            }
            AFLogger.afWarnLog(String.format("[GCD] AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix.", AFAdRevenueData));
        }
        str2 = "";
        AFd1hSDK<Map<String, Object>> monetizationNetwork2 = this.copydefault.getMonetizationNetwork(str2, str);
        StringBuilder sb2 = new StringBuilder("[GCD-B01] URL: ");
        sb2.append(monetizationNetwork2.getMonetizationNetwork.getMediationNetwork);
        AFLogger.afInfoLog(sb2.toString());
        return monetizationNetwork2;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    public final AppsFlyerRequestListener component2() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final void getCurrencyIso4217Code() {
        super.getCurrencyIso4217Code();
        Map<String, Object> map = this.hashCode;
        String str = this.AFKeystoreWrapper;
        if (map != null) {
            AFg1oSDK.getCurrencyIso4217Code(map);
        } else if (str != null && !str.isEmpty()) {
            AFg1oSDK.getRevenue(str);
        } else {
            AFg1oSDK.getRevenue("Unknown error");
        }
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008d A[Catch: all -> 0x0070, Exception -> 0x0073, AFe1nSDK -> 0x0076, TryCatch #3 {AFe1nSDK -> 0x0076, Exception -> 0x0073, blocks: (B:11:0x0025, B:14:0x0036, B:21:0x0046, B:29:0x0059, B:38:0x0079, B:40:0x008d, B:42:0x00a7, B:44:0x00ad, B:45:0x00b8, B:47:0x00be, B:49:0x00c4, B:50:0x00da, B:51:0x00eb, B:53:0x010a, B:54:0x010f), top: B:69:0x0025, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00be A[Catch: all -> 0x0070, Exception -> 0x0073, AFe1nSDK -> 0x0076, TryCatch #3 {AFe1nSDK -> 0x0076, Exception -> 0x0073, blocks: (B:11:0x0025, B:14:0x0036, B:21:0x0046, B:29:0x0059, B:38:0x0079, B:40:0x008d, B:42:0x00a7, B:44:0x00ad, B:45:0x00b8, B:47:0x00be, B:49:0x00c4, B:50:0x00da, B:51:0x00eb, B:53:0x010a, B:54:0x010f), top: B:69:0x0025, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010a A[Catch: all -> 0x0070, Exception -> 0x0073, AFe1nSDK -> 0x0076, TryCatch #3 {AFe1nSDK -> 0x0076, Exception -> 0x0073, blocks: (B:11:0x0025, B:14:0x0036, B:21:0x0046, B:29:0x0059, B:38:0x0079, B:40:0x008d, B:42:0x00a7, B:44:0x00ad, B:45:0x00b8, B:47:0x00be, B:49:0x00c4, B:50:0x00da, B:51:0x00eb, B:53:0x010a, B:54:0x010f), top: B:69:0x0025, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0059 A[SYNTHETIC] */
    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFe1uSDK getRevenue() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1pSDK.getRevenue():com.appsflyer.internal.AFe1uSDK");
    }
}
