package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFi1vSDK {
    @NonNull
    public final String AFAdRevenueData;
    private final boolean getCurrencyIso4217Code;
    @NonNull
    public final String getMediationNetwork;
    @Nullable
    public final AFi1zSDK getMonetizationNetwork;
    @NonNull
    public final AFh1dSDK getRevenue;

    public AFi1vSDK(@NonNull String str) throws JSONException {
        AFh1dSDK aFh1dSDK;
        AFi1zSDK aFi1zSDK;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("ver");
                this.AFAdRevenueData = string;
                this.getCurrencyIso4217Code = jSONObject.optBoolean("test_mode");
                this.getMediationNetwork = str;
                if (string.startsWith("default")) {
                    aFh1dSDK = AFh1dSDK.DEFAULT;
                } else {
                    aFh1dSDK = AFh1dSDK.CUSTOM;
                }
                this.getRevenue = aFh1dSDK;
                JSONObject optJSONObject = jSONObject.optJSONObject("features");
                if (optJSONObject != null) {
                    aFi1zSDK = new AFi1zSDK(optJSONObject);
                } else {
                    aFi1zSDK = null;
                }
                this.getMonetizationNetwork = aFi1zSDK;
                return;
            } catch (JSONException e) {
                AFLogger.afErrorLogForExcManagerOnly("Error in RC config parsing", e);
                throw new JSONException("Failed to parse remote configuration JSON");
            }
        }
        throw new JSONException("Failed to parse remote configuration JSON: originalJson is null");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AFi1vSDK.class != obj.getClass()) {
            return false;
        }
        AFi1vSDK aFi1vSDK = (AFi1vSDK) obj;
        if (this.getCurrencyIso4217Code != aFi1vSDK.getCurrencyIso4217Code || !this.AFAdRevenueData.equals(aFi1vSDK.AFAdRevenueData)) {
            return false;
        }
        return this.getMediationNetwork.equals(aFi1vSDK.getMediationNetwork);
    }

    public final int hashCode() {
        int hashCode = ((((this.getCurrencyIso4217Code ? 1 : 0) * 31) + this.AFAdRevenueData.hashCode()) * 31) + this.getMediationNetwork.hashCode();
        AFi1zSDK aFi1zSDK = this.getMonetizationNetwork;
        if (aFi1zSDK != null) {
            return (hashCode * 31) + aFi1zSDK.hashCode();
        }
        return hashCode;
    }
}
