package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class t {
    private static final Map e = new HashMap();
    private static final Object f = new Object();

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f3752a;
    private final String b;
    private AppLovinAdSize c;
    private AppLovinAdType d;

    private t(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str, boolean z, boolean z2) {
        String lowerCase;
        if (TextUtils.isEmpty(str) && (appLovinAdType == null || appLovinAdSize == null)) {
            throw new IllegalArgumentException("No zone identifier or type or size specified");
        }
        this.c = appLovinAdSize;
        this.d = appLovinAdType;
        if (StringUtils.isValidString(str)) {
            lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
        } else {
            lowerCase = (appLovinAdSize.getLabel() + "_" + appLovinAdType.getLabel()).toLowerCase(Locale.ENGLISH);
        }
        if (z) {
            lowerCase = lowerCase + "_bidding";
        }
        if (z2) {
            lowerCase = lowerCase + "_direct_sold";
        }
        this.b = lowerCase;
    }

    public static t a(String str) {
        return a(null, null, str);
    }

    public static t b(String str) {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, str);
    }

    public static t c() {
        return a(AppLovinAdSize.BANNER, AppLovinAdType.REGULAR);
    }

    public static t h() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED);
    }

    public static t j() {
        return a(AppLovinAdSize.LEADER, AppLovinAdType.REGULAR);
    }

    public static t k() {
        return a(AppLovinAdSize.MREC, AppLovinAdType.REGULAR);
    }

    public static t l() {
        return a(AppLovinAdSize.NATIVE, AppLovinAdType.NATIVE);
    }

    public static t m() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.REGULAR);
    }

    public MaxAdFormat d() {
        AppLovinAdSize f2 = f();
        if (f2 == AppLovinAdSize.BANNER) {
            return MaxAdFormat.BANNER;
        }
        if (f2 == AppLovinAdSize.LEADER) {
            return MaxAdFormat.LEADER;
        }
        if (f2 == AppLovinAdSize.MREC) {
            return MaxAdFormat.MREC;
        }
        if (f2 == AppLovinAdSize.INTERSTITIAL) {
            if (g() == AppLovinAdType.REGULAR) {
                return MaxAdFormat.INTERSTITIAL;
            }
            if (g() == AppLovinAdType.APP_OPEN) {
                return MaxAdFormat.APP_OPEN;
            }
            if (g() == AppLovinAdType.INCENTIVIZED) {
                return MaxAdFormat.REWARDED;
            }
            return null;
        } else if (f2 == AppLovinAdSize.NATIVE) {
            return MaxAdFormat.NATIVE;
        } else {
            return null;
        }
    }

    public String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && t.class == obj.getClass()) {
            return this.b.equalsIgnoreCase(((t) obj).b);
        }
        return false;
    }

    public AppLovinAdSize f() {
        if (this.c == null && JsonUtils.valueExists(this.f3752a, "ad_size")) {
            this.c = AppLovinAdSize.fromString(JsonUtils.getString(this.f3752a, "ad_size", null));
        }
        return this.c;
    }

    public AppLovinAdType g() {
        if (this.d == null && JsonUtils.valueExists(this.f3752a, "ad_type")) {
            this.d = AppLovinAdType.fromString(JsonUtils.getString(this.f3752a, "ad_type", null));
        }
        return this.d;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public boolean i() {
        return a().contains(this);
    }

    public String toString() {
        return "AdZone{id=" + this.b + ", zoneObject=" + this.f3752a + AbstractJsonLexerKt.END_OBJ;
    }

    public static t a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        return a(appLovinAdSize, appLovinAdType, null);
    }

    public static t b() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.APP_OPEN);
    }

    public static t a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str) {
        return a(appLovinAdSize, appLovinAdType, str, false, false);
    }

    public static t a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str, boolean z, boolean z2) {
        t tVar = new t(appLovinAdSize, appLovinAdType, str, z, z2);
        synchronized (f) {
            try {
                String str2 = tVar.b;
                Map map = e;
                if (map.containsKey(str2)) {
                    tVar = (t) map.get(str2);
                } else {
                    map.put(str2, tVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tVar;
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has("ad_size") && jSONObject.has("ad_type")) {
            synchronized (f) {
                try {
                    t tVar = (t) e.get(JsonUtils.getString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, ""));
                    if (tVar != null) {
                        tVar.c = AppLovinAdSize.fromString(JsonUtils.getString(jSONObject, "ad_size", ""));
                        tVar.d = AppLovinAdType.fromString(JsonUtils.getString(jSONObject, "ad_type", ""));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static Collection a() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(7);
        Collections.addAll(linkedHashSet, c(), k(), j(), m(), b(), h(), l());
        return Collections.unmodifiableSet(linkedHashSet);
    }
}
