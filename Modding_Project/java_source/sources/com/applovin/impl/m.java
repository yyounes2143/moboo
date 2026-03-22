package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class m implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final String f3188a;
    private final String b;
    private final MaxAdFormat c;
    private final n d;
    private final List e;

    public m(JSONObject jSONObject, Map map, com.applovin.impl.sdk.k kVar) {
        this.f3188a = JsonUtils.getString(jSONObject, "name", "");
        this.b = JsonUtils.getString(jSONObject, "display_name", "");
        this.c = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "format", null));
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "waterfalls", new JSONArray());
        this.e = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                this.e.add(new n(jSONObject2, map, this.c, kVar));
            }
        }
        this.d = this.e.isEmpty() ? null : (n) this.e.get(0);
    }

    public MaxAdFormat a() {
        return this.c;
    }

    public String b() {
        MaxAdFormat maxAdFormat = this.c;
        if (maxAdFormat != null) {
            return maxAdFormat.getLabel();
        }
        return "Unknown";
    }

    public String c() {
        return this.f3188a;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return "\n---------- " + this.b + " ----------\nIdentifier - " + this.f3188a + "\nFormat     - " + b();
    }

    public n f() {
        return this.d;
    }

    public List g() {
        return this.e;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(m mVar) {
        return this.b.compareToIgnoreCase(mVar.b);
    }
}
