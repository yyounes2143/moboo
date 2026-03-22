package com.applovin.impl;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.i4;
import com.applovin.impl.m0;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.u;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class k5 extends w4 {
    private final m0.e g;

    public k5(m0.e eVar, com.applovin.impl.sdk.k kVar) {
        super("TaskFetchMediationDebuggerInfo", kVar, true);
        this.g = eVar;
    }

    public Map e() {
        HashMap hashMap = new HashMap();
        hashMap.put("sdk_version", AppLovinSdk.VERSION);
        if (!((Boolean) this.f3803a.a(l4.L4)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3803a.i0());
        }
        Map D = this.f3803a.B().D();
        hashMap.put(CampaignEx.JSON_KEY_PACKAGE_NAME, String.valueOf(D.get(CampaignEx.JSON_KEY_PACKAGE_NAME)));
        hashMap.put("app_version", String.valueOf(D.get("app_version")));
        Map L = this.f3803a.B().L();
        hashMap.put(TPDownloadProxyEnum.USER_PLATFORM, String.valueOf(L.get(TPDownloadProxyEnum.USER_PLATFORM)));
        hashMap.put("os", String.valueOf(L.get("os")));
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map e = e();
        JSONObject a2 = a(a());
        if (((Boolean) this.f3803a.a(l4.b5)).booleanValue() || ((Boolean) this.f3803a.a(l4.Y4)).booleanValue()) {
            JsonUtils.putAll(a2, e);
            e = null;
        }
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.f3803a).c(ShareTarget.METHOD_POST).b(b3.i(this.f3803a)).a(b3.h(this.f3803a)).b(e).a(a2).a((Object) new JSONObject()).c(((Long) this.f3803a.a(g3.P6)).intValue()).a(i4.a.a(((Integer) this.f3803a.a(l4.S4)).intValue())).a(), this.f3803a, d());
        aVar.c(g3.L6);
        aVar.b(g3.M6);
        this.f3803a.q0().a(aVar);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends z5 {
        public a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, boolean z) {
            super(aVar, kVar, z);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, JSONObject jSONObject, int i) {
            k5.this.g.a(str, jSONObject, i);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            k5.this.g.a(str, i, str2, jSONObject);
        }
    }

    private JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putJsonArrayIfValid(jSONObject, "installed_mediation_adapters", l3.b(this.f3803a));
        JsonUtils.putBoolean(jSONObject, "is_tablet", AppLovinSdkUtils.isTablet(context));
        u.a f = this.f3803a.B().f();
        JsonUtils.putStringIfValid(jSONObject, "dnt_code", f.b().b());
        JsonUtils.putStringIfValid(jSONObject, "idfa", f.a());
        Map k0 = this.f3803a.k0();
        if (!CollectionUtils.isEmpty(k0)) {
            JsonUtils.putJSONObject(jSONObject, "segments", new JSONObject(k0));
        }
        return jSONObject;
    }
}
