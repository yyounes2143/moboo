package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Locale;
import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class y6 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3820a;
    private String b;
    private final String c = a(n4.j);
    private final String d = a(n4.k);
    private String e = (String) o4.a(n4.l, (Object) null, com.applovin.impl.sdk.k.o());
    private String f = (String) o4.a(n4.m, (Object) null, com.applovin.impl.sdk.k.o());

    public y6(com.applovin.impl.sdk.k kVar) {
        this.f3820a = kVar;
        a(f());
    }

    private String f() {
        if (!((Boolean) this.f3820a.a(l4.A3)).booleanValue()) {
            this.f3820a.c(n4.i);
        }
        String str = (String) this.f3820a.a(n4.i);
        if (StringUtils.isValidString(str)) {
            this.f3820a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f3820a.O();
                O.a("AppLovinSdk", "Using identifier (" + str + ") from previous session");
            }
            return str;
        }
        return null;
    }

    public String a() {
        return this.d;
    }

    public String b() {
        return this.e;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.f;
    }

    public String e() {
        return this.b;
    }

    private String a(n4 n4Var) {
        String str = (String) o4.a(n4Var, (Object) null, com.applovin.impl.sdk.k.o());
        if (StringUtils.isValidString(str)) {
            return str;
        }
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        o4.b(n4Var, lowerCase, com.applovin.impl.sdk.k.o());
        return lowerCase;
    }

    public void b(String str) {
        this.e = str;
        o4.b(n4.l, str, com.applovin.impl.sdk.k.o());
    }

    public void c(String str) {
        this.f = str;
        o4.b(n4.m, str, com.applovin.impl.sdk.k.o());
    }

    public void a(String str) {
        if (((Boolean) this.f3820a.a(l4.A3)).booleanValue()) {
            this.f3820a.b(n4.i, str);
        }
        this.b = str;
        this.f3820a.u().b(str, a());
    }

    public static String a(com.applovin.impl.sdk.k kVar) {
        n4 n4Var = n4.n;
        String str = (String) kVar.a(n4Var);
        if (TextUtils.isEmpty(str)) {
            String valueOf = String.valueOf(((int) (Math.random() * 100.0d)) + 1);
            kVar.b(n4Var, valueOf);
            return valueOf;
        }
        return str;
    }
}
