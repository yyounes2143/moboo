package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Iterator;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class v5 extends w4 {
    private final AppLovinAdLoadListener g;
    private final a h;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class a extends e7 {
        public a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
            super(jSONObject, jSONObject2, kVar);
        }

        public void a(b8 b8Var) {
            if (b8Var != null) {
                this.b.add(b8Var);
                return;
            }
            throw new IllegalArgumentException("No aggregated vast response specified");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class b extends v5 {
        private final String i;

        public b(String str, e7 e7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
            super(e7Var, appLovinAdLoadListener, kVar);
            this.i = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b8 b = b(this.i);
            if (b != null) {
                a(b);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.b;
                oVar.b(str, "Unable to process XML: " + this.i);
            }
            c(this.i);
            a(f7.XML_PARSING);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class c extends v5 {
        private final JSONObject i;

        public c(e7 e7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
            super(e7Var, appLovinAdLoadListener, kVar);
            this.i = e7Var.b();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Processing SDK JSON response...");
            }
            String string = JsonUtils.getString(this.i, "xml", null);
            if (StringUtils.isValidString(string)) {
                if (string.length() < ((Integer) this.f3803a.a(l4.q4)).intValue()) {
                    b8 b = b(string);
                    if (b != null) {
                        a(b);
                        return;
                    }
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.c;
                        String str = this.b;
                        oVar.b(str, "Unable to process XML: " + string);
                    }
                    c(string);
                    a(f7.XML_PARSING);
                    return;
                }
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.b(this.b, "VAST response is over max length");
                }
                a(f7.XML_PARSING);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.c.b(this.b, "No VAST response received.");
            }
            a(f7.NO_WRAPPER_RESPONSE);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class d extends v5 {
        private final b8 i;

        public d(b8 b8Var, e7 e7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
            super(e7Var, appLovinAdLoadListener, kVar);
            if (b8Var != null) {
                if (e7Var != null) {
                    if (appLovinAdLoadListener != null) {
                        this.i = b8Var;
                        return;
                    }
                    throw new IllegalArgumentException("No callback specified.");
                }
                throw new IllegalArgumentException("No context specified.");
            }
            throw new IllegalArgumentException("No response specified.");
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Processing VAST Wrapper response...");
            }
            a(this.i);
        }
    }

    public v5(e7 e7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskProcessVastResponse", kVar);
        if (e7Var != null) {
            this.g = appLovinAdLoadListener;
            this.h = (a) e7Var;
            return;
        }
        throw new IllegalArgumentException("No context specified.");
    }

    public static v5 a(JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        return new c(new a(jSONObject, jSONObject2, kVar), appLovinAdLoadListener, kVar);
    }

    public b8 b(String str) {
        try {
            return c8.a(str, this.f3803a);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Failed to process VAST response", th);
            }
            a(f7.XML_PARSING);
            this.f3803a.E().a(this.b, th);
            return null;
        }
    }

    public void c(String str) {
        if (str != null) {
            Iterator<String> it = StringUtils.getRegexMatches(StringUtils.match(str, (String) this.f3803a.a(l4.J4)), 1).iterator();
            while (it.hasNext()) {
                b8 b2 = b("<VAST>" + it.next() + "</VAST>");
                if (b2 != null) {
                    this.h.a(b2);
                }
            }
        }
    }

    public static v5 a(String str, JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        return new b(str, new a(jSONObject, jSONObject2, kVar), appLovinAdLoadListener, kVar);
    }

    public static v5 a(b8 b8Var, e7 e7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        return new d(b8Var, e7Var, appLovinAdLoadListener, kVar);
    }

    public void a(b8 b8Var) {
        int d2 = this.h.d();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Finished parsing XML at depth " + d2);
        }
        this.h.a(b8Var);
        if (m7.b(b8Var)) {
            int intValue = ((Integer) this.f3803a.a(l4.r4)).intValue();
            if (d2 < intValue) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.a(this.b, "VAST response is wrapper. Resolving...");
                }
                this.f3803a.q0().a(new d6(this.h, this.g, this.f3803a));
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.c;
                String str2 = this.b;
                oVar2.b(str2, "Reached beyond max wrapper depth of " + intValue);
            }
            a(f7.WRAPPER_LIMIT_REACHED);
        } else if (m7.a(b8Var)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "VAST response is inline. Rendering ad...");
            }
            this.f3803a.q0().a(new y5(this.h, this.g, this.f3803a));
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.b(this.b, "VAST response is an error");
            }
            a(f7.NO_WRAPPER_RESPONSE);
        }
    }

    public void a(f7 f7Var) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.b(str, "Failed to process VAST response due to VAST error code " + f7Var);
        }
        m7.a(this.h, this.g, f7Var, -6, this.f3803a);
    }
}
