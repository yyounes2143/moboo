package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.applovin.sdk.AppLovinEventParameters;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.AFe1oSDK;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFa1zSDK implements Runnable {
    final String AFAdRevenueData;
    private final Map<String, String> areAllFieldsValid;
    private final String component1;
    private final String component3;
    private final WeakReference<Context> getCurrencyIso4217Code;
    private final String getMediationNetwork;
    final String getMonetizationNetwork;
    final String getRevenue;

    public AFa1zSDK(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map) {
        this.getCurrencyIso4217Code = new WeakReference<>(context);
        this.getMediationNetwork = str;
        this.component1 = str2;
        this.getMonetizationNetwork = str4;
        this.getRevenue = str5;
        this.AFAdRevenueData = str6;
        this.areAllFieldsValid = map;
        this.component3 = str3;
    }

    public static void AFAdRevenueData(boolean z, String str, String str2, String str3, String str4) {
        if (AFa1ySDK.getCurrencyIso4217Code != null) {
            StringBuilder sb = new StringBuilder("Validate callback parameters: ");
            sb.append(str);
            sb.append(" ");
            sb.append(str2);
            sb.append(" ");
            sb.append(str3);
            AFLogger.afDebugLog(sb.toString());
            if (z) {
                AFLogger.afDebugLog("Validate in app purchase success: ".concat(String.valueOf(str4)));
                AFa1ySDK.getCurrencyIso4217Code.onValidateInApp();
                return;
            }
            AFLogger.afDebugLog("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AFa1ySDK.getCurrencyIso4217Code;
            if (str4 == null) {
                str4 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str4);
        }
    }

    private static AFf1sSDK getCurrencyIso4217Code(Context context, @NonNull AFh1fSDK aFh1fSDK) {
        AFa1ySDK.getRevenue().AFAdRevenueData(context);
        AFd1zSDK monetizationNetwork = AFa1ySDK.getRevenue().getMonetizationNetwork();
        aFh1fSDK.AFAdRevenueData(monetizationNetwork.AFAdRevenueData().getMediationNetwork.getRevenue("appsFlyerCount", 0));
        AFf1sSDK aFf1sSDK = new AFf1sSDK(aFh1fSDK, monetizationNetwork);
        AFe1oSDK copydefault = monetizationNetwork.copydefault();
        copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFf1sSDK));
        return aFf1sSDK;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AFb1jSDK aFb1jSDK;
        String str = this.getMediationNetwork;
        if (str != null && str.length() != 0 && !AppsFlyerLib.getInstance().isStopped()) {
            try {
                Context context = this.getCurrencyIso4217Code.get();
                if (context != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("public-key", this.component1);
                    hashMap.put("sig-data", this.getMonetizationNetwork);
                    hashMap.put(InAppPurchaseMetaData.KEY_SIGNATURE, this.component3);
                    Object hashMap2 = new HashMap(hashMap);
                    Object obj = this.areAllFieldsValid;
                    String monetizationNetwork = AFa1ySDK.getRevenue().getMonetizationNetwork().component4().getMonetizationNetwork("referrer", "");
                    AFh1cSDK aFh1cSDK = new AFh1cSDK();
                    aFh1cSDK.component1 = monetizationNetwork;
                    AFa1ySDK revenue = AFa1ySDK.getRevenue();
                    Map<String, Object> monetizationNetwork2 = revenue.getMonetizationNetwork(aFh1cSDK);
                    monetizationNetwork2.put("price", this.getRevenue);
                    monetizationNetwork2.put("currency", this.AFAdRevenueData);
                    monetizationNetwork2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, hashMap2);
                    if (obj != null) {
                        monetizationNetwork2.put("extra_prms", obj);
                    }
                    monetizationNetwork2.putAll(revenue.getMonetizationNetwork().AFInAppEventType().getRevenue());
                    aFh1cSDK.AFAdRevenueData(monetizationNetwork2);
                    getCurrencyIso4217Code(context, aFh1cSDK);
                    hashMap.put("dev_key", this.getMediationNetwork);
                    hashMap.put("app_id", context.getPackageName());
                    hashMap.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
                    AFh1rSDK aFh1rSDK = AFa1ySDK.getRevenue().getMonetizationNetwork().AFAdRevenueData().getMonetizationNetwork.component3;
                    String str2 = null;
                    if (aFh1rSDK != null) {
                        aFb1jSDK = new AFb1jSDK(aFh1rSDK.getCurrencyIso4217Code, aFh1rSDK.getRevenue);
                    } else {
                        aFb1jSDK = null;
                    }
                    if (aFb1jSDK != null) {
                        str2 = aFb1jSDK.getRevenue;
                    }
                    if (str2 != null) {
                        hashMap.put("advertiserId", str2);
                    }
                    AFh1bSDK aFh1bSDK = (AFh1bSDK) new AFh1bSDK().AFAdRevenueData(hashMap);
                    final AFf1sSDK currencyIso4217Code = getCurrencyIso4217Code(context, aFh1bSDK);
                    aFh1bSDK.getCurrencyIso4217Code = new AppsFlyerRequestListener() { // from class: com.appsflyer.internal.AFa1zSDK.2
                        @Override // com.appsflyer.attribution.AppsFlyerRequestListener
                        public final void onError(int i, @NonNull String str3) {
                            ResponseNetwork responseNetwork;
                            if (i == 50 && (responseNetwork = ((AFe1fSDK) currencyIso4217Code).areAllFieldsValid) != null) {
                                str3 = responseNetwork.toString();
                            }
                            AFa1zSDK aFa1zSDK = AFa1zSDK.this;
                            AFa1zSDK.AFAdRevenueData(false, aFa1zSDK.getMonetizationNetwork, aFa1zSDK.getRevenue, aFa1zSDK.AFAdRevenueData, str3);
                        }

                        @Override // com.appsflyer.attribution.AppsFlyerRequestListener
                        public final void onSuccess() {
                            try {
                                JSONObject jSONObject = new JSONObject((String) ((AFe1fSDK) currencyIso4217Code).areAllFieldsValid.getBody());
                                AFLogger.afInfoLog("Validate response ok: ".concat(String.valueOf(jSONObject)));
                                boolean optBoolean = jSONObject.optBoolean("result");
                                AFa1zSDK aFa1zSDK = AFa1zSDK.this;
                                AFa1zSDK.AFAdRevenueData(optBoolean, aFa1zSDK.getMonetizationNetwork, aFa1zSDK.getRevenue, aFa1zSDK.AFAdRevenueData, jSONObject.toString());
                            } catch (Exception e) {
                                AFLogger.afErrorLog("Failed Validate request: ".concat(String.valueOf(e)), e);
                                AFa1zSDK aFa1zSDK2 = AFa1zSDK.this;
                                AFa1zSDK.AFAdRevenueData(false, aFa1zSDK2.getMonetizationNetwork, aFa1zSDK2.getRevenue, aFa1zSDK2.AFAdRevenueData, e.getMessage());
                            }
                        }
                    };
                }
            } catch (Throwable th) {
                if (AFa1ySDK.getCurrencyIso4217Code != null) {
                    AFLogger.afErrorLog("Failed Validate request + ex", th);
                    AFAdRevenueData(false, this.getMonetizationNetwork, this.getRevenue, this.AFAdRevenueData, th.getMessage());
                }
                AFLogger.afErrorLog(th.getMessage(), th);
            }
        }
    }
}
