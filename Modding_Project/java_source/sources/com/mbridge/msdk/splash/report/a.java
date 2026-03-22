package com.mbridge.msdk.splash.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.g;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    public static void a(CampaignEx campaignEx, String str, String str2) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str2) || !campaignEx.isMraid()) {
                    return;
                }
                new h(c.m().d()).a(campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), str, str2, campaignEx.isBidCampaign());
            } catch (Exception e) {
                o0.b("SplashReport", e.getMessage());
            }
        }
    }

    public static void b(String str, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000067");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                jSONObject.put("cid", campaignEx.getId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, campaignEx.getCreativeId());
                jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, k0.s(c.m().d()));
                d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("SplashReport", th.getMessage());
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (campaignEx.isMraid()) {
                    m mVar = new m();
                    mVar.n(campaignEx.getRequestId());
                    mVar.o(campaignEx.getRequestIdNotice());
                    mVar.b(campaignEx.getId());
                    mVar.b(campaignEx.isMraid() ? m.N : m.O);
                    g.d(mVar, context.getApplicationContext(), str);
                }
            } catch (Exception e) {
                o0.b("SplashReport", e.getMessage());
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, long j, int i) {
        if (campaignEx != null) {
            try {
                if (campaignEx.isMraid()) {
                    m mVar = new m();
                    mVar.n(campaignEx.getRequestId());
                    mVar.o(campaignEx.getRequestIdNotice());
                    mVar.b(campaignEx.getId());
                    mVar.d(i);
                    mVar.e(String.valueOf(System.currentTimeMillis() - j));
                    mVar.g("");
                    mVar.m(str2);
                    mVar.a("6");
                    mVar.b(m.N);
                    g.b(mVar, str, campaignEx);
                }
            } catch (Exception e) {
                o0.b("SplashReport", e.getMessage());
            }
        }
    }

    public static void a(String str, CampaignEx campaignEx) {
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        m mVar = new m("2000061", campaignEx.getId(), campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), str, k0.s(c.m().d()));
        mVar.b(m.N);
        g.b(mVar, c.m().d(), str);
    }

    public static void a(String str, CampaignEx campaignEx, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (campaignEx.isBidCampaign()) {
                jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
            }
            jSONObject.put("key", "2000070");
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("cid", campaignEx.getId());
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put(CampaignEx.JSON_KEY_CLICK_URL, str2);
            jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, String.valueOf(k0.s(c.m().d())));
            d.b().a(jSONObject);
        } catch (Exception e) {
            o0.b("SplashReport", e.getMessage());
        }
    }

    public static void a(int i, String str, String str2, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000068");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                jSONObject.put("cid", campaignEx.getId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, campaignEx.getCreativeId());
                jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, k0.s(c.m().d()));
                jSONObject.put("result", i);
                jSONObject.put("reason", str);
                d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("SplashReport", th.getMessage());
            }
        }
    }

    public static void a(String str, int i, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000069");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                jSONObject.put("cid", campaignEx.getId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, campaignEx.getCreativeId());
                jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, k0.s(c.m().d()));
                jSONObject.put("close_type", i);
                d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("SplashReport", th.getMessage());
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }

    public static void a(CampaignEx campaignEx, String str, int i, int i2, int i3) {
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("flb_size", i2);
                jSONObject.put("x", i);
                jSONObject.put("flb_type", i3);
            } catch (JSONException e) {
                o0.b("SplashReport", "e:" + e.getMessage());
            }
            j.b(c.m().d(), campaignEx, str, jSONObject.toString());
        } catch (Exception e2) {
            o0.b("SplashReport", e2.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000092");
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("cid", campaignEx.getId());
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, String.valueOf(k0.s(c.m().d())));
            d.b().a(jSONObject);
        } catch (Exception e) {
            o0.b("SplashReport", e.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx, String str, int i) {
        try {
            a(str, i, campaignEx);
        } catch (Exception e) {
            o0.b("SplashReport", e.getMessage());
        }
    }

    public static void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            d.b().a(str, cVar, campaignEx, context, aVar);
        } catch (Exception e) {
            o0.b("SplashReport", e.getMessage());
        }
    }
}
