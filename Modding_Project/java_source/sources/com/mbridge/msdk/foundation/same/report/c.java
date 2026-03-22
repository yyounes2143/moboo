package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9048a = "c";

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements com.mbridge.msdk.tracker.h {
        @Override // com.mbridge.msdk.tracker.h
        public JSONObject a(com.mbridge.msdk.tracker.e eVar) {
            String str = "";
            if (eVar == null) {
                return null;
            }
            JSONObject d = eVar.d();
            if (d == null) {
                d = new JSONObject();
            }
            try {
                d.put("key", eVar.b());
                Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
                int s = k0.s(d2);
                if (!d.has(TPDownloadProxyEnum.USER_NETWORK_TYPE)) {
                    d.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, s);
                    d.put("network_str", k0.a(d2, s));
                }
                if (!d.has(CmcdConfiguration.KEY_STREAM_TYPE)) {
                    d.put(CmcdConfiguration.KEY_STREAM_TYPE, System.currentTimeMillis());
                }
                String optString = d.optString(MBridgeConstans.PROPERTIES_UNIT_ID, "");
                if (!TextUtils.isEmpty(optString)) {
                    String str2 = com.mbridge.msdk.foundation.controller.a.r.get(optString);
                    if (str2 != null) {
                        str = str2;
                    }
                    d.put("u_stid", str);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && !d.has(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                    d.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.g) && !d.has(c.f9048a)) {
                    d.put(c.f9048a, com.mbridge.msdk.foundation.same.a.g);
                    return d;
                }
            } catch (Exception e) {
                o0.b(c.f9048a, e.getMessage());
            }
            return d;
        }
    }

    public static JSONObject b() {
        return com.mbridge.msdk.foundation.same.report.a.a();
    }

    public static com.mbridge.msdk.tracker.f c() {
        return new com.mbridge.msdk.tracker.n();
    }

    public static com.mbridge.msdk.tracker.h d() {
        return new a();
    }

    public static boolean a(String str) {
        com.mbridge.msdk.setting.g d = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d == null) {
            return true;
        }
        return b.a(d, str);
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            jSONObject.remove("model");
            jSONObject.remove("brand");
            jSONObject.remove("screen_size");
            jSONObject.remove("sub_ip");
            jSONObject.remove(TPDownloadProxyEnum.USER_NETWORK_TYPE);
            jSONObject.remove("useragent");
            jSONObject.remove("ua");
            jSONObject.remove("language");
            jSONObject.remove("network_str");
            jSONObject.remove("mnc");
            jSONObject.remove("mcc");
            jSONObject.remove(TPDownloadProxyEnum.USER_OS_VERSION);
            jSONObject.remove("gp_version");
            jSONObject.remove("country_code");
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            jSONObject.remove(com.mbridge.msdk.foundation.same.net.wrapper.e.d);
            jSONObject.remove(com.mbridge.msdk.foundation.same.net.wrapper.e.e);
            jSONObject.remove("power_rate");
            jSONObject.remove("charging");
            jSONObject.remove("timezone");
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return;
        }
        jSONObject.remove("gaid");
        jSONObject.remove("gaid2");
        jSONObject.remove("oaid");
        jSONObject.remove("az_aid_info");
    }
}
