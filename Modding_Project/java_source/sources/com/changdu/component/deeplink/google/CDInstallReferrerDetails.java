package com.changdu.component.deeplink.google;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CDInstallReferrerDetails {
    public static final String TYPE_BROADCAST_RECEIVER = "broadcastReceiver";
    public static final String TYPE_GOOGLE_PLAY_STORE_INSTALL_REFERRER_API = "googlePlayStoreApi";
    public long appInstallServerTime;
    public long appInstallTime;
    public Boolean instantExperienceLaunched;
    public long referrerClickServerTime;
    public long referrerClickTime;
    public String referrerUrl;
    public String type;
    public String version;

    public CDInstallReferrerDetails(String str, long j, long j2, long j3, long j4, String str2, Boolean bool, String str3) {
        this.referrerUrl = str;
        this.referrerClickTime = j;
        this.appInstallTime = j2;
        this.referrerClickServerTime = j3;
        this.appInstallServerTime = j4;
        this.version = str2;
        this.instantExperienceLaunched = bool;
        this.type = str3;
    }

    public String toJsonStr() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("referrerUrl", this.referrerUrl);
            jSONObject.put("referrerClickTime", this.referrerClickTime);
            jSONObject.put("appInstallTime", this.appInstallTime);
            jSONObject.put("referrerClickServerTime", this.referrerClickServerTime);
            jSONObject.put("appInstallServerTime", this.appInstallServerTime);
            jSONObject.put("instantExperienceLaunched", this.instantExperienceLaunched);
            jSONObject.put("version", this.version);
            jSONObject.put("installReferrerType", this.type);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String jSONObject2 = jSONObject.toString();
        if (jSONObject2 == null) {
            return "";
        }
        return jSONObject2;
    }

    public CDInstallReferrerDetails(String str, String str2) {
        this(str, -1L, -1L, -1L, -1L, "", Boolean.FALSE, str2);
    }

    public CDInstallReferrerDetails(String str, long j, long j2, String str2) {
        this(str, j, j2, -1L, -1L, "", Boolean.FALSE, str2);
    }
}
