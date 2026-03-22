package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Locale;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class o7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private Uri f3456a;
    private Uri b;
    private a c;
    private String d;
    private int e;
    private int f;
    private long g;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        Progressive,
        Streaming
    }

    private o7() {
    }

    public static o7 a(b8 b8Var, com.applovin.impl.sdk.k kVar) {
        if (b8Var != null) {
            if (kVar != null) {
                try {
                    String d = b8Var.d();
                    if (URLUtil.isValidUrl(d)) {
                        Uri parse = Uri.parse(d);
                        o7 o7Var = new o7();
                        o7Var.f3456a = parse;
                        o7Var.b = parse;
                        o7Var.g = a(b8Var);
                        o7Var.c = a((String) b8Var.a().get("delivery"));
                        o7Var.f = StringUtils.parseInt((String) b8Var.a().get("height"));
                        o7Var.e = StringUtils.parseInt((String) b8Var.a().get("width"));
                        o7Var.d = ((String) b8Var.a().get("type")).toLowerCase(Locale.ENGLISH);
                        return o7Var;
                    }
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().b("VastVideoFile", "Unable to create video file. Could not find URL.");
                        return null;
                    }
                    return null;
                } catch (Throwable th) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().a("VastVideoFile", "Error occurred while initializing", th);
                    }
                    kVar.E().a("VastVideoFile", th);
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public long b() {
        return this.g;
    }

    public String c() {
        return this.d;
    }

    public Uri d() {
        return this.f3456a;
    }

    public Uri e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o7)) {
            return false;
        }
        o7 o7Var = (o7) obj;
        if (this.e != o7Var.e || this.f != o7Var.f || this.g != o7Var.g) {
            return false;
        }
        Uri uri = this.f3456a;
        if (uri == null ? o7Var.f3456a != null : !uri.equals(o7Var.f3456a)) {
            return false;
        }
        Uri uri2 = this.b;
        if (uri2 == null ? o7Var.b != null : !uri2.equals(o7Var.b)) {
            return false;
        }
        if (this.c != o7Var.c) {
            return false;
        }
        String str = this.d;
        String str2 = o7Var.d;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        Uri uri = this.f3456a;
        int i4 = 0;
        if (uri != null) {
            i = uri.hashCode();
        } else {
            i = 0;
        }
        int i5 = i * 31;
        Uri uri2 = this.b;
        if (uri2 != null) {
            i2 = uri2.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        a aVar = this.c;
        if (aVar != null) {
            i3 = aVar.hashCode();
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 31;
        String str = this.d;
        if (str != null) {
            i4 = str.hashCode();
        }
        return ((((((i7 + i4) * 31) + this.e) * 31) + this.f) * 31) + Long.valueOf(this.g).hashCode();
    }

    public String toString() {
        return "VastVideoFile{sourceVideoUri=" + this.f3456a + ", videoUri=" + this.b + ", deliveryType=" + this.c + ", fileType='" + this.d + "', width=" + this.e + ", height=" + this.f + ", bitrate=" + this.g + AbstractJsonLexerKt.END_OBJ;
    }

    private static a a(String str) {
        if (StringUtils.isValidString(str)) {
            if ("progressive".equalsIgnoreCase(str)) {
                return a.Progressive;
            }
            if ("streaming".equalsIgnoreCase(str)) {
                return a.Streaming;
            }
        }
        return a.Progressive;
    }

    private static long a(b8 b8Var) {
        Map a2 = b8Var.a();
        long parseLong = StringUtils.parseLong((String) a2.get("bitrate"), 0L);
        return parseLong != 0 ? parseLong : (StringUtils.parseLong((String) a2.get("minBitrate"), 0L) + StringUtils.parseLong((String) a2.get("maxBitrate"), 0L)) / 2;
    }

    public void a(Uri uri) {
        this.b = uri;
    }

    public static o7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "source_video_uri", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        Uri parse = Uri.parse(string);
        if (TextUtils.isEmpty(JsonUtils.getString(jSONObject, "video_uri", null))) {
            return null;
        }
        Uri parse2 = Uri.parse(string);
        String string2 = JsonUtils.getString(jSONObject, "file_type", null);
        if (TextUtils.isEmpty(string2)) {
            return null;
        }
        a valueOf = a.valueOf(JsonUtils.getString(jSONObject, "delivery_type", a.Progressive.toString()));
        int i = JsonUtils.getInt(jSONObject, "width", 0);
        int i2 = JsonUtils.getInt(jSONObject, "height", 0);
        int i3 = JsonUtils.getInt(jSONObject, "bitrate", 0);
        o7 o7Var = new o7();
        o7Var.f3456a = parse;
        o7Var.b = parse2;
        o7Var.c = valueOf;
        o7Var.d = string2;
        o7Var.e = i;
        o7Var.f = i2;
        o7Var.g = i3;
        return o7Var;
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        Uri uri = this.f3456a;
        if (uri != null) {
            JsonUtils.putString(jSONObject, "source_video_uri", uri.toString());
        }
        Uri uri2 = this.b;
        if (uri2 != null) {
            JsonUtils.putString(jSONObject, "video_uri", uri2.toString());
        }
        a aVar = this.c;
        JsonUtils.putString(jSONObject, "delivery_type", aVar == null ? null : aVar.toString());
        JsonUtils.putString(jSONObject, "file_type", this.d);
        JsonUtils.putInt(jSONObject, "width", this.e);
        JsonUtils.putInt(jSONObject, "height", this.f);
        JsonUtils.putLong(jSONObject, "bitrate", this.g);
        return jSONObject;
    }
}
