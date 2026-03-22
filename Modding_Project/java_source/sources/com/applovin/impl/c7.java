package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class c7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private final List f3100a;

    private c7(List list) {
        this.f3100a = list;
    }

    public static c7 a(b8 b8Var, c7 c7Var, e7 e7Var, com.applovin.impl.sdk.k kVar) {
        try {
            List b = c7Var != null ? c7Var.b() : new ArrayList();
            for (b8 b8Var2 : b8Var.a("Verification")) {
                b7 a2 = b7.a(b8Var2, e7Var, kVar);
                if (a2 != null) {
                    b.add(a2);
                }
            }
            return new c7(b);
        } catch (Throwable th) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("VastAdVerifications", "Error occurred while initializing", th);
            }
            kVar.E().a("VastAdVerifications", th);
            return null;
        }
    }

    public List b() {
        return this.f3100a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c7)) {
            return false;
        }
        return this.f3100a.equals(((c7) obj).f3100a);
    }

    public int hashCode() {
        return this.f3100a.hashCode();
    }

    public String toString() {
        return "VastAdVerification{verifications='" + this.f3100a + '\'' + AbstractJsonLexerKt.END_OBJ;
    }

    public static c7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "verifications", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            b7 a2 = b7.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), kVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new c7(arrayList);
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        if (this.f3100a != null) {
            JSONArray jSONArray = new JSONArray();
            for (b7 b7Var : this.f3100a) {
                jSONArray.put(b7Var.a());
            }
            JsonUtils.putJsonArray(jSONObject, "verifications", jSONArray);
        }
        return jSONObject;
    }
}
