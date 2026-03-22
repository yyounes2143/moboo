package com.applovin.impl;

import android.net.Uri;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class d7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private int f3113a;
    private int b;
    private Uri c;
    private i7 d;
    private final Set e = new HashSet();
    private final Map f = new HashMap();

    private d7() {
    }

    public static d7 a(b8 b8Var, d7 d7Var, e7 e7Var, com.applovin.impl.sdk.k kVar) {
        b8 c;
        if (b8Var != null) {
            if (kVar != null) {
                if (d7Var == null) {
                    try {
                        d7Var = new d7();
                    } catch (Throwable th) {
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            kVar.O().a("VastCompanionAd", "Error occurred while initializing", th);
                        }
                        kVar.E().a("VastCompanionAd", th);
                        return null;
                    }
                }
                if (d7Var.f3113a == 0 && d7Var.b == 0) {
                    int parseInt = StringUtils.parseInt((String) b8Var.a().get("width"));
                    int parseInt2 = StringUtils.parseInt((String) b8Var.a().get("height"));
                    if (parseInt > 0 && parseInt2 > 0) {
                        d7Var.f3113a = parseInt;
                        d7Var.b = parseInt2;
                    }
                }
                d7Var.d = i7.a(b8Var, d7Var.d, kVar);
                if (d7Var.c == null && (c = b8Var.c("CompanionClickThrough")) != null) {
                    String d = c.d();
                    if (StringUtils.isValidString(d)) {
                        d7Var.c = Uri.parse(d);
                    }
                }
                m7.a(b8Var.a("CompanionClickTracking"), d7Var.e, e7Var, kVar);
                m7.a(b8Var, d7Var.f, e7Var, kVar);
                return d7Var;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Set b() {
        return this.e;
    }

    public Uri c() {
        return this.c;
    }

    public Map d() {
        return this.f;
    }

    public i7 e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d7)) {
            return false;
        }
        d7 d7Var = (d7) obj;
        if (this.f3113a != d7Var.f3113a || this.b != d7Var.b) {
            return false;
        }
        Uri uri = this.c;
        if (uri == null ? d7Var.c != null : !uri.equals(d7Var.c)) {
            return false;
        }
        i7 i7Var = this.d;
        if (i7Var == null ? d7Var.d != null : !i7Var.equals(d7Var.d)) {
            return false;
        }
        Set set = this.e;
        if (set == null ? d7Var.e != null : !set.equals(d7Var.e)) {
            return false;
        }
        Map map = this.f;
        Map map2 = d7Var.f;
        if (map != null) {
            return map.equals(map2);
        }
        if (map2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        int i4 = ((this.f3113a * 31) + this.b) * 31;
        Uri uri = this.c;
        int i5 = 0;
        if (uri != null) {
            i = uri.hashCode();
        } else {
            i = 0;
        }
        int i6 = (i4 + i) * 31;
        i7 i7Var = this.d;
        if (i7Var != null) {
            i2 = i7Var.hashCode();
        } else {
            i2 = 0;
        }
        int i7 = (i6 + i2) * 31;
        Set set = this.e;
        if (set != null) {
            i3 = set.hashCode();
        } else {
            i3 = 0;
        }
        int i8 = (i7 + i3) * 31;
        Map map = this.f;
        if (map != null) {
            i5 = map.hashCode();
        }
        return i8 + i5;
    }

    public String toString() {
        return "VastCompanionAd{width=" + this.f3113a + ", height=" + this.b + ", destinationUri=" + this.c + ", nonVideoResource=" + this.d + ", clickTrackers=" + this.e + ", eventTrackers=" + this.f + AbstractJsonLexerKt.END_OBJ;
    }

    public static d7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        int i = JsonUtils.getInt(jSONObject, "width", 0);
        int i2 = JsonUtils.getInt(jSONObject, "height", 0);
        String string = JsonUtils.getString(jSONObject, "destination_uri", null);
        Uri parse = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        i7 a2 = i7.a(JsonUtils.getJSONObject(jSONObject, "non_video_resource", (JSONObject) null), kVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            k7 a3 = k7.a(JsonUtils.getJSONObject(jSONArray, i3, (JSONObject) null), kVar);
            if (a3 != null) {
                hashSet.add(a3);
            }
        }
        d7 d7Var = new d7();
        d7Var.f3113a = i;
        d7Var.b = i2;
        d7Var.c = parse;
        d7Var.d = a2;
        d7Var.e.addAll(hashSet);
        return d7Var;
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putInt(jSONObject, "width", this.f3113a);
        JsonUtils.putInt(jSONObject, "height", this.b);
        Uri uri = this.c;
        JsonUtils.putString(jSONObject, "destination_uri", uri == null ? null : uri.toString());
        i7 i7Var = this.d;
        JsonUtils.putJSONObject(jSONObject, "non_video_resource", i7Var != null ? i7Var.a() : null);
        JSONArray jSONArray = new JSONArray();
        for (k7 k7Var : this.e) {
            jSONArray.put(k7Var.a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray);
        return jSONObject;
    }
}
