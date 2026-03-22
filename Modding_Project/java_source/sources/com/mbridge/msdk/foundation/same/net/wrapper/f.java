package com.mbridge.msdk.foundation.same.net.wrapper;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.r0;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class f {
    public static void a(e eVar, Context context) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            eVar.a("withGP", k0.C() + "");
            eVar.a("has_wx", k0.D(context) + "");
            eVar.a("integrated_wx", k0.D() + "");
            eVar.a("opensdk_ver", k0.B() + "");
            eVar.a("wx_api_ver", k0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
            eVar.a("mnc", k0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
            eVar.a("mcc", k0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
            String j = k0.j();
            if (!TextUtils.isEmpty(j)) {
                eVar.a("hardware", j);
            }
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().d() == 1) {
                eVar.a("dnt", "1");
            }
            String str = e.f;
            eVar.a(str, com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c() + "");
            eVar.a("adid_limit", com.mbridge.msdk.foundation.tools.f.a() + "");
            eVar.a("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? "1" : "0");
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            String str2 = e.d;
            eVar.a(str2, r0.c() + "");
            String str3 = e.e;
            eVar.a(str3, r0.a() + "");
            eVar.a(e.j, k0.u());
        }
        eVar.a("pkg_source", k0.a(k0.t(context), context));
        if (com.mbridge.msdk.foundation.controller.c.m().j() != null) {
            eVar.a("web_env", com.mbridge.msdk.foundation.controller.c.m().j().toString());
        }
        eVar.a("http_req", "2");
        g.a(eVar, context);
        g(eVar);
    }

    public static void b(e eVar) {
        eVar.a("api_version", com.mbridge.msdk.foundation.same.a.d);
    }

    public static void c(e eVar) {
        String str = com.mbridge.msdk.util.c.b;
        if (!TextUtils.isEmpty(str)) {
            eVar.a("cronet_env", str);
        }
    }

    public static void d(e eVar) {
        eVar.a("dyview_type", com.mbridge.msdk.foundation.same.a.w);
    }

    public static void e(e eVar) {
        com.mbridge.msdk.setting.g d = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d == null) {
            d = com.mbridge.msdk.setting.h.b().a();
        }
        if (d.D() == 1) {
            eVar.a("gdpr_consent", com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().e() + "");
        } else if (d.E0()) {
            eVar.a("gdpr_consent", com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().e() + "");
        }
        String f = com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().f();
        if (!TextUtils.isEmpty(f)) {
            eVar.a("tc_string", f);
        }
    }

    public static void f(e eVar) {
        try {
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                eVar.a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.g)) {
                com.mbridge.msdk.foundation.same.a.g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.g)) {
                eVar.a("c", com.mbridge.msdk.foundation.same.a.g);
            }
        } catch (Exception e) {
            o0.b("CommonRequestParamsForAdd", e.getMessage());
        }
    }

    public static void g(e eVar) {
        a(eVar, true);
        i(eVar);
        f(eVar);
        e(eVar);
        a(eVar);
        c(eVar);
        g.a(eVar);
    }

    public static void h(e eVar) {
        String str;
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            eVar.a("withGP", k0.C() + "");
            eVar.a("has_wx", k0.D(com.mbridge.msdk.foundation.controller.c.m().d()) + "");
            eVar.a("integrated_wx", k0.D() + "");
            eVar.a("opensdk_ver", k0.B() + "");
            eVar.a("wx_api_ver", k0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
            eVar.a("mnc", k0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
            eVar.a("mcc", k0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
            String j = k0.j();
            if (!TextUtils.isEmpty(j)) {
                eVar.a("hardware", j);
            }
            eVar.a("adid_limit", com.mbridge.msdk.foundation.tools.f.a() + "");
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.j()) {
                str = "1";
            } else {
                str = "0";
            }
            eVar.a("adid_limit_dev", str);
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            eVar.a(e.j, k0.u());
        }
        g.b(eVar);
        a(eVar, false);
        i(eVar);
        f(eVar);
        a(eVar);
        c(eVar);
    }

    public static void i(e eVar) {
        int A = k0.A();
        if (A != -1) {
            eVar.a("unknown_source", A + "");
        }
    }

    public static void j(e eVar) {
        if (k0.y() == 0) {
            return;
        }
        eVar.a("tun", k0.y() + "");
    }

    public static void k(e eVar) {
        if (eVar != null) {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                eVar.a("model");
                eVar.a("brand");
                eVar.a("screen_size");
                eVar.a("sub_ip");
                eVar.a(TPDownloadProxyEnum.USER_NETWORK_TYPE);
                eVar.a("useragent");
                eVar.a("ua");
                eVar.a("language");
                eVar.a("network_str");
                eVar.a(TPDownloadProxyEnum.USER_OS_VERSION);
                eVar.a("country_code");
                eVar.a("cronet_env");
                eVar.a("adid_limit");
                eVar.a("adid_limit_dev");
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
                eVar.a(e.d);
                eVar.a(e.e);
                eVar.a("power_rate");
                eVar.a("charging");
                eVar.a("timezone");
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                eVar.a("gaid");
                eVar.a("gaid2");
                eVar.a("az_aid_info");
            }
            g.c(eVar);
        }
    }

    public static void a(e eVar, boolean z) {
        com.mbridge.msdk.setting.g d = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (d != null) {
            if (!TextUtils.isEmpty(d.a()) && z) {
                eVar.a("a_stid", d.a());
            }
            try {
                g.a(eVar, d2, z, d);
            } catch (Exception e) {
                o0.b("CommonRequestParamsForAdd", e.getMessage());
            }
        }
    }

    public static void a(e eVar) {
        String b = com.mbridge.msdk.foundation.tools.f.b();
        if (TextUtils.isEmpty(b)) {
            return;
        }
        eVar.a("az_aid_info", b);
    }
}
