package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class n6 {

    /* renamed from: a  reason: collision with root package name */
    private final a f3447a;
    private final Integer b;
    private final String c;
    private final String d;
    private Boolean e;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        TCF_VENDOR,
        ATP_NETWORK,
        OTHER;

        /* JADX INFO: Access modifiers changed from: private */
        public static a b(int i) {
            if (i != 0) {
                if (i != 1) {
                    return OTHER;
                }
                return ATP_NETWORK;
            }
            return TCF_VENDOR;
        }
    }

    public n6(JSONObject jSONObject, String str) {
        this.d = str;
        this.f3447a = a.b(JsonUtils.getInt(jSONObject, "type", a.OTHER.ordinal()));
        this.b = JsonUtils.getInteger(jSONObject, "id", null);
        this.c = JsonUtils.getString(jSONObject, "name", null);
    }

    public void a(Boolean bool) {
        this.e = bool;
    }

    public String b() {
        return this.d;
    }

    public String c() {
        return this.c;
    }

    public Integer d() {
        return this.b;
    }

    public String e() {
        String a2;
        Boolean bool = this.e;
        if (bool != null) {
            a2 = String.valueOf(bool);
        } else {
            a2 = l0.b().a(com.applovin.impl.sdk.k.o());
        }
        return "\n" + this.d + " - " + a2;
    }

    public a f() {
        return this.f3447a;
    }

    public Boolean a() {
        return this.e;
    }
}
