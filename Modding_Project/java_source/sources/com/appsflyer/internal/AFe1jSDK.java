package com.appsflyer.internal;

import android.os.Build;
import androidx.annotation.CallSuper;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class AFe1jSDK extends AFe1fSDK<String> {
    @NotNull
    private final AFe1pSDK component2;
    @NotNull
    private final AFc1qSDK copy;
    @NotNull
    private final Map<String, Object> copydefault;
    @NotNull
    private final AFc1oSDK equals;
    @NotNull
    private final AFg1nSDK hashCode;
    @NotNull
    private final AFf1fSDK toString;

    public AFe1jSDK(@NotNull AFe1pSDK aFe1pSDK, @NotNull AFe1pSDK[] aFe1pSDKArr, @NotNull AFd1zSDK aFd1zSDK, @Nullable String str, @NotNull Map<String, ? extends Object> map) {
        super(aFe1pSDK, aFe1pSDKArr, aFd1zSDK, null);
        this.component2 = aFe1pSDK;
        this.copydefault = map;
        this.equals = aFd1zSDK.AFAdRevenueData();
        this.copy = aFd1zSDK.component4();
        this.hashCode = aFd1zSDK.component3();
        this.toString = aFd1zSDK.afDebugLog();
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    public final AFd1hSDK<String> AFAdRevenueData(@NotNull String str) {
        String str2;
        String str3;
        AFd1bSDK aFd1bSDK;
        Map<String, Object> mutableMap = MapsKt.toMutableMap(this.copydefault);
        String currencyIso4217Code = getCurrencyIso4217Code(mutableMap);
        String monetizationNetwork = getMonetizationNetwork(mutableMap);
        Map<String, Object> mutableMap2 = MapsKt.toMutableMap(mutableMap);
        getMonetizationNetwork(mutableMap2, currencyIso4217Code);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String areAllFieldsValid = this.equals.areAllFieldsValid();
        if (areAllFieldsValid != null && !StringsKt.isBlank(areAllFieldsValid)) {
            linkedHashMap.put("advertising_id", areAllFieldsValid);
        }
        AFb1jSDK mediationNetwork = AFb1lSDK.getMediationNetwork(this.equals.getCurrencyIso4217Code.getMonetizationNetwork);
        String str4 = null;
        if (mediationNetwork != null) {
            str2 = mediationNetwork.getRevenue;
        } else {
            str2 = null;
        }
        if (str2 != null && !StringsKt.isBlank(str2)) {
            linkedHashMap.put("oaid", str2);
        }
        AFb1jSDK l_ = AFb1lSDK.l_(this.equals.getCurrencyIso4217Code.getMonetizationNetwork.getContentResolver());
        if (l_ != null) {
            str3 = l_.getRevenue;
        } else {
            str3 = null;
        }
        if (str3 != null && !StringsKt.isBlank(str3)) {
            linkedHashMap.put("amazon_aid", str3);
        }
        if (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            String monetizationNetwork2 = ((AFe1fSDK) this).component1.getMonetizationNetwork(this.copy);
            if (monetizationNetwork2 != null && !StringsKt.isBlank(monetizationNetwork2)) {
                linkedHashMap.put("imei", monetizationNetwork2);
            }
        } else {
            mutableMap2.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
        }
        String currencyIso4217Code2 = AFb1kSDK.getCurrencyIso4217Code(this.equals.getMediationNetwork);
        if (currencyIso4217Code2 == null) {
            currencyIso4217Code2 = "";
        }
        linkedHashMap.put("appsflyer_id", currencyIso4217Code2);
        linkedHashMap.put(TPDownloadProxyEnum.USER_OS_VERSION, String.valueOf(Build.VERSION.SDK_INT));
        linkedHashMap.put("sdk_version", "6.17.5");
        if (monetizationNetwork != null && !StringsKt.isBlank(monetizationNetwork)) {
            linkedHashMap.put("sdk_connector_version", monetizationNetwork);
        }
        this.hashCode.getMediationNetwork(linkedHashMap, this.component2);
        mutableMap2.put("device_data", linkedHashMap);
        this.toString.getCurrencyIso4217Code(mutableMap2, this.component2);
        AFd1hSDK<String> revenue = getRevenue(mutableMap2, str, currencyIso4217Code);
        if (revenue != null && (aFd1bSDK = revenue.getMonetizationNetwork) != null) {
            str4 = aFd1bSDK.getMediationNetwork;
        }
        if (str4 != null) {
            JSONObject jSONObject = new JSONObject(mutableMap2);
            AFg1aSDK.getRevenue(toString() + ": preparing data: ", jSONObject);
            this.component3.getRevenue(str4, jSONObject.toString());
        }
        return revenue;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    public final AppsFlyerRequestListener component2() {
        return null;
    }

    public boolean component3() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final boolean copydefault() {
        return true;
    }

    @Nullable
    public String getCurrencyIso4217Code(@NotNull Map<String, Object> map) {
        return null;
    }

    @Nullable
    public String getMonetizationNetwork(@NotNull Map<String, Object> map) {
        return null;
    }

    @Nullable
    public abstract AFd1hSDK<String> getRevenue(@NotNull Map<String, Object> map, @NotNull String str, @Nullable String str2);

    @CallSuper
    public void getMonetizationNetwork(@NotNull Map<String, Object> map, @Nullable String str) {
        map.put("app_id", this.equals.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName());
        String revenue = AFc1oSDK.getRevenue();
        if (revenue != null) {
            map.put("cuid", revenue);
        }
        map.put(TPDownloadProxyEnum.USER_APP_VERSION, this.equals.n_().versionName);
        if (component3()) {
            map.put("event_timestamp", Long.valueOf(this.hashCode.getCurrencyIso4217Code()));
        }
        if (str != null) {
            map.put("billing_lib_version", str);
        }
    }
}
