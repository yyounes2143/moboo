package com.changdu.mobovideo.plugins;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MetaInstallReferrerDetail {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public MetaInstallReferrerDetail(String str, long j, int i) {
        this.f5616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f5615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f5614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("referrerUrl", this.f5616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("actualTimestamp", this.f5615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("isCT", this.f5614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String jSONObject2 = jSONObject.toString();
        if (jSONObject2 == null) {
            return "";
        }
        return jSONObject2;
    }
}
