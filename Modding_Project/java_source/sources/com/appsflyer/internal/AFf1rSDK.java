package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.AFj1tSDK;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFf1rSDK extends AFf1sSDK {
    @NonNull
    private final AFf1kSDK AFInAppEventType;
    @NonNull
    private final AFa1lSDK AFKeystoreWrapper;
    @NonNull
    private final AppsFlyerProperties AFLogger;
    @NonNull
    private final AFc1qSDK copy;
    @NonNull
    private final AFj1sSDK copydefault;
    @NonNull
    private final AFh1xSDK equals;
    public Map<String, Object> hashCode;
    @Nullable
    private final AFh1pSDK registerClient;

    /* compiled from: Proguard */
    /* renamed from: com.appsflyer.internal.AFf1rSDK$4  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] getMonetizationNetwork;

        static {
            int[] iArr = new int[AFj1tSDK.AFa1tSDK.values().length];
            getMonetizationNetwork = iArr;
            try {
                iArr[AFj1tSDK.AFa1tSDK.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                getMonetizationNetwork[AFj1tSDK.AFa1tSDK.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public AFf1rSDK(@NonNull AFh1mSDK aFh1mSDK, @NonNull AFd1zSDK aFd1zSDK) {
        super(aFh1mSDK, aFd1zSDK);
        this.copydefault = aFd1zSDK.AFLogger();
        this.copy = aFd1zSDK.component4();
        this.equals = aFd1zSDK.areAllFieldsValid();
        this.AFInAppEventType = aFd1zSDK.component1();
        this.AFLogger = AppsFlyerProperties.getInstance();
        this.AFKeystoreWrapper = aFd1zSDK.afVerboseLog();
        this.registerClient = aFd1zSDK.afWarnLog();
        this.getCurrencyIso4217Code.add(AFe1pSDK.RESOLVE_ESP);
        this.getCurrencyIso4217Code.add(AFe1pSDK.DLSDK);
    }

    @VisibleForTesting
    private boolean copy() {
        boolean z;
        boolean z2;
        ResponseNetwork responseNetwork = ((AFe1fSDK) this).areAllFieldsValid;
        if (this.getMonetizationNetwork == AFe1uSDK.FAILURE && responseNetwork != null && responseNetwork.getStatusCode() / 500 == 1) {
            z = true;
        } else {
            z = false;
        }
        AFe1pSDK aFe1pSDK = this.getRevenue;
        if (aFe1pSDK != AFe1pSDK.CONVERSION && aFe1pSDK != AFe1pSDK.ATTR) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z || !z2) {
            return false;
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFf1sSDK
    public final void AFAdRevenueData(AFh1mSDK aFh1mSDK) {
        AFh1pSDK aFh1pSDK;
        AFj1tSDK[] aFj1tSDKArr;
        AFh1pSDK aFh1pSDK2;
        super.AFAdRevenueData(aFh1mSDK);
        int i = aFh1mSDK.component4;
        AFh1xSDK aFh1xSDK = this.equals;
        if (aFh1xSDK.getCurrencyIso4217Code()) {
            long currentTimeMillis = System.currentTimeMillis();
            aFh1xSDK.copy = currentTimeMillis;
            long j = aFh1xSDK.component4;
            if (j != 0) {
                aFh1xSDK.AFAdRevenueData.put("from_fg", Long.valueOf(currentTimeMillis - j));
                aFh1xSDK.getMonetizationNetwork.getRevenue("first_launch", new JSONObject(aFh1xSDK.AFAdRevenueData).toString());
            } else {
                AFLogger.afInfoLog("Metrics: fg ts is missing");
            }
        }
        Map map = (Map) aFh1mSDK.AFAdRevenueData.get("meta");
        if (map == null) {
            map = new HashMap();
            aFh1mSDK.AFAdRevenueData.put("meta", map);
        }
        if (!aFh1mSDK.AFAdRevenueData.containsKey("af_deeplink")) {
            aFh1mSDK.AFAdRevenueData(this.AFKeystoreWrapper.getRevenue());
        }
        AFi1wSDK currencyIso4217Code = this.AFInAppEventType.getCurrencyIso4217Code();
        if (currencyIso4217Code != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("cdn_token", currencyIso4217Code.getMonetizationNetwork);
            String str = currencyIso4217Code.AFAdRevenueData;
            if (str != null) {
                hashMap.put("c_ver", str);
            }
            long j2 = currencyIso4217Code.getCurrencyIso4217Code;
            if (j2 > 0) {
                hashMap.put("latency", Long.valueOf(j2));
            }
            long j3 = currencyIso4217Code.getRevenue;
            if (j3 > 0) {
                hashMap.put("delay", Long.valueOf(j3));
            }
            int i2 = currencyIso4217Code.getMediationNetwork;
            if (i2 > 0) {
                hashMap.put("res_code", Integer.valueOf(i2));
            }
            if (currencyIso4217Code.component1 != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(currencyIso4217Code.component1.getClass().getSimpleName());
                sb.append(": ");
                sb.append(currencyIso4217Code.component1.getMessage());
                hashMap.put("error", sb.toString());
            }
            AFi1ySDK aFi1ySDK = currencyIso4217Code.areAllFieldsValid;
            if (aFi1ySDK != null) {
                hashMap.put("sig", aFi1ySDK.toString());
            }
            String str2 = currencyIso4217Code.component2;
            if (str2 != null) {
                hashMap.put("cdn_cache_status", str2);
            }
            map.put(DownloadCommon.DOWNLOAD_REPORT_RETRY_COUNT, hashMap);
        }
        this.toString.getCurrencyIso4217Code(aFh1mSDK.AFAdRevenueData);
        if (i != 1) {
            if (i == 2) {
                AFh1xSDK aFh1xSDK2 = this.equals;
                aFh1xSDK2.getMonetizationNetwork.AFAdRevenueData("first_launch");
                HashMap hashMap2 = new HashMap(aFh1xSDK2.AFAdRevenueData);
                if (!hashMap2.isEmpty()) {
                    map.put("first_launch", hashMap2);
                }
                if ((aFh1mSDK instanceof AFh1kSDK) && (aFh1pSDK2 = this.registerClient) != null && !aFh1pSDK2.getRevenue()) {
                    this.registerClient.getMediationNetwork(aFh1mSDK);
                }
            }
        } else {
            if (this.AFLogger.getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
                aFh1mSDK.AFAdRevenueData.put("wait_cid", Boolean.toString(true));
            }
            AFh1xSDK aFh1xSDK3 = this.equals;
            HashMap hashMap3 = new HashMap(aFh1xSDK3.getMediationNetwork);
            aFh1xSDK3.getMediationNetwork.clear();
            if (!hashMap3.isEmpty()) {
                map.put("ddl", hashMap3);
            }
            HashMap hashMap4 = new HashMap(this.equals.AFAdRevenueData);
            if (!hashMap4.isEmpty()) {
                map.put("first_launch", hashMap4);
            }
            AFh1pSDK aFh1pSDK3 = this.registerClient;
            if (aFh1pSDK3 != null) {
                aFh1pSDK3.getCurrencyIso4217Code(aFh1mSDK);
            }
        }
        if (map.isEmpty()) {
            aFh1mSDK.AFAdRevenueData.remove("meta");
        }
        if (i <= 2) {
            ArrayList arrayList = new ArrayList();
            for (AFj1tSDK aFj1tSDK : (AFj1tSDK[]) this.copydefault.getRevenue.toArray(new AFj1tSDK[0])) {
                boolean z = aFj1tSDK instanceof AFi1aSDK;
                int i3 = AnonymousClass4.getMonetizationNetwork[aFj1tSDK.component4.ordinal()];
                if (i3 != 1) {
                    if (i3 == 2 && i == 2 && !z) {
                        HashMap hashMap5 = new HashMap();
                        hashMap5.put("source", aFj1tSDK.component3);
                        hashMap5.put("response", "TIMEOUT");
                        hashMap5.put("type", aFj1tSDK.areAllFieldsValid);
                        arrayList.add(hashMap5);
                    }
                } else {
                    if (z) {
                        aFh1mSDK.getMonetizationNetwork("rfr", ((AFi1aSDK) aFj1tSDK).getMonetizationNetwork);
                        this.copy.AFAdRevenueData(AppsFlyerProperties.NEW_REFERRER_SENT, true);
                    }
                    arrayList.add(aFj1tSDK.getMediationNetwork);
                }
            }
            if (!arrayList.isEmpty()) {
                aFh1mSDK.getMonetizationNetwork("referrers", arrayList);
            }
            Object obj = this.hashCode;
            if (obj != null) {
                aFh1mSDK.getMonetizationNetwork("fb_ddl", obj);
            }
        }
        if (aFh1mSDK.AFAdRevenueData() == AFe1pSDK.LAUNCH && (aFh1pSDK = this.registerClient) != null && aFh1pSDK.getMonetizationNetwork()) {
            this.registerClient.getMonetizationNetwork(aFh1mSDK);
        }
        this.toString.getMonetizationNetwork(aFh1mSDK);
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final void getCurrencyIso4217Code() {
        super.getCurrencyIso4217Code();
        AFh1xSDK aFh1xSDK = this.equals;
        if (aFh1xSDK.getCurrencyIso4217Code()) {
            long currentTimeMillis = System.currentTimeMillis();
            long j = aFh1xSDK.copy;
            if (j != 0) {
                aFh1xSDK.AFAdRevenueData.put("net", Long.valueOf(currentTimeMillis - j));
                aFh1xSDK.getMonetizationNetwork.getRevenue("first_launch", new JSONObject(aFh1xSDK.AFAdRevenueData).toString());
                return;
            }
            AFLogger.afInfoLog("Metrics: launch start ts is missing");
        }
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        if (!super.getMonetizationNetwork() && !copy()) {
            return false;
        }
        return true;
    }
}
