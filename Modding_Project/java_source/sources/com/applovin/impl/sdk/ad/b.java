package com.applovin.impl.sdk.ad;

import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.arch.core.util.Function;
import androidx.core.util.Consumer;
import com.applovin.impl.adview.e;
import com.applovin.impl.adview.m;
import com.applovin.impl.b1;
import com.applovin.impl.b4;
import com.applovin.impl.d4;
import com.applovin.impl.k0;
import com.applovin.impl.l4;
import com.applovin.impl.p7;
import com.applovin.impl.s3;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.impl.z6;
import com.applovin.impl.z7;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class b extends AppLovinAdImpl implements d4 {
    private final List d;
    private final AtomicBoolean e;
    private final AtomicBoolean f;
    private final AtomicReference g;
    private final Bundle h;
    private String i;
    private int j;
    private String k;
    private d l;

    /* compiled from: Proguard */
    /* renamed from: com.applovin.impl.sdk.ad.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public enum EnumC0021b {
        UNSPECIFIED,
        DISMISS,
        DO_NOT_DISMISS
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f3669a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        private d() {
            this.f3669a = AppLovinSdkUtils.dpToPx(k.o(), b.this.p());
            this.b = AppLovinSdkUtils.dpToPx(k.o(), b.this.r());
            this.c = AppLovinSdkUtils.dpToPx(k.o(), b.this.n());
            this.d = AppLovinSdkUtils.dpToPx(k.o(), ((Integer) ((AppLovinAdBase) b.this).sdk.a(l4.h1)).intValue());
            this.e = AppLovinSdkUtils.dpToPx(k.o(), ((Integer) ((AppLovinAdBase) b.this).sdk.a(l4.g1)).intValue());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum e {
        RESIZE_ASPECT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public b(JSONObject jSONObject, JSONObject jSONObject2, k kVar) {
        super(jSONObject, jSONObject2, kVar);
        this.d = CollectionUtils.synchronizedList();
        this.e = new AtomicBoolean();
        this.f = new AtomicBoolean();
        this.g = new AtomicReference();
        this.h = new Bundle();
    }

    private List O() {
        return getIntegerListFromAdObject("multi_close_style", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List i(v4 v4Var) {
        return z6.a(v4Var.a("custom_tabs_tab_hidden_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bundle k(v4 v4Var) {
        return JsonUtils.toBundle(v4Var.a("ah_parameters", (JSONObject) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Map m(v4 v4Var) {
        try {
            return JsonUtils.toStringMap(v4Var.a("http_headers_for_postbacks", new JSONObject()));
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String o(v4 v4Var) {
        return JsonUtils.getString(v4Var.a("video_button_properties", (JSONObject) null), "video_button_html", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ p7 p(v4 v4Var) {
        return new p7(v4Var.a("video_button_properties", (JSONObject) null), this.sdk);
    }

    private String s0() {
        String stringFromAdObject = getStringFromAdObject("video_end_url", null);
        if (stringFromAdObject == null) {
            return null;
        }
        return stringFromAdObject.replace("{CLCODE}", getClCode());
    }

    public b1 A() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (b1) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    b1 h;
                    h = b.h((v4) obj);
                    return h;
                }
            });
        }
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("custom_tabs_settings", null);
        if (jsonObjectFromAdObject == null) {
            return null;
        }
        return new b1(jsonObjectFromAdObject);
    }

    public List A0() {
        return CollectionUtils.explode(getStringFromAdObject("wls", ""));
    }

    public List B() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List i;
                    i = b.this.i((v4) obj);
                    return i;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("custom_tabs_tab_hidden_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a2;
    }

    public void B0() {
        this.j++;
    }

    public List C() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List j;
                    j = b.this.j((v4) obj);
                    return j;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("custom_tabs_tab_shown_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a2;
    }

    public boolean C0() {
        return getBooleanFromAdObject("aocve", (Boolean) this.sdk.a(l4.P5));
    }

    public List D() {
        return getStringListFromAdObject("custom_tabs_warmup_urls", Collections.EMPTY_LIST);
    }

    public boolean D0() {
        return getBooleanFromAdObject("is_adaptive_ad", Boolean.FALSE);
    }

    public boolean E() {
        return getBooleanFromAdObject("dismiss_on_skip", Boolean.FALSE);
    }

    public boolean E0() {
        if (this.j > 0) {
            return true;
        }
        return false;
    }

    public String F() {
        return this.i;
    }

    public boolean F0() {
        return getBooleanFromAdObject("bvde", (Boolean) this.sdk.a(l4.E5));
    }

    public int G() {
        return getIntFromAdObject("poststitial_dismiss_forward_delay_millis", -1);
    }

    public boolean G0() {
        return getBooleanFromAdObject("lhs_close_button", (Boolean) this.sdk.a(l4.J1));
    }

    public int H() {
        return getIntFromAdObject("poststitial_shown_forward_delay_millis", -1);
    }

    public boolean H0() {
        return getBooleanFromAdObject("custom_tabs_client_warmup_enabled", Boolean.FALSE);
    }

    public int I() {
        return z6.a(getIntFromAdObject("graphic_completion_percent", -1), 90);
    }

    public boolean I0() {
        return getBooleanFromAdObject("custom_tabs_enabled", Boolean.FALSE);
    }

    public List J() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List l;
                    l = b.this.l((v4) obj);
                    return l;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("imp_urls", new JSONObject()), getClCode(), null, null, T(), Z0(), this.sdk);
        }
        return a2;
    }

    public boolean J0() {
        return getBooleanFromAdObject("forward_lifecycle_events_to_webview", Boolean.FALSE);
    }

    public int K() {
        return getIntFromAdObject("mdafra", ((Integer) this.sdk.a(l4.P0)).intValue());
    }

    public boolean K0() {
        return getBooleanFromAdObject("gase", Boolean.FALSE);
    }

    public boolean L() {
        return getBooleanFromAdObject("playback_requires_user_action", Boolean.TRUE);
    }

    public boolean L0() {
        return getBooleanFromAdObject("lock_current_orientation", Boolean.FALSE);
    }

    public String M() {
        return getStringFromFullResponse("event_id", null);
    }

    public abstract boolean M0();

    public List N() {
        List<Integer> O = O();
        if (O != null) {
            ArrayList arrayList = new ArrayList(O.size());
            for (Integer num : O) {
                arrayList.add(a(num.intValue()));
            }
            return arrayList;
        }
        return null;
    }

    public AtomicBoolean N0() {
        return this.e;
    }

    public boolean O0() {
        return getBooleanFromAdObject("lhs_skip_button", (Boolean) this.sdk.a(l4.W1));
    }

    public List P() {
        return getIntegerListFromAdObject("multi_close_delay_graphic", null);
    }

    public boolean P0() {
        return getBooleanFromAdObject("video_clickable", Boolean.FALSE);
    }

    public Uri Q() {
        String stringFromAdObject = getStringFromAdObject("mute_image", "https://assets.applovin.com/sound_off.png");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public abstract boolean Q0();

    public List R() {
        String stringFromAdObject = getStringFromAdObject("optional_html_resources", null);
        if (stringFromAdObject != null) {
            return CollectionUtils.explode(stringFromAdObject);
        }
        return Collections.EMPTY_LIST;
    }

    public boolean R0() {
        boolean z;
        if (!z6.h(k.o()) && !z6.f(k.o()) && !((Boolean) this.sdk.a(l4.U5)).booleanValue()) {
            z = false;
        } else {
            z = true;
        }
        return getBooleanFromAdObject("web_contents_debugging_enabled", Boolean.valueOf(z));
    }

    public abstract String S();

    public abstract void S0();

    public Map T() {
        Map<String, String> stringMap;
        HashMap hashMap = new HashMap();
        try {
            v4 v4Var = this.synchronizedAdObject;
            if (v4Var != null) {
                stringMap = (Map) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwww
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        Map m;
                        m = b.m((v4) obj);
                        return m;
                    }
                });
            } else {
                stringMap = JsonUtils.toStringMap(getJsonObjectFromAdObject("http_headers_for_postbacks", new JSONObject()));
            }
            hashMap.putAll(stringMap);
        } catch (JSONException e2) {
            this.sdk.O();
            if (o.a()) {
                this.sdk.O().a("DirectAd", "Failed to retrieve http headers for postbacks", e2);
            }
        }
        if (getBooleanFromAdObject("use_webview_ua_for_postbacks", Boolean.FALSE)) {
            hashMap.put("User-Agent", z7.a());
        }
        return hashMap;
    }

    public boolean T0() {
        return getBooleanFromAdObject("should_apply_mute_setting_to_poststitial", Boolean.FALSE);
    }

    public EnumC0021b U() {
        String stringFromAdObject = getStringFromAdObject("poststitial_dismiss_type", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            if ("dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC0021b.DISMISS;
            }
            if ("no_dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC0021b.DO_NOT_DISMISS;
            }
        }
        return EnumC0021b.UNSPECIFIED;
    }

    public boolean U0() {
        return getBooleanFromAdObject("should_apply_web_view_settings_to_web_view_button", (Boolean) this.sdk.a(l4.Y5));
    }

    public int V() {
        return getColorFromAdObject("postitial_progress_bar_color", -922746881);
    }

    public boolean V0() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return ((Boolean) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Boolean s;
                    s = b.s((v4) obj);
                    return s;
                }
            })).booleanValue();
        }
        return JsonUtils.getBoolean(getJsonObjectFromAdObject("video_button_properties", null), "should_cache_video_button_html_assets", Boolean.FALSE).booleanValue();
    }

    public long W() {
        return getLongFromAdObject("postitial_progress_bar_total_ms", -1L);
    }

    public boolean W0() {
        return this.f.get();
    }

    public List X() {
        return getStringListFromAdObject("pbpn", this.sdk.c(l4.j6));
    }

    public boolean X0() {
        return getBooleanFromAdObject("custom_tabs_should_track_events", Boolean.FALSE);
    }

    public long Y() {
        long longFromAdObject = getLongFromAdObject("report_reward_duration", -1L);
        if (longFromAdObject < 0) {
            return -1L;
        }
        return TimeUnit.SECONDS.toMillis(longFromAdObject);
    }

    public boolean Y0() {
        return getBooleanFromAdObject("serfaad", (Boolean) this.sdk.a(l4.O0));
    }

    public int Z() {
        return getIntFromAdObject("report_reward_percent", -1);
    }

    public boolean Z0() {
        return getBooleanFromAdObject("fire_postbacks_from_webview", Boolean.FALSE);
    }

    public List a0() {
        String stringFromAdObject = getStringFromAdObject("required_html_resources", null);
        if (stringFromAdObject != null) {
            return CollectionUtils.explode(stringFromAdObject);
        }
        return Collections.EMPTY_LIST;
    }

    public boolean a1() {
        return getBooleanFromAdObject("should_forward_close_button_tapped_to_poststitial", Boolean.FALSE);
    }

    public int b0() {
        return this.j;
    }

    public boolean b1() {
        return getBooleanFromAdObject("fmsstwvoar", Boolean.FALSE);
    }

    public void c(final String str) {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            v4Var.a(new Consumer() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwww
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    b.a(str, (v4) obj);
                }
            });
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_html", str);
        }
    }

    public List c0() {
        ArrayList arrayList;
        String stringFromAdObject = getStringFromAdObject("resource_cache_prefix", null);
        if (stringFromAdObject != null) {
            arrayList = new ArrayList(CollectionUtils.explode(stringFromAdObject));
        } else {
            arrayList = new ArrayList(this.sdk.c(l4.G0));
        }
        if (z6.h(k.o())) {
            arrayList.add("https://p.applov.in/");
        }
        return arrayList;
    }

    public boolean c1() {
        return getBooleanFromAdObject("sftbpn", Boolean.FALSE);
    }

    public List d(MotionEvent motionEvent, boolean z, boolean z2) {
        List<String> stringListFromAdObject = getStringListFromAdObject("privacy_sandbox_click_attribution_urls", Collections.EMPTY_LIST);
        if (stringListFromAdObject.isEmpty()) {
            return stringListFromAdObject;
        }
        Map a2 = a(motionEvent, z, z2);
        ArrayList arrayList = new ArrayList(stringListFromAdObject.size());
        for (String str : stringListFromAdObject) {
            arrayList.add(StringUtils.replace(str, a2));
        }
        return arrayList;
    }

    public List d0() {
        return getStringListFromAdObject("rea", a0());
    }

    public boolean d1() {
        return getBooleanFromAdObject("fvcetwv", Boolean.FALSE);
    }

    public List e() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List a3;
                    a3 = b.this.a((v4) obj);
                    return a3;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("ad_closed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a2;
    }

    public e.a e0() {
        int intFromAdObject = getIntFromAdObject("skip_style", -1);
        if (intFromAdObject == -1) {
            return q();
        }
        return a(intFromAdObject);
    }

    public boolean e1() {
        return getBooleanFromAdObject("avoms", Boolean.FALSE);
    }

    public long f() {
        return getLongFromAdObject("ad_dismiss_delay_on_app_launch_ms", TimeUnit.SECONDS.toMillis(3L));
    }

    public List f0() {
        return getStringListFromAdObject("substrings_for_disabled_click_logic", Collections.EMPTY_LIST);
    }

    public boolean f1() {
        return getBooleanFromAdObject("report_reward_percent_include_close_delay", Boolean.TRUE);
    }

    public long g() {
        return getLongFromAdObject("ad_reshow_delay_on_app_launch_ms", -1L);
    }

    public c g0() {
        c cVar = c.DEFAULT;
        String upperCase = getStringFromAdObject("ad_target", cVar.toString()).toUpperCase(Locale.ENGLISH);
        if ("ACTIVITY_PORTRAIT".equalsIgnoreCase(upperCase)) {
            return c.ACTIVITY_PORTRAIT;
        }
        if ("ACTIVITY_LANDSCAPE".equalsIgnoreCase(upperCase)) {
            return c.ACTIVITY_LANDSCAPE;
        }
        return cVar;
    }

    public boolean g1() {
        return getBooleanFromAdObject("require_interaction_for_click", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public abstract s3 getAdEventTracker();

    public String getCachePrefix() {
        return getStringFromAdObject("cache_prefix", null);
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public Bundle getDirectDownloadParameters() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (Bundle) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Bundle k;
                    k = b.k((v4) obj);
                    return k;
                }
            });
        }
        return JsonUtils.toBundle(getJsonObjectFromAdObject("ah_parameters", null));
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public String getDirectDownloadToken() {
        return getStringFromAdObject("ah_dd_token", null);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public String getOpenMeasurementContentUrl() {
        return getStringFromAdObject("omid_content_url", null);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public String getOpenMeasurementCustomReferenceData() {
        return getStringFromAdObject("omid_custom_ref_data", "");
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public List getOpenMeasurementVerificationScriptResources() {
        List list;
        final Function function = new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwww
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                List a2;
                a2 = b.this.a((JSONArray) obj);
                return a2;
            }
        };
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List a2;
                    a2 = b.a(Function.this, (v4) obj);
                    return a2;
                }
            });
        }
        synchronized (this.adObjectLock) {
            list = (List) function.apply(getJsonArrayFromAdObject("omid_verification_script_resources", null));
        }
        return list;
    }

    public List getPrivacySandboxImpressionAttributionUrls() {
        List<String> stringListFromAdObject = getStringListFromAdObject("privacy_sandbox_impression_attribution_urls", Collections.EMPTY_LIST);
        if (stringListFromAdObject.isEmpty()) {
            return stringListFromAdObject;
        }
        ArrayList arrayList = new ArrayList(stringListFromAdObject.size());
        String clCode = getClCode();
        for (String str : stringListFromAdObject) {
            arrayList.add(str.replace("{CLCODE}", clCode));
        }
        return arrayList;
    }

    public Bundle h() {
        return this.h;
    }

    public String h0() {
        return this.k;
    }

    public boolean h1() {
        return getBooleanFromAdObject("sruifwvc", Boolean.FALSE);
    }

    public String i0() {
        return getStringFromAdObject("tmas", (String) this.sdk.a(l4.k4));
    }

    public boolean i1() {
        if (g() >= 0) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public boolean isDirectDownloadEnabled() {
        return StringUtils.isValidString(getDirectDownloadToken());
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public abstract boolean isOpenMeasurementEnabled();

    public List j() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List b;
                    b = b.this.b((v4) obj);
                    return b;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("app_killed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a2;
    }

    public Uri j0() {
        String stringFromAdObject = getStringFromAdObject("unmute_image", "https://assets.applovin.com/sound_on.png");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean j1() {
        return getBooleanFromAdObject("respect_adview_fully_watched", Boolean.FALSE);
    }

    public String k0() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (String) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    String n;
                    n = b.n((v4) obj);
                    return n;
                }
            });
        }
        return JsonUtils.getString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_base_url", "/");
    }

    public boolean k1() {
        return getBooleanFromAdObject("sscomt", Boolean.FALSE);
    }

    public List l() {
        return this.d;
    }

    public String l0() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (String) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    String o;
                    o = b.o((v4) obj);
                    return o;
                }
            });
        }
        return JsonUtils.getString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_html", "");
    }

    public boolean l1() {
        return getBooleanFromAdObject("sudbia", (Boolean) this.sdk.a(l4.i6));
    }

    public abstract Uri m();

    public p7 m0() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (p7) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    p7 p;
                    p = b.this.p((v4) obj);
                    return p;
                }
            });
        }
        return new p7(getJsonObjectFromAdObject("video_button_properties", null), this.sdk);
    }

    public boolean m1() {
        return getBooleanFromAdObject("upiosp", Boolean.FALSE);
    }

    public int n() {
        return getIntFromAdObject("close_button_horizontal_margin", ((Integer) this.sdk.a(l4.K1)).intValue());
    }

    public abstract Uri n0();

    public long o0() {
        return getLongFromAdObject("close_delay", 0L);
    }

    public long p0() {
        return TimeUnit.SECONDS.toMillis(getLongFromAdObject("close_delay_max_buffering_time_seconds", 5L));
    }

    public e.a q() {
        List O = O();
        int intFromAdObject = getIntFromAdObject("close_style", (O == null || O.size() <= 0) ? -1 : ((Integer) O.get(0)).intValue());
        return intFromAdObject == -1 ? a(hasVideoUrl()) : a(intFromAdObject);
    }

    public int q0() {
        return z6.a(getIntFromAdObject("video_completion_percent", -1));
    }

    public int r() {
        return getIntFromAdObject("close_button_top_margin", ((Integer) this.sdk.a(l4.M1)).intValue());
    }

    public List r0() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List q;
                    q = b.this.q((v4) obj);
                    return q;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("video_end_urls", new JSONObject()), getClCode(), s0(), this.sdk);
        }
        return a2;
    }

    public long s() {
        List P = P();
        long longFromAdObject = getLongFromAdObject("close_delay_graphic", (P == null || P.size() <= 0) ? 0L : ((Integer) P.get(0)).intValue());
        if (longFromAdObject == -1 || longFromAdObject == -2) {
            return 0L;
        }
        return longFromAdObject;
    }

    public int t() {
        return getColorFromAdObject("countdown_color", -922746881);
    }

    public e t0() {
        String stringFromAdObject = getStringFromAdObject("video_gravity", null);
        if ("top".equals(stringFromAdObject)) {
            return e.TOP;
        }
        if ("bottom".equals(stringFromAdObject)) {
            return e.BOTTOM;
        }
        if ("left".equals(stringFromAdObject)) {
            return e.LEFT;
        }
        if ("right".equals(stringFromAdObject)) {
            return e.RIGHT;
        }
        return e.RESIZE_ASPECT;
    }

    public int u() {
        return getIntFromAdObject("countdown_length", 0);
    }

    public int u0() {
        return getColorFromAdObject("progress_bar_color", -922746881);
    }

    public Bundle v() {
        Map hashMap;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            hashMap = (Map) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Map c2;
                    c2 = b.this.c((v4) obj);
                    return c2;
                }
            });
        } else {
            try {
                hashMap = JsonUtils.toStringMap(getJsonObjectFromAdObject("custom_tabs_http_headers", new JSONObject()));
            } catch (JSONException e2) {
                this.sdk.O();
                if (o.a()) {
                    this.sdk.O().a("DirectAd", "Failed to retrieve http headers for Custom Tabs", e2);
                }
                hashMap = new HashMap();
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry entry : hashMap.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        if (getBooleanFromAdObject("custom_tabs_should_use_webview_ua", Boolean.FALSE)) {
            bundle.putString("User-Agent", z7.a());
        }
        return bundle;
    }

    public boolean v0() {
        return getBooleanFromAdObject("progress_bar_enabled", Boolean.FALSE);
    }

    public List w() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List d2;
                    d2 = b.this.d((v4) obj);
                    return d2;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("custom_tabs_navigation_aborted_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a2;
    }

    public abstract Uri w0();

    public List x() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List e2;
                    e2 = b.this.e((v4) obj);
                    return e2;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("custom_tabs_navigation_failed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a2;
    }

    public int x0() {
        int i;
        if (z6.a(getSize())) {
            i = 1;
        } else if (((Boolean) this.sdk.a(l4.x5)).booleanValue()) {
            i = 0;
        } else {
            i = -1;
        }
        return getIntFromAdObject("whalt", i);
    }

    public List y() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List f;
                    f = b.this.f((v4) obj);
                    return f;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("custom_tabs_navigation_finished_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a2;
    }

    public m y0() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (m) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    m r;
                    r = b.r((v4) obj);
                    return r;
                }
            });
        }
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("web_view_settings", null);
        if (jsonObjectFromAdObject == null) {
            return null;
        }
        return new m(jsonObjectFromAdObject);
    }

    public List z() {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List g;
                    g = b.this.g((v4) obj);
                    return g;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("custom_tabs_navigation_started_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return a2;
    }

    public List z0() {
        return CollectionUtils.explode(getStringFromAdObject("wlh", null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List f(v4 v4Var) {
        return z6.a(v4Var.a("custom_tabs_navigation_finished_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List g(v4 v4Var) {
        return z6.a(v4Var.a("custom_tabs_navigation_started_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b1 h(v4 v4Var) {
        JSONObject a2 = v4Var.a("custom_tabs_settings", (JSONObject) null);
        if (a2 != null) {
            return new b1(a2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List l(v4 v4Var) {
        return z6.a(v4Var.a("imp_urls", new JSONObject()), getClCode(), null, null, T(), Z0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String n(v4 v4Var) {
        return JsonUtils.getString(v4Var.a("video_button_properties", (JSONObject) null), "video_button_base_url", "/");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m r(v4 v4Var) {
        JSONObject a2 = v4Var.a("web_view_settings", (JSONObject) null);
        if (a2 != null) {
            return new m(a2);
        }
        return null;
    }

    public void a(String str) {
        this.i = str;
    }

    public void b(String str) {
        this.k = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            try {
                URL url = new URL(JsonUtils.getString(jSONObject, "url", null));
                String string = JsonUtils.getString(jSONObject, "vendor_key", null);
                String string2 = JsonUtils.getString(jSONObject, "parameters", null);
                if (StringUtils.isValidString(string) && StringUtils.isValidString(string2)) {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(string, url, string2));
                } else {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url));
                }
            } catch (Throwable th) {
                this.sdk.O();
                if (o.a()) {
                    this.sdk.O().a("DirectAd", "Failed to parse OMID verification script resource", th);
                }
            }
        }
        return arrayList;
    }

    public void b(boolean z) {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            v4Var.a("html_resources_cached", z);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putBoolean(this.adObject, "html_resources_cached", z);
        }
    }

    public b4 i() {
        return (b4) this.g.getAndSet(null);
    }

    public String k() {
        String stringFromAdObject = getStringFromAdObject("base_url", "/");
        if (AbstractJsonLexerKt.NULL.equalsIgnoreCase(stringFromAdObject)) {
            return null;
        }
        return stringFromAdObject;
    }

    public d o() {
        if (this.l == null) {
            this.l = new d();
        }
        return this.l;
    }

    public int p() {
        return getIntFromAdObject("close_button_size", ((Integer) this.sdk.a(l4.L1)).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean s(v4 v4Var) {
        return JsonUtils.getBoolean(v4Var.a("video_button_properties", (JSONObject) null), "should_cache_video_button_html_assets", Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List q(v4 v4Var) {
        return z6.a(v4Var.a("video_end_urls", new JSONObject()), getClCode(), s0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List d(v4 v4Var) {
        return z6.a(v4Var.a("custom_tabs_navigation_aborted_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List e(v4 v4Var) {
        return z6.a(v4Var.a("custom_tabs_navigation_failed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List j(v4 v4Var) {
        return z6.a(v4Var.a("custom_tabs_tab_shown_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public long c() {
        return getLongFromAdObject("batfort", TimeUnit.SECONDS.toMillis(1L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List b(v4 v4Var) {
        return z6.a(v4Var.a("app_killed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    private String c(MotionEvent motionEvent, boolean z, boolean z2) {
        String stringFromAdObject = getStringFromAdObject("click_tracking_url", null);
        Map a2 = a(motionEvent, z, z2);
        if (stringFromAdObject != null) {
            return StringUtils.replace(stringFromAdObject, a2);
        }
        return null;
    }

    public void d() {
        this.f.set(true);
    }

    private List b(final MotionEvent motionEvent, final boolean z, final boolean z2) {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List a3;
                    a3 = b.this.a(motionEvent, z, z2, (v4) obj);
                    return a3;
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("click_tracking_urls", new JSONObject()), a(motionEvent, z, z2), c(motionEvent, z, z2), T(), Z0(), this.sdk);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Map c(v4 v4Var) {
        try {
            return JsonUtils.toStringMap(v4Var.a("custom_tabs_http_headers", new JSONObject()));
        } catch (JSONException e2) {
            this.sdk.O();
            if (o.a()) {
                this.sdk.O().a("DirectAd", "Failed to retrieve http headers for Custom Tabs", e2);
            }
            return new HashMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List a(Function function, v4 v4Var) {
        return (List) function.apply(v4Var.a("omid_verification_script_resources", (JSONArray) null));
    }

    public void c(Uri uri) {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            v4Var.b("unmute_image", uri.toString());
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "unmute_image", uri.toString());
        }
    }

    public void a(Uri uri) {
        this.d.add(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, v4 v4Var) {
        JsonUtils.putString(v4Var.a("video_button_properties", (JSONObject) null), "video_button_html", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(v4 v4Var) {
        return z6.a(v4Var.a("ad_closed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public List b(final MotionEvent motionEvent, final boolean z) {
        List a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            a2 = (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.ad.Wwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    List a3;
                    a3 = b.this.a(motionEvent, z, (v4) obj);
                    return a3;
                }
            });
        } else {
            synchronized (this.adObjectLock) {
                a2 = z6.a(getJsonObjectFromAdObject("video_click_tracking_urls", new JSONObject()), a(motionEvent, true, z), null, T(), Z0(), this.sdk);
            }
        }
        return a2.isEmpty() ? b(motionEvent, true, z) : a2;
    }

    public List a(MotionEvent motionEvent, boolean z) {
        return b(motionEvent, false, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(MotionEvent motionEvent, boolean z, boolean z2, v4 v4Var) {
        return z6.a(v4Var.a("click_tracking_urls", new JSONObject()), a(motionEvent, z, z2), c(motionEvent, z, z2), T(), Z0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(MotionEvent motionEvent, boolean z, v4 v4Var) {
        return z6.a(v4Var.a("video_click_tracking_urls", new JSONObject()), a(motionEvent, true, z), null, T(), Z0(), this.sdk);
    }

    public void b(Uri uri) {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            v4Var.b("mute_image", uri.toString());
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "mute_image", uri.toString());
        }
    }

    private Map a(MotionEvent motionEvent, boolean z, boolean z2) {
        Point b = k0.b(k.o());
        HashMap hashMap = new HashMap(7);
        hashMap.put("{CLCODE}", getClCode());
        hashMap.put("{CLICK_X}", String.valueOf(motionEvent != null ? motionEvent.getRawX() : -1.0f));
        hashMap.put("{CLICK_Y}", String.valueOf(motionEvent != null ? motionEvent.getRawY() : -1.0f));
        hashMap.put("{SCREEN_WIDTH}", String.valueOf(b.x));
        hashMap.put("{SCREEN_HEIGHT}", String.valueOf(b.y));
        hashMap.put("{IS_VIDEO_CLICK}", String.valueOf(z));
        hashMap.put("{IS_INSTALL}", String.valueOf(z2));
        return hashMap;
    }

    public void a(b4 b4Var) {
        this.g.set(b4Var);
    }

    private e.a a(boolean z) {
        return z ? e.a.WHITE_ON_TRANSPARENT : e.a.WHITE_ON_BLACK;
    }

    public e.a a(int i) {
        if (i == 1) {
            return e.a.WHITE_ON_TRANSPARENT;
        }
        if (i == 2) {
            return e.a.INVISIBLE;
        }
        if (i == 3) {
            return e.a.TRANSPARENT_SKIP;
        }
        return e.a.WHITE_ON_BLACK;
    }
}
