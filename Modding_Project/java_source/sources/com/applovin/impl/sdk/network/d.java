package com.applovin.impl.sdk.network;

import com.applovin.impl.i4;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private String f3724a;
    private String b;
    private String c;
    private String d;
    private Map e;
    private Map f;
    private Map g;
    private i4.a h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private String m;
    private int n;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private String f3725a;
        private String b;
        private String c;
        private String d;
        private Map e;
        private Map f;
        private Map g;
        private i4.a h;
        private boolean i;
        private boolean j;
        private boolean k;
        private boolean l;

        public b a(String str) {
            this.d = str;
            return this;
        }

        public b b(String str) {
            this.f3725a = str;
            return this;
        }

        public b c(String str) {
            this.b = str;
            return this;
        }

        public b d(String str) {
            this.c = str;
            return this;
        }

        public b a(Map map) {
            this.f = map;
            return this;
        }

        public b b(Map map) {
            this.e = map;
            return this;
        }

        public b c(Map map) {
            this.g = map;
            return this;
        }

        public b d(boolean z) {
            this.k = z;
            return this;
        }

        public b a(i4.a aVar) {
            this.h = aVar;
            return this;
        }

        public b b(boolean z) {
            this.l = z;
            return this;
        }

        public b c(boolean z) {
            this.j = z;
            return this;
        }

        public b a(boolean z) {
            this.i = z;
            return this;
        }

        public d a() {
            return new d(this);
        }
    }

    public static b b() {
        return new b();
    }

    public void a() {
        Map map = CollectionUtils.map(this.e);
        map.put("postback_ts", String.valueOf(System.currentTimeMillis()));
        this.e = map;
    }

    public int c() {
        return this.n;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.m;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f3724a.equals(((d) obj).f3724a);
        }
        return false;
    }

    public i4.a f() {
        return this.h;
    }

    public Map g() {
        return this.f;
    }

    public String h() {
        return this.b;
    }

    public int hashCode() {
        return this.f3724a.hashCode();
    }

    public Map i() {
        return this.e;
    }

    public Map j() {
        return this.g;
    }

    public String k() {
        return this.c;
    }

    public void l() {
        this.n++;
    }

    public boolean m() {
        return this.k;
    }

    public boolean n() {
        return this.i;
    }

    public boolean o() {
        return this.j;
    }

    public boolean p() {
        return this.l;
    }

    public JSONObject q() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("uniqueId", this.f3724a);
        jSONObject.put("communicatorRequestId", this.m);
        jSONObject.put("httpMethod", this.b);
        jSONObject.put("targetUrl", this.c);
        jSONObject.put("backupUrl", this.d);
        jSONObject.put("encodingType", this.h);
        jSONObject.put("isEncodingEnabled", this.i);
        jSONObject.put("gzipBodyEncoding", this.j);
        jSONObject.put("isAllowedPreInitEvent", this.k);
        jSONObject.put("attemptNumber", this.n);
        if (this.e != null) {
            jSONObject.put("parameters", new JSONObject(this.e));
        }
        if (this.f != null) {
            jSONObject.put("httpHeaders", new JSONObject(this.f));
        }
        if (this.g != null) {
            jSONObject.put("requestBody", new JSONObject(this.g));
        }
        return jSONObject;
    }

    public String toString() {
        return "PostbackRequest{uniqueId='" + this.f3724a + "', communicatorRequestId='" + this.m + "', httpMethod='" + this.b + "', targetUrl='" + this.c + "', backupUrl='" + this.d + "', attemptNumber=" + this.n + ", isEncodingEnabled=" + this.i + ", isGzipBodyEncoding=" + this.j + ", isAllowedPreInitEvent=" + this.k + ", shouldFireInWebView=" + this.l + AbstractJsonLexerKt.END_OBJ;
    }

    public d(JSONObject jSONObject, k kVar) {
        Map hashMap;
        Map hashMap2;
        Map hashMap3;
        String string = JsonUtils.getString(jSONObject, "uniqueId", UUID.randomUUID().toString());
        String string2 = JsonUtils.getString(jSONObject, "communicatorRequestId", "");
        String string3 = JsonUtils.getString(jSONObject, "httpMethod", "");
        String string4 = jSONObject.getString("targetUrl");
        String string5 = JsonUtils.getString(jSONObject, "backupUrl", "");
        int i = jSONObject.getInt("attemptNumber");
        if (JsonUtils.valueExists(jSONObject, "parameters")) {
            hashMap = DesugarCollections.synchronizedMap(JsonUtils.toStringMap(jSONObject.getJSONObject("parameters")));
        } else {
            hashMap = new HashMap();
        }
        if (JsonUtils.valueExists(jSONObject, "httpHeaders")) {
            hashMap2 = DesugarCollections.synchronizedMap(JsonUtils.toStringMap(jSONObject.getJSONObject("httpHeaders")));
        } else {
            hashMap2 = new HashMap();
        }
        if (JsonUtils.valueExists(jSONObject, "requestBody")) {
            hashMap3 = DesugarCollections.synchronizedMap(JsonUtils.toStringObjectMap(jSONObject.getJSONObject("requestBody")));
        } else {
            hashMap3 = new HashMap();
        }
        this.f3724a = string;
        this.b = string3;
        this.m = string2;
        this.c = string4;
        this.d = string5;
        this.e = hashMap;
        this.f = hashMap2;
        this.g = hashMap3;
        this.h = i4.a.a(jSONObject.optInt("encodingType", i4.a.DEFAULT.b()));
        this.i = jSONObject.optBoolean("isEncodingEnabled", false);
        this.j = jSONObject.optBoolean("gzipBodyEncoding", false);
        this.k = jSONObject.optBoolean("isAllowedPreInitEvent", false);
        this.l = jSONObject.optBoolean("shouldFireInWebView", false);
        this.n = i;
    }

    private d(b bVar) {
        this.f3724a = UUID.randomUUID().toString();
        this.b = bVar.b;
        this.c = bVar.c;
        this.d = bVar.d;
        this.e = bVar.e;
        this.f = bVar.f;
        this.g = bVar.g;
        this.h = bVar.h;
        this.i = bVar.i;
        this.j = bVar.j;
        this.k = bVar.k;
        this.l = bVar.l;
        this.m = bVar.f3725a;
        this.n = 0;
    }
}
