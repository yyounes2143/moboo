package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class h7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f3143a;
    private final String b;

    private h7(String str, String str2) {
        this.f3143a = str;
        this.b = str2;
    }

    public static h7 a(b8 b8Var, com.applovin.impl.sdk.k kVar) {
        if (b8Var != null) {
            if (kVar != null) {
                try {
                    return new h7((String) b8Var.a().get("apiFramework"), b8Var.d());
                } catch (Throwable th) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().a("VastJavaScriptResource", "Error occurred while initializing", th);
                    }
                    kVar.E().a("VastJavaScriptResource", th);
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public String b() {
        return this.f3143a;
    }

    public String c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            h7 h7Var = (h7) obj;
            String str = this.f3143a;
            if (str == null ? h7Var.f3143a != null : !str.equals(h7Var.f3143a)) {
                return false;
            }
            String str2 = this.b;
            String str3 = h7Var.b;
            if (str2 != null) {
                return str2.equals(str3);
            }
            if (str3 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i;
        String str = this.f3143a;
        int i2 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i3 = i * 31;
        String str2 = this.b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return i3 + i2;
    }

    public String toString() {
        return "VastJavaScriptResource{apiFramework='" + this.f3143a + "', javascriptResourceUrl='" + this.b + '\'' + AbstractJsonLexerKt.END_OBJ;
    }

    public static h7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        return new h7(JsonUtils.getString(jSONObject, "api_framework", null), JsonUtils.getString(jSONObject, "javascript_resource_url", null));
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "api_framework", this.f3143a);
        JsonUtils.putString(jSONObject, "javascript_resource_url", this.b);
        return jSONObject;
    }
}
