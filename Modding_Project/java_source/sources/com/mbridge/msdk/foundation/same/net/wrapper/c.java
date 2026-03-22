package com.mbridge.msdk.foundation.same.net.wrapper;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.appsflyer.AppsFlyerProperties;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.net.Aa;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.CustomInfoManager;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.network.k;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c {
    private static final String TAG = "c";
    protected Context mContext;

    public c(Context context) {
        if (context == null) {
            this.mContext = com.mbridge.msdk.foundation.controller.c.m().d();
        } else {
            this.mContext = context.getApplicationContext();
        }
    }

    private String asUrlParams(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            StringBuilder sb = new StringBuilder();
            try {
                for (String str : map.keySet()) {
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = map.get(str);
                        if (TextUtils.isEmpty(str2)) {
                            str2 = "";
                        }
                        sb.append("&");
                        sb.append(str);
                        sb.append("=");
                        sb.append(str2);
                    }
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(TAG, e.getMessage());
                }
                sb = null;
            }
            if (sb != null && sb.length() > 0) {
                return sb.toString();
            }
        }
        return null;
    }

    private static com.mbridge.msdk.tracker.network.h<?> createRequest(int i, int i2, String str, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j) {
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            return new com.mbridge.msdk.tracker.network.i(i2, str, str2, j, new i(bVar));
        }
        return new k(i2, str, str2, j, new i(bVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r13 = r13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a2 A[Catch: Exception -> 0x00ce, TRY_ENTER, TryCatch #0 {Exception -> 0x00ce, blocks: (B:31:0x00a2, B:33:0x00a8, B:37:0x00b3, B:43:0x00d6, B:45:0x00f3), top: B:82:0x00a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a6  */
    /* JADX WARN: Type inference failed for: r11v6, types: [com.mbridge.msdk.tracker.network.h, com.mbridge.msdk.tracker.network.t] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.lang.String] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x01a4 -> B:81:0x01fd). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01e4 -> B:81:0x01fd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void post(int r11, java.lang.String r12, com.mbridge.msdk.foundation.same.net.wrapper.e r13, com.mbridge.msdk.foundation.same.net.b r14, boolean r15, boolean r16, java.lang.String r17, long r18) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.wrapper.c.post(int, java.lang.String, com.mbridge.msdk.foundation.same.net.wrapper.e, com.mbridge.msdk.foundation.same.net.b, boolean, boolean, java.lang.String, long):void");
    }

    public void addExtraParams(String str, e eVar) {
        if (eVar != null) {
            String a2 = Aa.a();
            if (a2 == null) {
                a2 = "";
            }
            eVar.a(AppsFlyerProperties.CHANNEL, a2);
            eVar.a("band_width", com.mbridge.msdk.foundation.same.net.a.b().a() + "");
            eVar.a("open", com.mbridge.msdk.foundation.same.a.S);
            if (com.mbridge.msdk.util.b.a() && !TextUtils.isEmpty(str) && str.contains("setting")) {
                String b = Aa.b();
                if (!TextUtils.isEmpty(b)) {
                    eVar.a("keyword", b);
                }
            }
            String str2 = eVar.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
            if (str2 != null) {
                String customInfoByUnitId = CustomInfoManager.getInstance().getCustomInfoByUnitId(str2, str);
                if (!TextUtils.isEmpty(customInfoByUnitId)) {
                    eVar.a("ch_info", customInfoByUnitId);
                }
                l e = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str2);
                if (e != null && !TextUtils.isEmpty(e.a())) {
                    eVar.a("u_stid", e.a());
                }
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                eVar.a("dev_source", "2");
            }
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                eVar.a("re_domain", "1");
                return;
            }
            return;
        }
        o0.b(TAG, "addExtraParams error, params is null,frame work error");
    }

    public boolean canTrack() {
        return true;
    }

    public void choiceV3OrV5BySetting(int i, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str, long j) {
        int B;
        e eVar2;
        com.mbridge.msdk.setting.g b = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (TextUtils.isEmpty(str)) {
            B = b.p0();
        } else {
            B = b.B();
        }
        String a2 = com.mbridge.msdk.foundation.same.net.utils.d.h().a(str, B);
        if (B < 2) {
            postV5(i, a2, eVar, bVar, "campaign", j);
            return;
        }
        if (B % 2 == 0) {
            if (eVar == null) {
                eVar = new e();
            }
            eVar2 = eVar;
            JSONArray b2 = com.mbridge.msdk.foundation.db.middle.b.a().b();
            if (b2 != null) {
                String jSONArray = b2.toString();
                int i2 = com.mbridge.msdk.foundation.same.net.utils.d.h().i();
                if (i2 > 0 && jSONArray.length() > i2) {
                    post(i, a2, eVar2, bVar, "campaign", j);
                    return;
                }
                eVar2.a(e.k, jSONArray);
            }
        } else {
            eVar2 = eVar;
        }
        getLoadOrSetting(i, a2, eVar2, bVar, "campaign", j);
    }

    public void get(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j) {
        get(i, str, eVar, bVar, false, false, str2, j);
    }

    public void getCampaign(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, long j) {
        int B;
        e eVar2;
        try {
            com.mbridge.msdk.setting.g b = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
            if (TextUtils.isEmpty(str)) {
                B = b.p0();
            } else {
                B = b.B();
            }
            String a2 = com.mbridge.msdk.foundation.same.net.utils.d.h().a(str, B);
            if (B < 2) {
                postV5(i, a2, eVar, bVar, true, "campaign", j);
                return;
            }
            if (B % 2 == 0) {
                if (eVar == null) {
                    eVar = new e();
                }
                eVar2 = eVar;
                JSONArray b2 = com.mbridge.msdk.foundation.db.middle.b.a().b();
                if (b2 != null) {
                    String jSONArray = b2.toString();
                    int i2 = com.mbridge.msdk.foundation.same.net.utils.d.h().i();
                    if (i2 > 0 && jSONArray.length() > i2) {
                        post(i, a2, eVar2, bVar, true, false, "campaign", j);
                        return;
                    }
                    eVar2.a(e.k, jSONArray);
                }
            } else {
                eVar2 = eVar;
            }
            get(i, a2, eVar2, bVar, true, true, "campaign", j);
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, e.getMessage());
            }
        }
    }

    public void getLoadOrSetting(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j) {
        getLoadOrSetting(i, str, eVar, bVar, true, str2, j);
    }

    public void postFocusReport(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j) {
        post(i, str, eVar, bVar, false, true, str2, j);
    }

    public void postV5(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j) {
        String str3 = eVar.a().get("sign");
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        eVar.a(CampaignEx.JSON_KEY_ST_TS, currentTimeMillis + "");
        eVar.a(CmcdConfiguration.KEY_STREAM_TYPE, SameMD5.getMD5(currentTimeMillis + str3));
        post(i, str, eVar, bVar, false, false, str2, j);
    }

    public void get(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z, boolean z2, String str2, long j) {
        if (eVar == null) {
            try {
                eVar = new e();
            } catch (Exception e) {
                o0.a(TAG, e.getMessage());
            }
        }
        addExtraParams(str, eVar);
        f.k(eVar);
        String str3 = eVar.a().get("sign");
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        eVar.a(CampaignEx.JSON_KEY_ST_TS, currentTimeMillis + "");
        if (com.mbridge.msdk.util.b.a()) {
            eVar.a(CmcdConfiguration.KEY_STREAM_TYPE, SameMD5.getMD5(str3 + currentTimeMillis));
        } else {
            eVar.a(CmcdConfiguration.KEY_STREAM_TYPE, SameMD5.getMD5(currentTimeMillis + str3));
        }
        com.mbridge.msdk.foundation.same.net.e a2 = com.mbridge.msdk.foundation.same.net.utils.c.b().a(eVar);
        if (a2 != null && bVar != null) {
            bVar.onSuccess(a2);
            return;
        }
        if (str.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().i) && com.mbridge.msdk.foundation.same.net.utils.d.h().s) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uri", com.mbridge.msdk.foundation.same.net.utils.d.h().m + Uri.parse(str).getPath());
                jSONObject.put("data", eVar.b());
                com.mbridge.msdk.foundation.same.net.f.b().a(com.mbridge.msdk.foundation.same.net.utils.d.h().m, com.mbridge.msdk.foundation.same.net.utils.d.h().q, jSONObject.toString(), true, bVar);
                return;
            } catch (Throwable th) {
                o0.b(TAG, th.getMessage());
            }
        }
        String str4 = str + "?" + eVar.toString();
        com.mbridge.msdk.setting.g b = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (str4.length() >= b.m0() && str4.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().i)) {
            post(i, str, eVar, bVar, z2, false, str2, j);
            return;
        }
        e eVar2 = eVar;
        if (str4.length() >= b.L() && z) {
            post(i, str, eVar2, bVar, z2, false, str2, j);
            return;
        }
        com.mbridge.msdk.tracker.network.h<?> createRequest = createRequest(i, 0, str, bVar, str2, j);
        if (createRequest != null) {
            if (eVar2.a() != null) {
                String str5 = eVar2.a().get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
                if (TextUtils.isEmpty(str5)) {
                    str5 = "";
                }
                createRequest.a("local_id", str5);
                String str6 = eVar2.a().get("ad_type");
                createRequest.a("ad_type", TextUtils.isEmpty(str6) ? "" : str6);
                createRequest.a(eVar2.a());
            }
            createRequest.d(canTrack());
            com.mbridge.msdk.tracker.network.l.a().b().a(createRequest);
        }
    }

    public void getLoadOrSetting(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z, String str2, long j) {
        get(i, str, eVar, bVar, z, false, str2, j);
    }

    public void postV5(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, boolean z, String str2, long j) {
        String str3 = eVar.a().get("sign");
        if (str3 == null) {
            str3 = "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        eVar.a(CampaignEx.JSON_KEY_ST_TS, currentTimeMillis + "");
        eVar.a(CmcdConfiguration.KEY_STREAM_TYPE, SameMD5.getMD5(currentTimeMillis + str3));
        post(i, str, eVar, bVar, z, false, str2, j);
    }

    public void get(int i, String str, Map<String, String> map, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("app_id", com.mbridge.msdk.foundation.controller.c.m().b());
        map.put("sdk_version", MBConfiguration.SDK_VERSION);
        map.put(TPDownloadProxyEnum.USER_PLATFORM, "1");
        String asUrlParams = asUrlParams(map);
        if (!TextUtils.isEmpty(asUrlParams)) {
            str = str + "?" + asUrlParams;
        }
        String str3 = str;
        if (MBridgeConstans.DEBUG) {
            o0.a("AppletsModel", "get wx scheme url = " + str3);
        }
        com.mbridge.msdk.tracker.network.h<?> createRequest = createRequest(i, 0, str3, bVar, str2, j);
        if (createRequest != null) {
            String str4 = map.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID);
            if (TextUtils.isEmpty(str4)) {
                str4 = "";
            }
            createRequest.a("local_id", str4);
            String str5 = map.get("ad_type");
            createRequest.a("ad_type", TextUtils.isEmpty(str5) ? "" : str5);
            createRequest.a(map);
            createRequest.d(canTrack());
            com.mbridge.msdk.tracker.network.l.a().b().a(createRequest);
        }
    }

    public void post(int i, String str, e eVar, com.mbridge.msdk.foundation.same.net.b bVar, String str2, long j) {
        post(i, str, eVar, bVar, false, false, str2, j);
    }
}
