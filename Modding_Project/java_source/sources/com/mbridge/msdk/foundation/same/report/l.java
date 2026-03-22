package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f9061a;
    private final String b;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f9062a = new HashMap();
        private final String b;

        public b(String str) {
            this.b = str;
        }

        public l a() {
            return new l(this);
        }
    }

    private void a(Map<String, String> map, JSONObject jSONObject) {
        if (map == null || map.isEmpty() || jSONObject == null) {
            return;
        }
        try {
            for (String str : map.keySet()) {
                jSONObject.put(str, a(map.get(str)));
            }
        } catch (Exception e) {
            o0.b("SameCommonReporter", e.getMessage());
        }
    }

    public void b(String str) {
        if (!TextUtils.isEmpty(this.b)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", this.b);
                a(this.f9061a, jSONObject);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("SameCommonReporter", th.getMessage());
            }
        }
    }

    private l(b bVar) {
        this.b = bVar.b;
        this.f9061a = bVar.f9062a;
    }

    private String a(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }
}
