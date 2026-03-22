package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class o {
    public static void a(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (com.mbridge.msdk.foundation.entity.m mVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (mVar.w() != null) {
                    jSONObject.put("resource_type", mVar.w());
                }
                if (mVar.e() != null) {
                    jSONObject.put("creative", mVar.e());
                }
                jSONObject.put("key", mVar.n());
                jSONObject.put("result", mVar.x());
                jSONObject.put(TypedValues.TransitionType.S_DURATION, mVar.g());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, mVar.D());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_LENGTHL, mVar.C());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("cid", mVar.d());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, mVar.E());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("offer_url", mVar.s());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                    jSONObject.put("network_str", mVar.r());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void b(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (com.mbridge.msdk.foundation.entity.m mVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("result", mVar.x());
                jSONObject.put(TypedValues.TransitionType.S_DURATION, mVar.g());
                jSONObject.put(CampaignEx.ENDCARD_URL, mVar.i());
                jSONObject.put("cid", mVar.d());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("ad_type", mVar.a());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put("type", mVar.h());
                jSONObject.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, mVar.b());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void c(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                for (com.mbridge.msdk.foundation.entity.m mVar : list) {
                    a(mVar);
                }
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void d(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                for (com.mbridge.msdk.foundation.entity.m mVar : list) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", mVar.n());
                    jSONObject.put("cid", mVar.d());
                    jSONObject.put(CampaignEx.JSON_KEY_IMAGE_URL, mVar.l());
                    jSONObject.put("reason", mVar.t());
                    jSONObject.put("rid", mVar.u());
                    jSONObject.put("rid_n", mVar.v());
                    jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                    if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                        jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void e(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                for (com.mbridge.msdk.foundation.entity.m mVar : list) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", mVar.n());
                    jSONObject.put("reason", mVar.t());
                    jSONObject.put("cid", mVar.d());
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, mVar.E());
                    jSONObject.put("rid", mVar.u());
                    jSONObject.put("rid_n", mVar.v());
                    jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                    jSONObject.put("offer_url", mVar.s());
                    if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                        jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                        jSONObject.put("network_str", mVar.r());
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void f(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("result", mVar.x());
                jSONObject.put(TypedValues.TransitionType.S_DURATION, mVar.g());
                jSONObject.put("cid", mVar.d());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("ad_type", mVar.a());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                jSONObject.put("mraid_type", mVar.p());
                jSONObject.put("devid", mVar.f());
                jSONObject.put("type", mVar.h());
                if (mVar.w() != null) {
                    jSONObject.put("resource_type", mVar.w());
                }
                if (!TextUtils.isEmpty(mVar.i())) {
                    jSONObject.put(CampaignEx.ENDCARD_URL, mVar.i());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void g(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("result", mVar.x());
                jSONObject.put(TypedValues.TransitionType.S_DURATION, mVar.g());
                jSONObject.put("cid", mVar.d());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("ad_type", mVar.a());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("devid", mVar.f());
                jSONObject.put("mraid_type", mVar.p());
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put("rid", mVar.u());
                if (!TextUtils.isEmpty(mVar.i())) {
                    jSONObject.put(CampaignEx.ENDCARD_URL, mVar.i());
                }
                if (!TextUtils.isEmpty(mVar.h())) {
                    jSONObject.put("type", mVar.h());
                }
                if (mVar.w() != null) {
                    jSONObject.put("resource_type", mVar.w());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void h(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("cid", mVar.d());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                jSONObject.put("mraid_type", mVar.p());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put("rid", mVar.u());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void i(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("error", t0.a(mVar.j()));
                jSONObject.put("template_url", t0.a(mVar.z()));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, t0.a(mVar.B()));
                jSONObject.put("cid", t0.a(mVar.d()));
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_str", mVar.r());
                    jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Exception e) {
                o0.b("VideoDataReport", e.getMessage());
            }
        }
    }

    public static void c(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("cid", mVar.d());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                jSONObject.put("mraid_type", mVar.p());
                jSONObject.put(TPDownloadProxyEnum.USER_PLATFORM, "1");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void d(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("cid", mVar.d());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("case", mVar.c());
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static void e(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("cid", mVar.d());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put("reason", mVar.t());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
            }
        }
    }

    public static String b(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("event", t0.a(mVar.k()));
                jSONObject.put("template", t0.a(mVar.A()));
                jSONObject.put("layout", t0.a(mVar.o()));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, t0.a(mVar.B()));
                jSONObject.put("cid", t0.a(mVar.d()));
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_str", mVar.r());
                    jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                }
                return jSONObject.toString();
            } catch (Exception e) {
                o0.b("VideoDataReport", e.getMessage());
                return "";
            }
        }
        return "";
    }

    public static String f(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return null;
                }
                for (com.mbridge.msdk.foundation.entity.m mVar : list) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", mVar.n());
                    jSONObject.put("cid", mVar.d());
                    jSONObject.put("template_url", mVar.z());
                    jSONObject.put("reason", mVar.t());
                    jSONObject.put("rid", mVar.u());
                    jSONObject.put("rid_n", mVar.v());
                    jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                    jSONObject.put("result", mVar.x());
                    if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                        jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
                return null;
            } catch (Throwable th) {
                o0.b("VideoDataReport", th.getMessage());
                return null;
            }
        }
        return null;
    }

    public static void a(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("event", t0.a(mVar.k()));
                jSONObject.put("template", t0.a(mVar.A()));
                jSONObject.put("layout", t0.a(mVar.o()));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, t0.a(mVar.B()));
                jSONObject.put("cid", t0.a(mVar.d()));
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_str", mVar.r());
                    jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, mVar.q());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Exception e) {
                o0.b("VideoDataReport", e.getMessage());
            }
        }
    }
}
