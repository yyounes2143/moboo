package com.applovin.impl;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class i7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    private a f3152a;
    private Uri b;
    private String c;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        UNSPECIFIED,
        STATIC,
        IFRAME,
        HTML
    }

    private i7() {
    }

    public static i7 a(b8 b8Var, i7 i7Var, com.applovin.impl.sdk.k kVar) {
        if (b8Var != null) {
            if (kVar != null) {
                if (i7Var == null) {
                    try {
                        i7Var = new i7();
                    } catch (Throwable th) {
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            kVar.O().a("VastNonVideoResource", "Error occurred while initializing", th);
                        }
                        kVar.E().a("VastNonVideoResource", th);
                        return null;
                    }
                }
                if (i7Var.b == null && !StringUtils.isValidString(i7Var.c)) {
                    String a2 = a(b8Var, "StaticResource");
                    if (URLUtil.isValidUrl(a2)) {
                        i7Var.b = Uri.parse(a2);
                        i7Var.f3152a = a.STATIC;
                        return i7Var;
                    }
                    String a3 = a(b8Var, "IFrameResource");
                    if (StringUtils.isValidString(a3)) {
                        i7Var.f3152a = a.IFRAME;
                        if (URLUtil.isValidUrl(a3)) {
                            i7Var.b = Uri.parse(a3);
                            return i7Var;
                        }
                        i7Var.c = a3;
                        return i7Var;
                    }
                    String a4 = a(b8Var, "HTMLResource");
                    if (StringUtils.isValidString(a4)) {
                        i7Var.f3152a = a.HTML;
                        if (URLUtil.isValidUrl(a4)) {
                            i7Var.b = Uri.parse(a4);
                            return i7Var;
                        }
                        i7Var.c = a4;
                    }
                }
                return i7Var;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public String b() {
        return this.c;
    }

    public Uri c() {
        return this.b;
    }

    public a d() {
        return this.f3152a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i7)) {
            return false;
        }
        i7 i7Var = (i7) obj;
        if (this.f3152a != i7Var.f3152a) {
            return false;
        }
        Uri uri = this.b;
        if (uri == null ? i7Var.b != null : !uri.equals(i7Var.b)) {
            return false;
        }
        String str = this.c;
        String str2 = i7Var.c;
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
        a aVar = this.f3152a;
        int i3 = 0;
        if (aVar != null) {
            i = aVar.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        Uri uri = this.b;
        if (uri != null) {
            i2 = uri.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        String str = this.c;
        if (str != null) {
            i3 = str.hashCode();
        }
        return i5 + i3;
    }

    public String toString() {
        return "VastNonVideoResource{type=" + this.f3152a + ", resourceUri=" + this.b + ", resourceContents='" + this.c + '\'' + AbstractJsonLexerKt.END_OBJ;
    }

    private static String a(b8 b8Var, String str) {
        b8 c = b8Var.c(str);
        if (c != null) {
            return c.d();
        }
        return null;
    }

    public void a(Uri uri) {
        this.b = uri;
    }

    public void a(String str) {
        this.c = str;
    }

    public static i7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "type", null);
        a valueOf = string == null ? null : a.valueOf(string);
        String string2 = JsonUtils.getString(jSONObject, "resource_uri", null);
        Uri parse = StringUtils.isValidString(string2) ? Uri.parse(string2) : null;
        i7 i7Var = new i7();
        i7Var.f3152a = valueOf;
        i7Var.b = parse;
        i7Var.c = JsonUtils.getString(jSONObject, "resource_contents", null);
        return i7Var;
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        a aVar = this.f3152a;
        JsonUtils.putString(jSONObject, "type", aVar == null ? null : aVar.toString());
        Uri uri = this.b;
        JsonUtils.putString(jSONObject, "resource_uri", uri != null ? uri.toString() : null);
        JsonUtils.putString(jSONObject, "resource_contents", this.c);
        return jSONObject;
    }
}
