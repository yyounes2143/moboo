package com.applovin.impl;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class l0 {

    /* renamed from: a  reason: collision with root package name */
    private static final a f3174a = new a("Age Restricted User", n4.p);
    private static final a b = new a("Has User Consent", n4.o);
    private static final a c = new a("\"Do Not Sell\"", n4.q);

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f3175a;
        private final n4 b;

        public a(String str, n4 n4Var) {
            this.f3175a = str;
            this.b = n4Var;
        }

        public Boolean b(Context context) {
            if (context == null) {
                com.applovin.impl.sdk.o.h("AppLovinSdk", "Failed to get value for key: " + this.b);
                return null;
            }
            return (Boolean) o4.a(this.b, (Object) null, context);
        }

        public String a() {
            return this.f3175a;
        }

        public String a(Context context) {
            Boolean b = b(context);
            return b != null ? b.toString() : "No value set";
        }
    }

    public static a a() {
        return c;
    }

    public static a b() {
        return b;
    }

    public static a c() {
        return f3174a;
    }

    public static boolean a(boolean z, Context context) {
        return a(n4.q, Boolean.valueOf(z), context);
    }

    public static boolean b(boolean z, Context context) {
        return a(n4.o, Boolean.valueOf(z), context);
    }

    public static String a(Context context) {
        return a(b, context) + a(c, context);
    }

    private static boolean a(n4 n4Var, Boolean bool, Context context) {
        if (context == null) {
            com.applovin.impl.sdk.o.h("AppLovinSdk", "Failed to update compliance value for key: " + n4Var);
            return false;
        }
        try {
            Boolean bool2 = (Boolean) o4.a(n4Var, (Object) null, context);
            o4.b(n4Var, bool, context);
            return bool2 == null || bool2 != bool;
        } catch (Throwable th) {
            com.applovin.impl.sdk.o.c("ComplianceManager", "Unable to update compliance", th);
            com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.C0;
            if (kVar != null) {
                kVar.E().a("ComplianceManager", "updateCompliance", th);
            }
            return false;
        }
    }

    private static String a(a aVar, Context context) {
        return "\n" + aVar.f3175a + " - " + aVar.a(context);
    }
}
