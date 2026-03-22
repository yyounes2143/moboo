package com.applovin.impl;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class n7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private List f3449a;
    private List b;
    private int c;
    private Uri d;
    private final Set e;
    private g7 f;
    private final Map g;

    private n7() {
        List list = Collections.EMPTY_LIST;
        this.f3449a = list;
        this.b = list;
        this.e = new HashSet();
        this.g = new HashMap();
    }

    public static n7 a(b8 b8Var, n7 n7Var, e7 e7Var, com.applovin.impl.sdk.k kVar) {
        b8 c;
        g7 a2;
        List a3;
        b8 c2;
        List a4;
        b8 c3;
        int a5;
        if (b8Var != null) {
            if (e7Var != null) {
                if (kVar != null) {
                    if (n7Var == null) {
                        try {
                            n7Var = new n7(e7Var);
                        } catch (Throwable th) {
                            kVar.O();
                            if (com.applovin.impl.sdk.o.a()) {
                                kVar.O().a("VastVideoCreative", "Error occurred while initializing", th);
                            }
                            kVar.E().a("VastVideoCreative", th);
                            return null;
                        }
                    }
                    if (n7Var.c == 0 && (c3 = b8Var.c("Duration")) != null && (a5 = a(c3.d(), kVar)) > 0) {
                        n7Var.c = a5;
                    }
                    b8 c4 = b8Var.c("MediaFiles");
                    if (c4 != null && (a4 = a(c4, kVar)) != null && a4.size() > 0) {
                        List list = n7Var.f3449a;
                        if (list != null) {
                            a4.addAll(list);
                        }
                        n7Var.f3449a = a4;
                    }
                    b8 c5 = b8Var.c("VideoClicks");
                    if (c5 != null) {
                        if (n7Var.d == null && (c2 = c5.c("ClickThrough")) != null) {
                            String d = c2.d();
                            if (StringUtils.isValidString(d)) {
                                n7Var.d = Uri.parse(d);
                            }
                        }
                        m7.a(c5.a("ClickTracking"), n7Var.e, e7Var, kVar);
                    }
                    b8 c6 = b8Var.c("Icons");
                    if (c6 != null && (a2 = g7.a((c = c6.c("Icon")), kVar)) != null) {
                        b8 c7 = c.c("IconClicks");
                        if (c7 != null && (a3 = c7.a("IconClickTracking")) != null) {
                            m7.a(a3, a2.f3133a, e7Var, kVar);
                        }
                        List a6 = c.a("IconViewTracking");
                        if (a6 != null) {
                            m7.a(a6, a2.b, e7Var, kVar);
                        }
                        n7Var.f = a2;
                    }
                    m7.a(b8Var, n7Var.g, e7Var, kVar);
                    return n7Var;
                }
                throw new IllegalArgumentException("No sdk specified.");
            }
            throw new IllegalArgumentException("No context specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Set b() {
        return this.e;
    }

    public Uri c() {
        return this.d;
    }

    public int d() {
        return this.c;
    }

    public Map e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n7)) {
            return false;
        }
        n7 n7Var = (n7) obj;
        if (this.c != n7Var.c) {
            return false;
        }
        List list = this.f3449a;
        if (list == null ? n7Var.f3449a != null : !list.equals(n7Var.f3449a)) {
            return false;
        }
        Uri uri = this.d;
        if (uri == null ? n7Var.d != null : !uri.equals(n7Var.d)) {
            return false;
        }
        Set set = this.e;
        if (set == null ? n7Var.e != null : !set.equals(n7Var.e)) {
            return false;
        }
        Map map = this.g;
        Map map2 = n7Var.g;
        if (map != null) {
            return map.equals(map2);
        }
        if (map2 == null) {
            return true;
        }
        return false;
    }

    public g7 f() {
        return this.f;
    }

    public List g() {
        return this.f3449a;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        List list = this.f3449a;
        int i4 = 0;
        if (list != null) {
            i = list.hashCode();
        } else {
            i = 0;
        }
        int i5 = ((i * 31) + this.c) * 31;
        Uri uri = this.d;
        if (uri != null) {
            i2 = uri.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        Set set = this.e;
        if (set != null) {
            i3 = set.hashCode();
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 31;
        Map map = this.g;
        if (map != null) {
            i4 = map.hashCode();
        }
        return i7 + i4;
    }

    public String toString() {
        return "VastVideoCreative{videoFiles=" + this.f3449a + ", durationSeconds=" + this.c + ", destinationUri=" + this.d + ", clickTrackers=" + this.e + ", eventTrackers=" + this.g + ", industryIcon=" + this.f + AbstractJsonLexerKt.END_OBJ;
    }

    private n7(e7 e7Var) {
        List list = Collections.EMPTY_LIST;
        this.f3449a = list;
        this.b = list;
        this.e = new HashSet();
        this.g = new HashMap();
        this.b = e7Var.f();
    }

    private static int a(String str, com.applovin.impl.sdk.k kVar) {
        try {
            List<String> explode = CollectionUtils.explode(str, ":");
            if (explode.size() == 3) {
                return (int) (TimeUnit.HOURS.toSeconds(StringUtils.parseInt(explode.get(0))) + TimeUnit.MINUTES.toSeconds(StringUtils.parseInt(explode.get(1))) + StringUtils.parseInt(explode.get(2)));
            }
        } catch (Throwable unused) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.b("VastVideoCreative", "Unable to parse duration from \"" + str + "\"");
            }
        }
        return 0;
    }

    private static List a(b8 b8Var, com.applovin.impl.sdk.k kVar) {
        List<b8> a2 = b8Var.a("MediaFile");
        ArrayList arrayList = new ArrayList(a2.size());
        List<String> explode = CollectionUtils.explode((String) kVar.a(l4.t4));
        List<String> explode2 = CollectionUtils.explode((String) kVar.a(l4.s4));
        for (b8 b8Var2 : a2) {
            o7 a3 = o7.a(b8Var2, kVar);
            if (a3 != null) {
                try {
                    String c = a3.c();
                    if (StringUtils.isValidString(c) && !explode.contains(c)) {
                        arrayList.add(a3);
                    } else {
                        if (((Boolean) kVar.a(l4.u4)).booleanValue()) {
                            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(a3.e().toString());
                            if (StringUtils.isValidString(fileExtensionFromUrl) && !explode2.contains(fileExtensionFromUrl)) {
                                arrayList.add(a3);
                            }
                        }
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o O = kVar.O();
                            O.k("VastVideoCreative", "Video file not supported: " + a3);
                        }
                    }
                } catch (Throwable th) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O2 = kVar.O();
                        O2.a("VastVideoCreative", "Failed to validate video file: " + a3, th);
                    }
                }
            }
        }
        return arrayList;
    }

    public o7 a(long j) {
        List list = this.f3449a;
        o7 o7Var = null;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<o7> arrayList = new ArrayList(3);
        for (String str : this.b) {
            for (o7 o7Var2 : this.f3449a) {
                String c = o7Var2.c();
                if (StringUtils.isValidString(c) && str.equalsIgnoreCase(c)) {
                    arrayList.add(o7Var2);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = this.f3449a;
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.applovin.impl.O000000000
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = n7.a((o7) obj, (o7) obj2);
                return a2;
            }
        });
        for (o7 o7Var3 : arrayList) {
            if (o7Var3.b() > j) {
                break;
            }
            o7Var = o7Var3;
        }
        return o7Var != null ? o7Var : (o7) arrayList.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(o7 o7Var, o7 o7Var2) {
        return Long.compare(o7Var.b(), o7Var2.b());
    }

    public static n7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        n7 n7Var = new n7();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "video_files", new JSONArray());
        n7Var.f3449a = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            o7 a2 = o7.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), kVar);
            if (a2 != null) {
                n7Var.f3449a.add(a2);
            }
        }
        n7Var.b = JsonUtils.getStringList(jSONObject, "preferred_video_file_types", Collections.EMPTY_LIST);
        n7Var.c = JsonUtils.getInt(jSONObject, "duration_seconds", 0);
        String string = JsonUtils.getString(jSONObject, "destination_uri", null);
        n7Var.d = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            k7 a3 = k7.a(JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null), kVar);
            if (a3 != null) {
                n7Var.e.add(a3);
            }
        }
        n7Var.f = g7.a(JsonUtils.getJSONObject(jSONObject, "industry_icon", (JSONObject) null), kVar);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "event_trackers", new JSONObject());
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            HashSet hashSet = new HashSet();
            String next = keys.next();
            JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject2, next, new JSONArray());
            for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                k7 a4 = k7.a(JsonUtils.getJSONObject(jSONArray3, i3, (JSONObject) null), kVar);
                if (a4 != null) {
                    hashSet.add(a4);
                }
            }
            n7Var.g.put(next, hashSet);
        }
        return n7Var;
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        List<o7> list = this.f3449a;
        if (list != null) {
            for (o7 o7Var : list) {
                jSONArray.put(o7Var.a());
            }
        }
        JsonUtils.putJsonArray(jSONObject, "video_files", jSONArray);
        JsonUtils.putJsonArray(jSONObject, "preferred_video_file_types", new JSONArray((Collection) this.b));
        JsonUtils.putInt(jSONObject, "duration_seconds", this.c);
        Uri uri = this.d;
        JsonUtils.putString(jSONObject, "destination_uri", uri == null ? null : uri.toString());
        JSONArray jSONArray2 = new JSONArray();
        for (k7 k7Var : this.e) {
            jSONArray2.put(k7Var.a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray2);
        g7 g7Var = this.f;
        if (g7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "industry_icon", g7Var.a());
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.g.keySet()) {
            Set<k7> set = (Set) this.g.get(str);
            if (set != null) {
                JSONArray jSONArray3 = new JSONArray();
                for (k7 k7Var2 : set) {
                    jSONArray3.put(k7Var2.a());
                }
                JsonUtils.putJsonArray(jSONObject2, str, jSONArray3);
            }
        }
        JsonUtils.putJSONObject(jSONObject, "event_trackers", jSONObject2);
        return jSONObject;
    }
}
