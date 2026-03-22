package com.mbridge.msdk.foundation.controller;

import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, com.mbridge.msdk.foundation.cache.d> f8944a;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.foundation.controller.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0098b {

        /* renamed from: a  reason: collision with root package name */
        static b f8945a = new b();
    }

    public static b a() {
        return C0098b.f8945a;
    }

    public com.mbridge.msdk.foundation.cache.d b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        Exception e;
        if (this.f8944a == null) {
            this.f8944a = new HashMap<>();
        }
        if (!this.f8944a.containsKey(str)) {
            if (jSONArray == null) {
                try {
                    jSONArray2 = new JSONArray();
                } catch (Exception e2) {
                    jSONArray2 = jSONArray;
                    e = e2;
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("c_cb", 0);
                    jSONObject.put("t_disc", 0.95d);
                    jSONObject.put("u_disc", 0.95d);
                    jSONObject.put("max_ecppv_diff", 0);
                    jSONObject.put("max_cache_num", 20);
                    jSONObject.put("max_usage_limit", 10);
                    jSONObject.put("time_interval", 7200);
                    jSONArray2.put(jSONObject);
                } catch (Exception e3) {
                    e = e3;
                    e.getMessage();
                    jSONArray = jSONArray2;
                    return a(str, jSONArray);
                }
                jSONArray = jSONArray2;
            }
            return a(str, jSONArray);
        }
        return this.f8944a.get(str);
    }

    private b() {
        this.f8944a = new HashMap<>();
    }

    public com.mbridge.msdk.foundation.cache.d a(String str, JSONArray jSONArray) {
        if (this.f8944a == null) {
            this.f8944a = new HashMap<>();
        }
        if (this.f8944a.containsKey(str)) {
            return this.f8944a.get(str);
        }
        com.mbridge.msdk.foundation.cache.d dVar = new com.mbridge.msdk.foundation.cache.d(str, jSONArray);
        this.f8944a.put(str, dVar);
        return dVar;
    }
}
