package com.applovin.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.i4;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class x4 extends w4 {
    public x4(com.applovin.impl.sdk.k kVar) {
        super("TaskApiSubmitData", kVar);
    }

    private void b(JSONObject jSONObject) {
        com.applovin.impl.sdk.l B = this.f3803a.B();
        Map n = B.n();
        z6.a(TPDownloadProxyEnum.USER_PLATFORM, "type", n);
        z6.a("api_level", "sdk_version", n);
        JsonUtils.putObject(jSONObject, "device_info", new JSONObject(n));
        Map D = B.D();
        z6.a("sdk_version", "applovin_sdk_version", D);
        z6.a("ia", "installed_at", D);
        JsonUtils.putObject(jSONObject, "app_info", new JSONObject(D));
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d(this.b, "Submitting user data...");
        }
        Map c = n0.c(this.f3803a);
        JSONObject jSONObject = new JSONObject();
        b(jSONObject);
        if (((Boolean) this.f3803a.a(l4.e5)).booleanValue() || ((Boolean) this.f3803a.a(l4.Y4)).booleanValue()) {
            JsonUtils.putAll(jSONObject, c);
            c = null;
        }
        a(c, jSONObject);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends z5 {
        public a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, JSONObject jSONObject, int i) {
            x4.this.a(jSONObject);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            n0.a(i, this.f3803a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject, "results", new JSONArray()), 0, new JSONObject());
        this.f3803a.o0().a(l4.f, JsonUtils.getString(jSONObject2, TPDownloadProxyEnum.USER_DEVICE_ID, ""));
        this.f3803a.o0().a(l4.j, JsonUtils.getString(jSONObject2, "device_token", ""));
        n0.a(jSONObject2, this.f3803a);
    }

    private void a(Map map, JSONObject jSONObject) {
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.f3803a).b(n0.b("2.0/device", this.f3803a)).a(n0.a("2.0/device", this.f3803a)).b(map).a(jSONObject).c(ShareTarget.METHOD_POST).b(((Boolean) this.f3803a.a(l4.l5)).booleanValue()).a((Object) new JSONObject()).a(((Integer) this.f3803a.a(l4.R2)).intValue()).a(i4.a.a(((Integer) this.f3803a.a(l4.W4)).intValue())).a(), this.f3803a);
        aVar.c(l4.r0);
        aVar.b(l4.s0);
        this.f3803a.q0().a(aVar);
    }
}
