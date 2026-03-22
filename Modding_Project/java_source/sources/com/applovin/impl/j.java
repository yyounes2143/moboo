package com.applovin.impl;

import android.text.TextUtils;
import android.util.Base64;
import com.applovin.impl.sdk.utils.StringUtils;
import java.io.UnsupportedEncodingException;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3154a;
    private final String b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        UNSPECIFIED("UNSPECIFIED"),
        REGULAR("REGULAR"),
        AD_RESPONSE_JSON("AD_RESPONSE_JSON");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f3155a;

        a(String str) {
            this.f3155a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f3155a;
        }
    }

    public j(String str, com.applovin.impl.sdk.k kVar) {
        if (!TextUtils.isEmpty(str)) {
            if (kVar != null) {
                this.b = str;
                this.f3154a = kVar;
                return;
            }
            throw new IllegalArgumentException("No sdk specified");
        }
        throw new IllegalArgumentException("Identifier is empty");
    }

    public JSONObject a() {
        if (c() == a.AD_RESPONSE_JSON) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(new String(Base64.decode(this.b.substring(d().length()), 0), "UTF-8"));
                    this.f3154a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = this.f3154a.O();
                        O.a("AdToken", "Decoded token into ad response: " + jSONObject);
                        return jSONObject;
                    }
                    return jSONObject;
                } catch (JSONException e) {
                    this.f3154a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O2 = this.f3154a.O();
                        O2.a("AdToken", "Unable to decode token '" + this.b + "' into JSON", e);
                    }
                    this.f3154a.E().a("AdToken", "decodeFullAdResponseStr", e);
                    return null;
                }
            } catch (UnsupportedEncodingException e2) {
                this.f3154a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O3 = this.f3154a.O();
                    O3.a("AdToken", "Unable to process ad response from token '" + this.b + "'", e2);
                }
                this.f3154a.E().a("AdToken", "decodeFullAdResponse", e2);
                return null;
            }
        }
        return null;
    }

    public String b() {
        return this.b;
    }

    public a c() {
        if (a(l4.y0) != null) {
            return a.REGULAR;
        }
        if (a(l4.z0) != null) {
            return a.AD_RESPONSE_JSON;
        }
        return a.UNSPECIFIED;
    }

    public String d() {
        String a2 = a(l4.y0);
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        String a3 = a(l4.z0);
        if (!TextUtils.isEmpty(a3)) {
            return a3;
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        String str = this.b;
        String str2 = ((j) obj).b;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        String str = this.b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        String prefixToIndex = StringUtils.prefixToIndex(32, this.b);
        return "AdToken{id=" + prefixToIndex + ", type=" + c() + AbstractJsonLexerKt.END_OBJ;
    }

    private String a(l4 l4Var) {
        for (String str : this.f3154a.c(l4Var)) {
            if (this.b.startsWith(str)) {
                return str;
            }
        }
        return null;
    }
}
