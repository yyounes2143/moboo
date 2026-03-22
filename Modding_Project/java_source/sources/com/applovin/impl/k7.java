package com.applovin.impl;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class k7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private String f3172a;
    private String b;
    private String c;
    private boolean d;
    private long e = -1;
    private int f = -1;

    private k7() {
    }

    public static k7 a(b8 b8Var, e7 e7Var, com.applovin.impl.sdk.k kVar) {
        List<String> explode;
        int size;
        long seconds;
        if (b8Var != null) {
            if (kVar != null) {
                try {
                    String d = b8Var.d();
                    if (TextUtils.isEmpty(d)) {
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            kVar.O().b("VastTracker", "Unable to create tracker. Could not find URL.");
                        }
                        return null;
                    }
                    k7 k7Var = new k7();
                    k7Var.c = d;
                    k7Var.f3172a = (String) b8Var.a().get("id");
                    k7Var.b = (String) b8Var.a().get("event");
                    k7Var.d = ((Boolean) kVar.a(l4.K4)).booleanValue();
                    if (e7Var != null) {
                        k7Var.d = JsonUtils.getBoolean(e7Var.b(), "vast_fire_trackers_from_webview", Boolean.valueOf(k7Var.d)).booleanValue();
                    }
                    k7Var.f = a(k7Var.b(), e7Var);
                    String str = (String) b8Var.a().get(TypedValues.CycleType.S_WAVE_OFFSET);
                    if (StringUtils.isValidString(str)) {
                        String trim = str.trim();
                        if (trim.contains("%")) {
                            k7Var.f = StringUtils.parseInt(trim.substring(0, trim.length() - 1));
                            return k7Var;
                        } else if (trim.contains(":") && (size = (explode = CollectionUtils.explode(trim, ":")).size()) > 0) {
                            int i = size - 1;
                            long j = 0;
                            for (int i2 = i; i2 >= 0; i2--) {
                                String str2 = explode.get(i2);
                                if (StringUtils.isNumeric(str2)) {
                                    int parseInt = Integer.parseInt(str2);
                                    if (i2 == i) {
                                        seconds = parseInt;
                                    } else if (i2 == size - 2) {
                                        seconds = TimeUnit.MINUTES.toSeconds(parseInt);
                                    } else if (i2 == size - 3) {
                                        seconds = TimeUnit.HOURS.toSeconds(parseInt);
                                    }
                                    j += seconds;
                                }
                            }
                            k7Var.e = j;
                            k7Var.f = -1;
                        }
                    }
                    return k7Var;
                } catch (Throwable th) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().a("VastTracker", "Error occurred while initializing", th);
                    }
                    kVar.E().a("VastTracker", th);
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k7)) {
            return false;
        }
        k7 k7Var = (k7) obj;
        if (this.e != k7Var.e || this.f != k7Var.f) {
            return false;
        }
        String str = this.f3172a;
        if (str == null ? k7Var.f3172a != null : !str.equals(k7Var.f3172a)) {
            return false;
        }
        String str2 = this.b;
        if (str2 == null ? k7Var.b != null : !str2.equals(k7Var.b)) {
            return false;
        }
        return this.c.equals(k7Var.c);
    }

    public int hashCode() {
        int i;
        String str = this.f3172a;
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
        long j = this.e;
        return ((((((i3 + i2) * 31) + this.c.hashCode()) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.f;
    }

    public String toString() {
        return "VastTracker{identifier='" + this.f3172a + "', event='" + this.b + "', uriString='" + this.c + "', offsetSeconds=" + this.e + ", offsetPercent=" + this.f + AbstractJsonLexerKt.END_OBJ;
    }

    public boolean a(long j, int i) {
        long j2 = this.e;
        boolean z = j2 >= 0;
        boolean z2 = j >= j2;
        int i2 = this.f;
        return (z && z2) || ((i2 >= 0) && (i >= i2));
    }

    private static int a(String str, e7 e7Var) {
        if ("start".equalsIgnoreCase(str)) {
            return 0;
        }
        if ("firstQuartile".equalsIgnoreCase(str)) {
            return 25;
        }
        if (CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT.equalsIgnoreCase(str)) {
            return 50;
        }
        if ("thirdQuartile".equalsIgnoreCase(str)) {
            return 75;
        }
        if (CampaignEx.JSON_NATIVE_VIDEO_COMPLETE.equalsIgnoreCase(str)) {
            if (e7Var != null) {
                return e7Var.g();
            }
            return 95;
        }
        return -1;
    }

    public static k7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        k7 k7Var = new k7();
        String string = JsonUtils.getString(jSONObject, "uri_string", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        k7Var.c = string;
        k7Var.f3172a = JsonUtils.getString(jSONObject, "identifier", "");
        k7Var.b = JsonUtils.getString(jSONObject, "event", "");
        k7Var.e = JsonUtils.getLong(jSONObject, "offset_seconds", -1L);
        k7Var.f = JsonUtils.getInt(jSONObject, "offset_percent", -1);
        return k7Var;
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "identifier", this.f3172a);
        JsonUtils.putString(jSONObject, "event", this.b);
        JsonUtils.putString(jSONObject, "uri_string", this.c);
        JsonUtils.putLong(jSONObject, "offset_seconds", this.e);
        JsonUtils.putInt(jSONObject, "offset_percent", this.f);
        return jSONObject;
    }
}
