package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a7 extends com.applovin.impl.sdk.ad.b implements d4 {
    private final String m;
    private final String n;
    private final j7 o;
    private final long p;
    private final n7 q;
    private final d7 r;
    private final String s;
    private final c7 t;
    private final y3 u;
    private final Set v;
    private final Set w;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private JSONObject f3022a;
        private JSONObject b;
        private com.applovin.impl.sdk.k c;
        private long d;
        private String e;
        private String f;
        private j7 g;
        private n7 h;
        private d7 i;
        private c7 j;
        private Set k;
        private Set l;

        public b b(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.b = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No full ad response specified.");
        }

        public b b(String str) {
            this.e = str;
            return this;
        }

        public b b(Set set) {
            this.k = set;
            return this;
        }

        public b a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f3022a = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No ad object specified.");
        }

        public b a(com.applovin.impl.sdk.k kVar) {
            if (kVar != null) {
                this.c = kVar;
                return this;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }

        public b a(String str) {
            this.f = str;
            return this;
        }

        public b a(j7 j7Var) {
            this.g = j7Var;
            return this;
        }

        public b a(n7 n7Var) {
            this.h = n7Var;
            return this;
        }

        public b a(d7 d7Var) {
            this.i = d7Var;
            return this;
        }

        public b a(c7 c7Var) {
            this.j = c7Var;
            return this;
        }

        public b a(Set set) {
            this.l = set;
            return this;
        }

        public b a(long j) {
            this.d = j;
            return this;
        }

        public a7 a() {
            return new a7(this);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        COMPANION_AD,
        VIDEO
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum d {
        IMPRESSION,
        VIDEO_CLICK,
        COMPANION_CLICK,
        VIDEO,
        COMPANION,
        INDUSTRY_ICON_IMPRESSION,
        INDUSTRY_ICON_CLICK,
        ERROR
    }

    private Set p1() {
        d7 d7Var = this.r;
        if (d7Var != null) {
            return d7Var.b();
        }
        return Collections.EMPTY_SET;
    }

    private String s1() {
        String stringFromAdObject = getStringFromAdObject("vimp_url", null);
        if (stringFromAdObject == null) {
            return null;
        }
        return stringFromAdObject.replace("{CLCODE}", getClCode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List t(v4 v4Var) {
        return z6.a(v4Var.a("vimp_urls", new JSONObject()), getClCode(), null, s1(), T(), Z0(), this.sdk);
    }

    private Set w1() {
        n7 n7Var = this.q;
        if (n7Var != null) {
            return n7Var.b();
        }
        return Collections.EMPTY_SET;
    }

    public boolean A1() {
        return getBooleanFromAdObject("vast_immediate_ad_load", Boolean.TRUE);
    }

    public void B1() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            v4Var.c("vast_is_streaming");
            return;
        }
        synchronized (this.adObjectLock) {
            this.adObject.remove("vast_is_streaming");
        }
    }

    public boolean C1() {
        return getBooleanFromAdObject("cache_companion_ad", Boolean.TRUE);
    }

    public boolean D1() {
        return getBooleanFromAdObject("cache_video", Boolean.TRUE);
    }

    public boolean E1() {
        return getBooleanFromAdObject("vast_fire_click_trackers_on_html_clicks", Boolean.FALSE);
    }

    public boolean F1() {
        return getBooleanFromAdObject("iopms", Boolean.FALSE);
    }

    public boolean G1() {
        return getBooleanFromAdObject("iopmsfsr", Boolean.TRUE);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public List J() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List t;
                    t = a7.this.t((v4) obj);
                    return t;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("vimp_urls", new JSONObject()), getClCode(), null, s1(), T(), Z0(), this.sdk);
        }
        return a2;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean M0() {
        return getBooleanFromFullResponse("is_persisted_ad", false);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean P0() {
        if (getBooleanFromAdObject("video_clickable", Boolean.FALSE) && m() != null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean Q0() {
        return getBooleanFromAdObject("vast_is_streaming", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public String S() {
        return this.s;
    }

    public Set a(d dVar, String str) {
        return a(dVar, new String[]{str});
    }

    public void d(String str) {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            v4Var.b("html_template", str);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html_template", str);
        }
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a7) || !super.equals(obj)) {
            return false;
        }
        a7 a7Var = (a7) obj;
        String str = this.m;
        if (str == null ? a7Var.m != null : !str.equals(a7Var.m)) {
            return false;
        }
        String str2 = this.n;
        if (str2 == null ? a7Var.n != null : !str2.equals(a7Var.n)) {
            return false;
        }
        j7 j7Var = this.o;
        if (j7Var == null ? a7Var.o != null : !j7Var.equals(a7Var.o)) {
            return false;
        }
        n7 n7Var = this.q;
        if (n7Var == null ? a7Var.q != null : !n7Var.equals(a7Var.q)) {
            return false;
        }
        d7 d7Var = this.r;
        if (d7Var == null ? a7Var.r != null : !d7Var.equals(a7Var.r)) {
            return false;
        }
        c7 c7Var = this.t;
        if (c7Var == null ? a7Var.t != null : !c7Var.equals(a7Var.t)) {
            return false;
        }
        Set set = this.v;
        if (set == null ? a7Var.v != null : !set.equals(a7Var.v)) {
            return false;
        }
        Set set2 = this.w;
        Set set3 = a7Var.w;
        if (set2 != null) {
            return set2.equals(set3);
        }
        if (set3 == null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        return this.p;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        return this.fullResponse;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        List g;
        n7 n7Var = this.q;
        if (n7Var == null || (g = n7Var.g()) == null || g.size() <= 0) {
            return false;
        }
        return true;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int hashCode = super.hashCode() * 31;
        String str = this.m;
        int i8 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i9 = (hashCode + i) * 31;
        String str2 = this.n;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i10 = (i9 + i2) * 31;
        j7 j7Var = this.o;
        if (j7Var != null) {
            i3 = j7Var.hashCode();
        } else {
            i3 = 0;
        }
        int i11 = (i10 + i3) * 31;
        n7 n7Var = this.q;
        if (n7Var != null) {
            i4 = n7Var.hashCode();
        } else {
            i4 = 0;
        }
        int i12 = (i11 + i4) * 31;
        d7 d7Var = this.r;
        if (d7Var != null) {
            i5 = d7Var.hashCode();
        } else {
            i5 = 0;
        }
        int i13 = (i12 + i5) * 31;
        c7 c7Var = this.t;
        if (c7Var != null) {
            i6 = c7Var.hashCode();
        } else {
            i6 = 0;
        }
        int i14 = (i13 + i6) * 31;
        Set set = this.v;
        if (set != null) {
            i7 = set.hashCode();
        } else {
            i7 = 0;
        }
        int i15 = (i14 + i7) * 31;
        Set set2 = this.w;
        if (set2 != null) {
            i8 = set2.hashCode();
        }
        return i15 + i8;
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public boolean isOpenMeasurementEnabled() {
        if (getBooleanFromAdObject("omsdk_enabled", Boolean.TRUE) && this.t != null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri m() {
        n7 n7Var = this.q;
        if (n7Var != null) {
            return n7Var.c();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri n0() {
        return m();
    }

    public c7 n1() {
        return this.t;
    }

    public d7 o1() {
        return this.r;
    }

    public String q1() {
        return getStringFromAdObject("html_template", "");
    }

    public c r1() {
        if ("companion_ad".equalsIgnoreCase(getStringFromAdObject("vast_first_caching_operation", "companion_ad"))) {
            return c.COMPANION_AD;
        }
        return c.VIDEO;
    }

    public g7 t1() {
        n7 n7Var = this.q;
        if (n7Var != null) {
            return n7Var.f();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public String toString() {
        return "VastAd{title='" + this.m + "', adDescription='" + this.n + "', systemInfo=" + this.o + ", videoCreative=" + this.q + ", companionAd=" + this.r + ", adVerifications=" + this.t + ", impressionTrackers=" + this.v + ", errorTrackers=" + this.w + AbstractJsonLexerKt.END_OBJ;
    }

    public long u1() {
        return getLongFromAdObject("real_close_delay", 0L);
    }

    public j7 v1() {
        return this.o;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri w0() {
        o7 y1 = y1();
        if (y1 != null) {
            return y1.e();
        }
        return null;
    }

    public n7 x1() {
        return this.q;
    }

    public o7 y1() {
        long j;
        Long f = n0.f(this.sdk);
        n7 n7Var = this.q;
        if (f != null) {
            j = f.longValue();
        } else {
            j = 0;
        }
        return n7Var.a(j);
    }

    public boolean z1() {
        if (t1() != null) {
            return true;
        }
        return false;
    }

    private a7(b bVar) {
        super(bVar.f3022a, bVar.b, bVar.c);
        this.m = bVar.e;
        this.o = bVar.g;
        this.n = bVar.f;
        this.q = bVar.h;
        this.r = bVar.i;
        this.t = bVar.j;
        this.v = bVar.k;
        this.w = bVar.l;
        this.u = new y3(this);
        Uri w0 = w0();
        if (w0 != null) {
            this.s = w0.toString();
        } else {
            this.s = "";
        }
        this.p = bVar.d;
    }

    public Set a(d dVar, String[] strArr) {
        this.sdk.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.sdk.O();
            O.a("VastAd", "Retrieving trackers of type '" + dVar + "' and events '" + Arrays.toString(strArr) + "'...");
        }
        if (dVar == d.IMPRESSION) {
            return this.v;
        }
        if (dVar == d.VIDEO_CLICK) {
            return w1();
        }
        if (dVar == d.COMPANION_CLICK) {
            return p1();
        }
        if (dVar == d.VIDEO) {
            return a(c.VIDEO, strArr);
        }
        if (dVar == d.COMPANION) {
            return a(c.COMPANION_AD, strArr);
        }
        if (dVar == d.INDUSTRY_ICON_CLICK) {
            return t1().b();
        }
        if (dVar == d.INDUSTRY_ICON_IMPRESSION) {
            return t1().f();
        }
        if (dVar == d.ERROR) {
            return this.w;
        }
        this.sdk.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O2 = this.sdk.O();
            O2.b("VastAd", "Failed to retrieve trackers of invalid type '" + dVar + "' and events '" + Arrays.toString(strArr) + "'");
        }
        return Collections.EMPTY_SET;
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public y3 getAdEventTracker() {
        return this.u;
    }

    private Set a(c cVar, String[] strArr) {
        Map d2;
        d7 d7Var;
        n7 n7Var;
        if (strArr != null && strArr.length > 0) {
            if (cVar == c.VIDEO && (n7Var = this.q) != null) {
                d2 = n7Var.e();
            } else {
                d2 = (cVar != c.COMPANION_AD || (d7Var = this.r) == null) ? null : d7Var.d();
            }
            HashSet hashSet = new HashSet();
            if (d2 != null && !d2.isEmpty()) {
                for (String str : strArr) {
                    if (d2.containsKey(str)) {
                        hashSet.addAll((Collection) d2.get(str));
                    }
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }
        return Collections.EMPTY_SET;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public void S0() {
    }

    public static a7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        b bVar = new b();
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "full_response", (JSONObject) null);
        if (jSONObject2 == null) {
            return null;
        }
        bVar.b = jSONObject2;
        JSONObject jSONObject3 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject2, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray()), 0, (JSONObject) null);
        if (jSONObject3 == null) {
            return null;
        }
        bVar.f3022a = jSONObject3;
        bVar.c = kVar;
        bVar.d = JsonUtils.getLong(jSONObject, "created_at_millis", 0L);
        bVar.e = JsonUtils.getString(jSONObject, CampaignEx.JSON_KEY_TITLE, "");
        bVar.f = JsonUtils.getString(jSONObject, "ad_description", "");
        bVar.g = j7.a(JsonUtils.getJSONObject(jSONObject, "system_info", (JSONObject) null), kVar);
        bVar.h = n7.a(JsonUtils.getJSONObject(jSONObject, "video_creative", (JSONObject) null), kVar);
        bVar.i = d7.a(JsonUtils.getJSONObject(jSONObject, "companion_ad", (JSONObject) null), kVar);
        bVar.j = c7.a(JsonUtils.getJSONObject(jSONObject, "ad_verifications", (JSONObject) null), kVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "impression_trackers", new JSONArray());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            k7 a2 = k7.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), kVar);
            if (a2 != null) {
                hashSet.add(a2);
            }
        }
        bVar.k = hashSet;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "error_trackers", new JSONArray());
        HashSet hashSet2 = new HashSet();
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            k7 a3 = k7.a(JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null), kVar);
            if (a3 != null) {
                hashSet2.add(a3);
            }
        }
        bVar.l = hashSet2;
        a7 a7Var = new a7(bVar);
        JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject, "cached_ad_html_resources_urls", new JSONArray());
        for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
            Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray3, i3, null);
            if (objectAtIndex instanceof String) {
                String str = (String) objectAtIndex;
                if (!TextUtils.isEmpty(str)) {
                    a7Var.a(Uri.parse(str));
                }
            }
        }
        return a7Var;
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putLong(jSONObject, "created_at_millis", this.p);
        JsonUtils.putString(jSONObject, CampaignEx.JSON_KEY_TITLE, this.m);
        JsonUtils.putString(jSONObject, "ad_description", this.n);
        j7 j7Var = this.o;
        if (j7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "system_info", j7Var.a());
        }
        n7 n7Var = this.q;
        if (n7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "video_creative", n7Var.a());
        }
        d7 d7Var = this.r;
        if (d7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "companion_ad", d7Var.a());
        }
        c7 c7Var = this.t;
        if (c7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "ad_verifications", c7Var.a());
        }
        if (this.v != null) {
            JSONArray jSONArray = new JSONArray();
            for (k7 k7Var : this.v) {
                jSONArray.put(k7Var.a());
            }
            JsonUtils.putJsonArray(jSONObject, "impression_trackers", jSONArray);
        }
        if (this.w != null) {
            JSONArray jSONArray2 = new JSONArray();
            for (k7 k7Var2 : this.w) {
                jSONArray2.put(k7Var2.a());
            }
            JsonUtils.putJsonArray(jSONObject, "error_trackers", jSONArray2);
        }
        ArrayList arrayList = new ArrayList();
        for (Uri uri : l()) {
            arrayList.add(uri.toString());
        }
        JsonUtils.putJsonArray(jSONObject, "cached_ad_html_resources_urls", new JSONArray((Collection) arrayList));
        v4 v4Var = this.synchronizedFullResponse;
        if (v4Var != null) {
            JsonUtils.putJSONObject(jSONObject, "full_response", v4Var.a());
            return jSONObject;
        }
        synchronized (this.fullResponseLock) {
            JsonUtils.putJSONObject(jSONObject, "full_response", this.fullResponse);
        }
        return jSONObject;
    }
}
