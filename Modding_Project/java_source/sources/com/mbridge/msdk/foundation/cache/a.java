package com.mbridge.msdk.foundation.cache;

import android.text.TextUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.j;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.z0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    private static String e = "BaseCandidateCache";
    public static int f = 4;

    /* renamed from: a  reason: collision with root package name */
    protected com.mbridge.msdk.foundation.db.c f8930a;
    private JSONArray b;
    private JSONObject c;
    private String d;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.foundation.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0095a implements Comparator<b> {
        public C0095a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            return Double.compare(bVar.b, bVar2.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.foundation.cache.b f8932a;
        private double b;

        public b(double d, com.mbridge.msdk.foundation.cache.b bVar) {
            this.b = d;
            this.f8932a = bVar;
        }

        public com.mbridge.msdk.foundation.cache.b a() {
            return this.f8932a;
        }
    }

    public void a(int i) {
        com.mbridge.msdk.foundation.db.c cVar = this.f8930a;
        if (cVar != null) {
            cVar.a(this.d, i);
            a(f, 1, null, true, "", "", i, this.d);
        }
    }

    public double b(String str) {
        c a2 = a(str);
        if (a2 != null && a2.g() != c.k && a2.g() != c.i) {
            try {
                String[] split = i0.a(str.split("_")[3]).split("\\|");
                if (split.length > 0) {
                    return Double.parseDouble(split[0]);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return -1.0d;
    }

    public JSONObject c(String str) {
        JSONArray jSONArray = this.b;
        if (jSONArray != null) {
            if (jSONArray.length() > 1) {
                if (!TextUtils.isEmpty(str)) {
                    for (int i = 0; i < this.b.length(); i++) {
                        try {
                            JSONObject optJSONObject = this.b.optJSONObject(i);
                            if (optJSONObject != null && str.equals(optJSONObject.getString("g"))) {
                                this.c = optJSONObject;
                                return optJSONObject;
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    return null;
                }
                return null;
            }
            return this.b.optJSONObject(0);
        }
        return null;
    }

    public String d(String str) {
        c a2 = a(str);
        if (a2 != null && a2.g() != c.k && a2.g() != c.i) {
            String[] split = i0.a(str.split("_")[3]).split("\\|");
            if (split.length > 1) {
                return split[1];
            }
        }
        return "";
    }

    public void e(String str) {
        this.d = str;
    }

    public c a(String str) {
        c cVar = new c();
        if (!TextUtils.isEmpty(str) && str.split("_").length > 3 && !TextUtils.isEmpty(str.split("_")[3])) {
            JSONArray jSONArray = this.b;
            if (jSONArray != null && jSONArray.length() != 0) {
                String a2 = i0.a(str.split("_")[3]);
                if (TextUtils.isEmpty(a2)) {
                    cVar.d("bid token exception:decode error");
                    cVar.a(c.i);
                    return cVar;
                }
                String[] split = a2.split("\\|");
                if (split.length == 0) {
                    cVar.d("bid token can not get bid price");
                    cVar.a(c.i);
                    return cVar;
                }
                if (split.length > 0) {
                    try {
                        Double.parseDouble(split[0]);
                    } catch (Exception unused) {
                        cVar.d("bid token can not cast bid price");
                        cVar.a(c.i);
                        return cVar;
                    }
                }
                if (TextUtils.isEmpty(this.d)) {
                    cVar.d("unitId is empty");
                    cVar.a(c.k);
                }
                return cVar;
            }
            cVar.d("config is empty");
            cVar.a(c.i);
            return cVar;
        }
        cVar.d("bid token exception");
        cVar.a(c.i);
        return cVar;
    }

    private List<Map<Integer, String>> b(List<Map<Integer, String>> list, int i, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Map<Integer, String> map = list.get(i2);
            if (map != null && map.size() > 0) {
                for (Map.Entry<Integer, String> entry : map.entrySet()) {
                    map.put(entry.getKey(), a(entry.getValue(), i, str, str2));
                }
                arrayList.add(map);
            }
        }
        return arrayList;
    }

    public void a(JSONArray jSONArray) {
        this.b = jSONArray;
    }

    public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, int i, String str2, int i2, double d) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        CampaignEx campaignEx = list.get(i3);
                        campaignEx.setReadyState(0);
                        if (cVar != null) {
                            campaignEx.setNLRid(cVar.o());
                        }
                        campaignEx.setNRid(str);
                        campaignEx.setReasond(str2);
                        campaignEx.setTyped(i);
                        String b2 = i0.b(d + "");
                        campaignEx.setNoticeUrl(a(campaignEx.getNoticeUrl(), i2, str, b2));
                        campaignEx.setClickURL(a(campaignEx.getClickURL(), i2, str, b2));
                        campaignEx.setImpressionURL(a(campaignEx.getImpressionURL(), i2, str, b2));
                        campaignEx.setOnlyImpressionURL(a(campaignEx.getOnlyImpressionURL(), i2, str, b2));
                        campaignEx.setAdvImp(a(campaignEx.getAdvImpList(), i2, str, b2));
                        j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                        if (nativeVideoTracking != null) {
                            nativeVideoTracking.d(a(nativeVideoTracking.d(), i2, str, b2));
                            nativeVideoTracking.c(a(nativeVideoTracking.c(), i2, str, b2));
                            nativeVideoTracking.k(a(nativeVideoTracking.k(), i2, str, b2));
                            nativeVideoTracking.s(a(nativeVideoTracking.t(), i2, str, b2));
                            nativeVideoTracking.a(a(nativeVideoTracking.a(), i2, str, b2));
                            nativeVideoTracking.b(a(nativeVideoTracking.b(), i2, str, b2));
                            nativeVideoTracking.e(a(nativeVideoTracking.e(), i2, str, b2));
                            nativeVideoTracking.t(a(nativeVideoTracking.u(), i2, str, b2));
                            nativeVideoTracking.u(a(nativeVideoTracking.u(), i2, str, b2));
                            nativeVideoTracking.v(a(nativeVideoTracking.w(), i2, str, b2));
                            nativeVideoTracking.f(a(nativeVideoTracking.f(), i2, str, b2));
                            nativeVideoTracking.g(a(nativeVideoTracking.g(), i2, str, b2));
                            nativeVideoTracking.h(a(nativeVideoTracking.h(), i2, str, b2));
                            nativeVideoTracking.i(a(nativeVideoTracking.i(), i2, str, b2));
                            nativeVideoTracking.j(a(nativeVideoTracking.j(), i2, str, b2));
                            nativeVideoTracking.l(a(nativeVideoTracking.l(), i2, str, b2));
                            nativeVideoTracking.q(a(nativeVideoTracking.r(), i2, str, b2));
                            nativeVideoTracking.m(a(nativeVideoTracking.m(), i2, str, b2));
                            nativeVideoTracking.r(a(nativeVideoTracking.s(), i2, str, b2));
                            nativeVideoTracking.n(a(nativeVideoTracking.n(), i2, str, b2));
                            nativeVideoTracking.a(b(nativeVideoTracking.o(), i2, str, b2));
                            nativeVideoTracking.p(a(nativeVideoTracking.q(), i2, str, b2));
                            nativeVideoTracking.o(a(nativeVideoTracking.p(), i2, str, b2));
                            campaignEx.setNativeVideoTracking(nativeVideoTracking);
                            campaignEx.setNativeVideoTrackingString(CampaignEx.object2TrackingStr(nativeVideoTracking));
                        }
                        campaignEx.setPv_urls(a(campaignEx.getPv_urls(), i2, str, b2));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public c a() {
        JSONArray jSONArray;
        c cVar = new c();
        try {
            jSONArray = this.b;
        } catch (Exception unused) {
            cVar.d("checkConfigAndDB exception");
            cVar.a(c.k);
        }
        if (jSONArray != null && jSONArray.length() != 0) {
            if (this.f8930a == null) {
                cVar.d("db error");
                cVar.a(c.k);
                return cVar;
            }
            return cVar;
        }
        cVar.d("setting config is null");
        cVar.a(c.i);
        return cVar;
    }

    public List<com.mbridge.msdk.foundation.cache.b> a(int i, long j) {
        if (i >= 0) {
            a(i);
        }
        com.mbridge.msdk.foundation.db.c cVar = this.f8930a;
        if (cVar != null) {
            return cVar.a(this.d, j);
        }
        return null;
    }

    public void a(List<b> list, int i) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    Collections.sort(list, new C0095a());
                    int size = list.size() - i;
                    if (size > 0) {
                        List<b> subList = list.subList(0, size);
                        if (this.f8930a == null || subList.size() <= 0) {
                            return;
                        }
                        for (int i2 = 0; i2 < subList.size(); i2++) {
                            com.mbridge.msdk.foundation.cache.b bVar = subList.get(i2).f8932a;
                            this.f8930a.a(this.d, bVar.e(), bVar.d());
                            a(f, 1, null, true, bVar.e(), bVar.d(), -1, this.d);
                        }
                    }
                }
            } catch (Exception e2) {
                o0.a(e, e2);
            }
        }
    }

    private String a(String str, int i, String str2, String str3) {
        if (TextUtils.isEmpty(str) || str.contains("ca_sce") || str.contains("real_rid") || str.contains("real_bp")) {
            return str;
        }
        if (z0.c(str) > 0) {
            return str + "&ca_sce=" + i + "&real_rid=" + str2 + "&real_bp=" + str3;
        }
        return str + "?ca_sce=" + i + "&real_rid=" + str2 + "&real_bp=" + str3;
    }

    private String a(Map<Integer, String> map, int i, String str, String str2) {
        if (map == null || map.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(CampaignEx.JSON_AD_IMP_KEY, entry.getKey());
                jSONObject.put("url", a(entry.getValue(), i, str, str2));
                jSONArray.put(jSONObject);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return jSONArray.toString();
    }

    private String[] a(String[] strArr, int i, String str, String str2) {
        if (strArr == null || strArr.length == 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            strArr2[i2] = a(strArr[i2], i, str, str2);
        }
        return strArr2;
    }

    private List<String> a(List<String> list, int i, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(a(list.get(i2), i, str, str2));
        }
        return arrayList;
    }

    public long a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return 0L;
        }
        String ecppv = list.get(0).getEcppv();
        if (TextUtils.isEmpty(ecppv)) {
            return 0L;
        }
        String a2 = i0.a(ecppv);
        if (TextUtils.isEmpty(a2)) {
            return 0L;
        }
        try {
            if (Double.parseDouble(a2) <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                return 0L;
            }
            JSONObject c = c(d(str));
            int optInt = c != null ? c.optInt("max_cache_num", 20) : 20;
            com.mbridge.msdk.foundation.db.c cVar = this.f8930a;
            if (cVar == null || optInt <= 0) {
                return -1L;
            }
            return cVar.a(list, this.d);
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1L;
        }
    }

    public void a(String str, String str2, int i, String str3) {
        try {
            if (this.f8930a != null && !TextUtils.isEmpty(str3)) {
                if (i == 1) {
                    this.f8930a.a(str2, str, this.d, i);
                    a(f, 3, null, true, str2, str, -1, this.d);
                } else if (i == 2) {
                    this.f8930a.a(this.d, str2, str);
                    a(f, 1, null, true, str2, str, -1, this.d);
                } else if (i != 3) {
                } else {
                    this.f8930a.b(str2, str, this.d);
                    a(f, 4, null, true, str2, str, -1, this.d);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0188 A[Catch: Exception -> 0x002c, TryCatch #1 {Exception -> 0x002c, blocks: (B:3:0x0011, B:9:0x0031, B:11:0x0069, B:14:0x0079, B:16:0x007f, B:19:0x0086, B:21:0x0091, B:24:0x0098, B:26:0x009e, B:28:0x00a6, B:32:0x0104, B:33:0x0108, B:35:0x0113, B:38:0x0119, B:40:0x011f, B:42:0x012d, B:43:0x0131, B:47:0x0140, B:49:0x0146, B:51:0x014e, B:54:0x0169, B:55:0x016c, B:59:0x0180, B:61:0x0188, B:62:0x018d, B:57:0x0178), top: B:68:0x0011, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r17, int r18, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r19, boolean r20, java.lang.String r21, java.lang.String r22, int r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.cache.a.a(int, int, java.util.List, boolean, java.lang.String, java.lang.String, int, java.lang.String):void");
    }
}
