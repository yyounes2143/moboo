package com.applovin.sdk;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.p0;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinSdkSettings {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3879a;
    private boolean b;
    private String e;
    private String f;
    private String g;
    private final AppLovinTermsAndPrivacyPolicyFlowSettings j;
    private k k;
    private String l;
    private boolean d = true;
    private final Map<String, Object> localSettings = new HashMap();
    private final Map h = DesugarCollections.synchronizedMap(new HashMap());
    private final Map i = DesugarCollections.synchronizedMap(new HashMap());
    private boolean c = true;

    public AppLovinSdkSettings(Context context) {
        this.l = "";
        if (context == null) {
            o.h("AppLovinSdkSettings", "context cannot be null. Please provide a valid context.");
        }
        Context d = z6.d(context);
        this.f3879a = z6.k(d);
        this.j = p0.a(d);
        this.l = d.getPackageName();
        a(d);
    }

    private void a(Context context) {
        JSONObject jSONObject;
        int identifier = context.getResources().getIdentifier("applovin_settings", "raw", context.getPackageName());
        if (identifier == 0) {
            return;
        }
        String a2 = z6.a(identifier, context, (k) null);
        if (StringUtils.isValidString(a2)) {
            jSONObject = JsonUtils.jsonObjectFromJsonString(a2, new JSONObject());
        } else {
            jSONObject = new JSONObject();
        }
        this.h.putAll(JsonUtils.tryToStringMap(jSONObject));
    }

    public void attachAppLovinSdk(k kVar) {
        this.k = kVar;
        if (StringUtils.isValidString(this.e)) {
            kVar.s0().a(Arrays.asList(this.e.split(",")));
            this.e = null;
        }
        if (this.f != null) {
            kVar.O();
            if (o.a()) {
                o O = kVar.O();
                O.a("AppLovinSdkSettings", "Setting user id: " + this.f);
            }
            kVar.w0().a(this.f);
            this.f = null;
        }
        if (StringUtils.isValidString(this.g)) {
            l.a(this.g, kVar);
            this.g = null;
        }
        for (Map.Entry entry : this.i.entrySet()) {
            kVar.v0().a(y1.j, "preInitExtraParameter", CollectionUtils.hashMap("details", ((String) entry.getKey()) + ":" + ((String) entry.getValue())));
        }
        this.i.clear();
    }

    public Map<String, String> getExtraParameters() {
        Map<String, String> map;
        synchronized (this.h) {
            map = CollectionUtils.map(this.h);
        }
        return map;
    }

    public AppLovinTermsAndPrivacyPolicyFlowSettings getTermsAndPrivacyPolicyFlowSettings() {
        return this.j;
    }

    @Nullable
    public String getUserIdentifier() {
        k kVar = this.k;
        if (kVar == null) {
            return this.f;
        }
        return kVar.w0().e();
    }

    public boolean isCreativeDebuggerEnabled() {
        return this.c;
    }

    public boolean isMuted() {
        return this.b;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.f3879a;
    }

    public void setCreativeDebuggerEnabled(boolean z) {
        o.e("AppLovinSdkSettings", "setCreativeDebuggerEnabled(creativeDebuggerEnabled=" + z + ")");
        if (this.c != z) {
            this.c = z;
            k kVar = this.k;
            if (kVar == null) {
                return;
            }
            if (z) {
                kVar.z().l();
            } else {
                kVar.z().k();
            }
        }
    }

    public void setExtraParameter(String str, @Nullable String str2) {
        String str3;
        o.e("AppLovinSdkSettings", "setExtraParameter(key=" + str + ", value=" + str2 + ")");
        if (TextUtils.isEmpty(str)) {
            o.h("AppLovinSdkSettings", "Failed to set extra parameter for null or empty key: " + str);
            return;
        }
        if (str2 != null) {
            str3 = str2.trim();
        } else {
            str3 = null;
        }
        if ("test_mode_network".equalsIgnoreCase(str)) {
            if (this.k != null) {
                if (StringUtils.isValidString(str3)) {
                    this.k.s0().a(Arrays.asList(str3.split(",")));
                } else {
                    this.k.s0().a((String) null);
                }
            } else {
                this.e = str3;
            }
        } else if (!"fan".equals(str) && !"esc".equals(str)) {
            if ("disable_all_logs".equals(str)) {
                o.a(Boolean.parseBoolean(str3));
            } else if ("package_name_override".equals(str)) {
                k kVar = this.k;
                if (kVar != null) {
                    l.a(str3, kVar);
                } else {
                    this.g = str3;
                }
            }
        } else if (!this.l.startsWith("com.unity.")) {
            return;
        }
        if (this.k != null) {
            this.k.v0().a(y1.j, "postInitExtraParameter", CollectionUtils.hashMap("details", str + ":" + str2));
        } else {
            this.i.put(str, str3);
        }
        this.h.put(str, str3);
    }

    public void setMuted(boolean z) {
        o.e("AppLovinSdkSettings", "setMuted(muted=" + z + ")");
        this.b = z;
    }

    public void setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(boolean z) {
        o.e("AppLovinSdkSettings", "setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(shouldFailAdDisplayIfDontKeepActivitiesIsEnabled=" + z + ")");
        this.d = z;
    }

    public void setUserIdentifier(String str) {
        o.e("AppLovinSdkSettings", "setUserIdentifier(userIdentifier=" + str + ")");
        if (StringUtils.isValidString(str) && str.length() > z6.b(8)) {
            o.h("AppLovinSdk", "Provided user id longer than supported (" + str.length() + " bytes, " + z6.b(8) + " maximum)");
        }
        k kVar = this.k;
        if (kVar != null) {
            kVar.O();
            if (o.a()) {
                o O = this.k.O();
                O.a("AppLovinSdkSettings", "Setting user id: " + str);
            }
            this.k.w0().a(str);
            return;
        }
        this.f = str;
    }

    public void setVerboseLogging(boolean z) {
        o.e("AppLovinSdkSettings", "setVerboseLogging(isVerboseLoggingEnabled=" + z + ")");
        if (z6.k()) {
            o.h("AppLovinSdkSettings", "Ignoring setting of verbose logging - it is configured from Android manifest already.");
            if (z6.k(null) != z) {
                o.h("AppLovinSdkSettings", "Attempted to programmatically set verbose logging flag to value different from value configured in Android Manifest.");
                return;
            }
            return;
        }
        this.f3879a = z;
    }

    public boolean shouldFailAdDisplayIfDontKeepActivitiesIsEnabled() {
        return this.d;
    }

    @NonNull
    public String toString() {
        return "AppLovinSdkSettings{isVerboseLoggingEnabled=" + this.f3879a + ", muted=" + this.b + ", creativeDebuggerEnabled=" + this.c + AbstractJsonLexerKt.END_OBJ;
    }
}
