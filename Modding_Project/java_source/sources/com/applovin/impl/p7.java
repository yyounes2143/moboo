package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class p7 {

    /* renamed from: a  reason: collision with root package name */
    private final int f3468a;
    private final int b;
    private final int c;
    private final int d;
    private final boolean e;
    private final int f;
    private final int g;
    private final int h;
    private final float i;
    private final float j;

    public p7(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = kVar.O();
            O.d("VideoButtonProperties", "Updating video button properties with JSON = " + JsonUtils.maybeConvertToIndentedString(jSONObject));
        }
        this.f3468a = JsonUtils.getInt(jSONObject, "width", 64);
        this.b = JsonUtils.getInt(jSONObject, "height", 7);
        this.c = JsonUtils.getInt(jSONObject, "margin", 20);
        this.d = JsonUtils.getInt(jSONObject, "gravity", 85);
        this.e = JsonUtils.getBoolean(jSONObject, "tap_to_fade", Boolean.FALSE).booleanValue();
        this.f = JsonUtils.getInt(jSONObject, "tap_to_fade_duration_milliseconds", 500);
        this.g = JsonUtils.getInt(jSONObject, "fade_in_duration_milliseconds", 500);
        this.h = JsonUtils.getInt(jSONObject, "fade_out_duration_milliseconds", 500);
        this.i = JsonUtils.getFloat(jSONObject, "fade_in_delay_seconds", 1.0f);
        this.j = JsonUtils.getFloat(jSONObject, "fade_out_delay_seconds", 6.0f);
    }

    public float a() {
        return this.i;
    }

    public long b() {
        return this.g;
    }

    public float c() {
        return this.j;
    }

    public long d() {
        return this.h;
    }

    public int e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            p7 p7Var = (p7) obj;
            if (this.f3468a == p7Var.f3468a && this.b == p7Var.b && this.c == p7Var.c && this.d == p7Var.d && this.e == p7Var.e && this.f == p7Var.f && this.g == p7Var.g && this.h == p7Var.h && Float.compare(p7Var.i, this.i) == 0 && Float.compare(p7Var.j, this.j) == 0) {
                return true;
            }
        }
        return false;
    }

    public int f() {
        return this.b;
    }

    public int g() {
        return this.c;
    }

    public long h() {
        return this.f;
    }

    public int hashCode() {
        int i;
        int i2 = ((((((((((((((this.f3468a * 31) + this.b) * 31) + this.c) * 31) + this.d) * 31) + (this.e ? 1 : 0)) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31;
        float f = this.i;
        int i3 = 0;
        if (f != 0.0f) {
            i = Float.floatToIntBits(f);
        } else {
            i = 0;
        }
        int i4 = (i2 + i) * 31;
        float f2 = this.j;
        if (f2 != 0.0f) {
            i3 = Float.floatToIntBits(f2);
        }
        return i4 + i3;
    }

    public int i() {
        return this.f3468a;
    }

    public boolean j() {
        return this.e;
    }

    public String toString() {
        return "VideoButtonProperties{widthPercentOfScreen=" + this.f3468a + ", heightPercentOfScreen=" + this.b + ", margin=" + this.c + ", gravity=" + this.d + ", tapToFade=" + this.e + ", tapToFadeDurationMillis=" + this.f + ", fadeInDurationMillis=" + this.g + ", fadeOutDurationMillis=" + this.h + ", fadeInDelay=" + this.i + ", fadeOutDelay=" + this.j + AbstractJsonLexerKt.END_OBJ;
    }
}
