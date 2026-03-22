package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class d implements com.mbridge.msdk.tracker.d {
    private static void a(Map<String, String> map, StringBuilder sb) {
    }

    public static String b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> keys = jSONObject.keys();
        int i = 0;
        while (keys.hasNext()) {
            String next = keys.next();
            i++;
            if (i <= jSONObject.length() - 1) {
                sb.append(next);
                sb.append("=");
                sb.append(a(String.valueOf(jSONObject.opt(next))));
                sb.append("&");
            } else {
                sb.append(next);
                sb.append("=");
                sb.append(a(String.valueOf(jSONObject.opt(next))));
            }
        }
        return sb.toString();
    }

    @Override // com.mbridge.msdk.tracker.d
    public Map<String, String> a(com.mbridge.msdk.tracker.m mVar, List<com.mbridge.msdk.tracker.i> list, JSONObject jSONObject) {
        StringBuilder sb;
        Map<String, String> map;
        if (list != null && !list.isEmpty()) {
            try {
                c.a(jSONObject);
                map = a(jSONObject);
                if (map == null) {
                    try {
                        map = new HashMap();
                    } catch (Exception unused) {
                        sb = null;
                        a(map, sb);
                        return null;
                    } catch (Throwable unused2) {
                        sb = null;
                        a(map, sb);
                        return null;
                    }
                }
                sb = a(list);
            } catch (Exception unused3) {
                sb = null;
                map = null;
            } catch (Throwable unused4) {
                sb = null;
                map = null;
            }
            try {
                map.put("tun", String.valueOf(k0.z()));
                map.put("data", sb.toString());
                return map;
            } catch (Exception unused5) {
                a(map, sb);
                return null;
            } catch (Throwable unused6) {
                a(map, sb);
                return null;
            }
        }
        return null;
    }

    public static Map<String, String> a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, String.valueOf(jSONObject.opt(next)));
        }
        return hashMap;
    }

    private static StringBuilder a(List<com.mbridge.msdk.tracker.i> list) {
        com.mbridge.msdk.tracker.e a2;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            com.mbridge.msdk.tracker.i iVar = list.get(i);
            if (iVar != null && (a2 = iVar.a()) != null) {
                JSONObject d = a2.d();
                c.a(d);
                if (d == null) {
                    d = new JSONObject();
                }
                try {
                    try {
                        d.put(CampaignEx.JSON_KEY_ST_TS, a2.g());
                        d.put("rts", System.currentTimeMillis());
                        String d2 = iVar.d();
                        if (!TextUtils.isEmpty(d2)) {
                            d.put("reason_lib", d2);
                        }
                        int c = iVar.c() - 1;
                        if (c >= 1) {
                            d.put("retryed", c);
                        }
                        long a3 = a2.a();
                        if (a3 > 0) {
                            d.put(TypedValues.TransitionType.S_DURATION, a3);
                        }
                    } catch (Exception unused) {
                        boolean z = com.mbridge.msdk.tracker.a.f9655a;
                    }
                    sb.append(b(d));
                    if (i < list.size() - 1) {
                        sb.append("\n");
                    }
                } catch (Throwable th) {
                    sb.append(b(d));
                    throw th;
                }
            }
        }
        return sb;
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }
}
