package com.appsflyer.internal;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFh1aSDK {
    public final int getCurrencyIso4217Code;
    public final int getMediationNetwork;
    public final long getMonetizationNetwork;
    public final String getRevenue;

    public AFh1aSDK(String str, int i, int i2, long j) {
        this.getRevenue = str;
        this.getCurrencyIso4217Code = i;
        this.getMediationNetwork = i2;
        this.getMonetizationNetwork = j;
    }

    public final String AFAdRevenueData() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_ver", this.getRevenue);
            jSONObject.put("min", this.getCurrencyIso4217Code);
            jSONObject.put("expire", this.getMediationNetwork);
            jSONObject.put("ttl", this.getMonetizationNetwork);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public final boolean equals(Object obj) {
        String str;
        if (this == obj) {
            return true;
        }
        if (obj != null && AFh1aSDK.class == obj.getClass()) {
            AFh1aSDK aFh1aSDK = (AFh1aSDK) obj;
            if (this.getCurrencyIso4217Code == aFh1aSDK.getCurrencyIso4217Code && this.getMediationNetwork == aFh1aSDK.getMediationNetwork && this.getMonetizationNetwork == aFh1aSDK.getMonetizationNetwork && (str = this.getRevenue) != null && str.equals(aFh1aSDK.getRevenue)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        String str = this.getRevenue;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return (((((i * 31) + this.getCurrencyIso4217Code) * 31) + this.getMediationNetwork) * 31) + ((int) this.getMonetizationNetwork);
    }
}
