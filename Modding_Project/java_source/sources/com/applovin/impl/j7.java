package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class j7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private String f3163a;
    private String b;

    private j7() {
    }

    public static j7 a(b8 b8Var, j7 j7Var, com.applovin.impl.sdk.k kVar) {
        if (b8Var != null) {
            if (kVar != null) {
                if (j7Var == null) {
                    try {
                        j7Var = new j7();
                    } catch (Throwable th) {
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            kVar.O().a("VastSystemInfo", "Error occurred while initializing", th);
                        }
                        kVar.E().a("VastSystemInfo", th);
                        return null;
                    }
                }
                if (!StringUtils.isValidString(j7Var.f3163a)) {
                    String d = b8Var.d();
                    if (StringUtils.isValidString(d)) {
                        j7Var.f3163a = d;
                    }
                }
                if (!StringUtils.isValidString(j7Var.b)) {
                    String str = (String) b8Var.a().get("version");
                    if (StringUtils.isValidString(str)) {
                        j7Var.b = str;
                    }
                }
                return j7Var;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j7)) {
            return false;
        }
        j7 j7Var = (j7) obj;
        String str = this.f3163a;
        if (str == null ? j7Var.f3163a != null : !str.equals(j7Var.f3163a)) {
            return false;
        }
        String str2 = this.b;
        String str3 = j7Var.b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        String str = this.f3163a;
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
        return "VastSystemInfo{name='" + this.f3163a + "', version='" + this.b + '\'' + AbstractJsonLexerKt.END_OBJ;
    }

    public static j7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        j7 j7Var = new j7();
        j7Var.f3163a = JsonUtils.getString(jSONObject, "name", null);
        j7Var.b = JsonUtils.getString(jSONObject, "version", null);
        return j7Var;
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "name", this.f3163a);
        JsonUtils.putString(jSONObject, "version", this.b);
        return jSONObject;
    }
}
