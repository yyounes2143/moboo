package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f3082a;
    private final List b;
    private final String c;
    private final Set d;

    private b7(String str, List list, String str2, Set set) {
        this.f3082a = str;
        this.b = list;
        this.c = str2;
        this.d = set;
    }

    public static b7 a(b8 b8Var, e7 e7Var, com.applovin.impl.sdk.k kVar) {
        try {
            String str = (String) b8Var.a().get("vendor");
            b8 b = b8Var.b("VerificationParameters");
            String d = b != null ? b.d() : null;
            List<b8> a2 = b8Var.a("JavaScriptResource");
            ArrayList arrayList = new ArrayList(a2.size());
            for (b8 b8Var2 : a2) {
                h7 a3 = h7.a(b8Var2, kVar);
                if (a3 != null) {
                    arrayList.add(a3);
                }
            }
            HashMap hashMap = new HashMap();
            m7.a(b8Var, hashMap, e7Var, kVar);
            return new b7(str, arrayList, d, (Set) hashMap.get("verificationNotExecuted"));
        } catch (Throwable th) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("VastAdVerification", "Error occurred while initializing", th);
            }
            kVar.E().a("VastAdVerification", th);
            return null;
        }
    }

    public Set b() {
        return this.d;
    }

    public List c() {
        return this.b;
    }

    public String d() {
        return this.f3082a;
    }

    public String e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            b7 b7Var = (b7) obj;
            String str = this.f3082a;
            if (str == null ? b7Var.f3082a != null : !str.equals(b7Var.f3082a)) {
                return false;
            }
            List list = this.b;
            if (list == null ? b7Var.b != null : !list.equals(b7Var.b)) {
                return false;
            }
            String str2 = this.c;
            if (str2 == null ? b7Var.c != null : !str2.equals(b7Var.c)) {
                return false;
            }
            Set set = this.d;
            Set set2 = b7Var.d;
            if (set != null) {
                return set.equals(set2);
            }
            if (set2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        String str = this.f3082a;
        int i4 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i5 = i * 31;
        List list = this.b;
        if (list != null) {
            i2 = list.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        String str2 = this.c;
        if (str2 != null) {
            i3 = str2.hashCode();
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 31;
        Set set = this.d;
        if (set != null) {
            i4 = set.hashCode();
        }
        return i7 + i4;
    }

    public String toString() {
        return "VastAdVerification{vendorId='" + this.f3082a + "'javascriptResources='" + this.b + "'verificationParameters='" + this.c + "'errorEventTrackers='" + this.d + '\'' + AbstractJsonLexerKt.END_OBJ;
    }

    public static b7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "vendor_id", null);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "javascript_resources", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            h7 a2 = h7.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), kVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "verification_parameters", null);
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "error_event_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            k7 a3 = k7.a(JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null), kVar);
            if (a3 != null) {
                hashSet.add(a3);
            }
        }
        return new b7(string, arrayList, string2, hashSet);
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "vendor_id", this.f3082a);
        if (this.b != null) {
            JSONArray jSONArray = new JSONArray();
            for (h7 h7Var : this.b) {
                jSONArray.put(h7Var.a());
            }
            JsonUtils.putJsonArray(jSONObject, "javascript_resources", jSONArray);
        }
        JsonUtils.putString(jSONObject, "verification_parameters", this.c);
        if (this.d != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (k7 k7Var : this.d) {
                jSONArray2.put(k7Var.a());
            }
            JsonUtils.putJsonArray(jSONObject, "error_event_trackers", jSONArray2);
        }
        return jSONObject;
    }
}
