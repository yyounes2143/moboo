package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Campaign;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.vungle.ads.internal.ui.AdActivity;
import java.net.URLEncoder;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class h {
    public static final String b = "h";

    /* renamed from: a  reason: collision with root package name */
    private final Context f9060a;

    public h(Context context, int i) {
        this.f9060a = context;
    }

    public void a(String str, com.mbridge.msdk.foundation.entity.e eVar, String str2) {
        JSONObject a2 = com.mbridge.msdk.foundation.entity.e.a(eVar);
        if (a2 != null) {
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(a2);
        }
    }

    public void b(String str, String str2, String str3, String str4, String str5, boolean z) {
        try {
            if (!TextUtils.isEmpty(str5)) {
                JSONObject jSONObject = new JSONObject();
                if (z) {
                    jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
                }
                jSONObject.put("key", URLEncoder.encode("2000066", "utf-8"));
                jSONObject.put("rid", URLEncoder.encode(str, "utf-8"));
                jSONObject.put("rid_n", URLEncoder.encode(str2, "utf-8"));
                jSONObject.put("cid", URLEncoder.encode(str3, "utf-8"));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, URLEncoder.encode(str4, "utf-8"));
                jSONObject.put("err_method", str5);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            }
        } catch (Exception e) {
            o0.b(b, e.getMessage());
        }
    }

    public h(Context context) {
        this.f9060a = context.getApplicationContext();
    }

    public void a(int i, int i2, String str, String str2, String str3) {
        i.a(this.f9060a, i, i2, str, str2, str3);
    }

    public void a(String str, String str2, String str3, String str4, String str5, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (z) {
                jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
            }
            jSONObject.put("key", URLEncoder.encode("2000065", "utf-8"));
            jSONObject.put("rid", URLEncoder.encode(str, "utf-8"));
            jSONObject.put("rid_n", URLEncoder.encode(str2, "utf-8"));
            jSONObject.put("cid", URLEncoder.encode(str3, "utf-8"));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, URLEncoder.encode(str4, "utf-8"));
            jSONObject.put(CampaignEx.JSON_KEY_CLICK_URL, URLEncoder.encode(str5, "utf-8"));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e) {
            o0.b(b, e.getMessage());
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        try {
            int s = k0.s(this.f9060a);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", URLEncoder.encode("2000071", "utf-8"));
            jSONObject.put("rid", URLEncoder.encode(str, "utf-8"));
            jSONObject.put("rid_n", URLEncoder.encode(str2, "utf-8"));
            jSONObject.put("cid", URLEncoder.encode(str3, "utf-8"));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, URLEncoder.encode(str4, "utf-8"));
            jSONObject.put("reason", URLEncoder.encode(str5, "utf-8"));
            jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, URLEncoder.encode(String.valueOf(s), "utf-8"));
            jSONObject.put("result", URLEncoder.encode("0", "utf-8"));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e) {
            o0.b(b, e.getMessage());
        }
    }

    public void a() {
        try {
            if (j.a()) {
                String b2 = com.mbridge.msdk.foundation.controller.c.m().b();
                com.mbridge.msdk.setting.g d = com.mbridge.msdk.setting.h.b().d(b2);
                if (d == null) {
                    d = com.mbridge.msdk.setting.h.b().a();
                }
                String d2 = com.mbridge.msdk.foundation.tools.f.d();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000053");
                jSONObject.put("Appid", b2);
                jSONObject.put("uptips2", d.r0());
                jSONObject.put("info_status", com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().g());
                jSONObject.put("iseu", d.F());
                if (!TextUtils.isEmpty(d2)) {
                    jSONObject.put("gaid", d2);
                }
                jSONObject.put("GDPR_area", d.E0());
                jSONObject.put("GDPR_consent", com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().e());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                j.c();
            }
        } catch (Throwable th) {
            o0.b(b, th.getMessage());
        }
    }

    public void a(int i, String str) {
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a(j.a((Campaign) null, i, AdActivity.REQUEST_KEY_EXTRA));
    }

    public void a(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("click_type", "1");
            jSONObject.put("cid", str);
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            jSONObject.put("key", "2000027");
            jSONObject.put("http_url", str3);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e) {
            o0.b(b, e.getMessage());
        }
    }
}
