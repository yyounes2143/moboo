package com.applovin.impl.mediation;

import android.text.TextUtils;
import com.applovin.impl.a3;
import com.applovin.impl.q2;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.sdk.AppLovinSdk;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class g {
    private final k b;
    private final o c;

    /* renamed from: a  reason: collision with root package name */
    private final Map f3435a = DesugarCollections.synchronizedMap(new HashMap(16));
    private final Object d = new Object();
    private final Map e = new HashMap();
    private final Set f = new HashSet();
    private final Object g = new Object();
    private final Set h = new HashSet();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f3436a;
        private final String b;
        private final MaxAdFormat c;
        private final JSONObject d;

        public a(String str, String str2, q2 q2Var, k kVar) {
            this.f3436a = str;
            this.b = str2;
            JSONObject jSONObject = new JSONObject();
            this.d = jSONObject;
            JsonUtils.putString(jSONObject, "class", str);
            JsonUtils.putString(jSONObject, "operation", str2);
            if (q2Var != null) {
                this.c = q2Var.getFormat();
                JsonUtils.putString(jSONObject, "format", q2Var.getFormat().getLabel());
                return;
            }
            this.c = null;
        }

        public JSONObject a() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (!this.f3436a.equals(aVar.f3436a) || !this.b.equals(aVar.b)) {
                return false;
            }
            MaxAdFormat maxAdFormat = this.c;
            MaxAdFormat maxAdFormat2 = aVar.c;
            if (maxAdFormat == null ? maxAdFormat2 == null : maxAdFormat.equals(maxAdFormat2)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i;
            int hashCode = ((this.f3436a.hashCode() * 31) + this.b.hashCode()) * 31;
            MaxAdFormat maxAdFormat = this.c;
            if (maxAdFormat != null) {
                i = maxAdFormat.hashCode();
            } else {
                i = 0;
            }
            return hashCode + i;
        }

        public String toString() {
            return "DisabledAdapterInfo{className='" + this.f3436a + "', operationTag='" + this.b + "', format=" + this.c + AbstractJsonLexerKt.END_OBJ;
        }
    }

    public g(k kVar) {
        if (kVar != null) {
            this.b = kVar;
            this.c = kVar.O();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public Collection a() {
        ArrayList arrayList;
        synchronized (this.g) {
            try {
                arrayList = new ArrayList(this.h.size());
                for (a aVar : this.h) {
                    arrayList.add(aVar.a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public Collection b() {
        Set unmodifiableSet;
        synchronized (this.d) {
            unmodifiableSet = Collections.unmodifiableSet(this.f);
        }
        return unmodifiableSet;
    }

    public Collection c() {
        Set unmodifiableSet;
        synchronized (this.d) {
            try {
                HashSet hashSet = new HashSet(this.e.size());
                for (Class cls : this.e.values()) {
                    hashSet.add(cls.getName());
                }
                unmodifiableSet = Collections.unmodifiableSet(hashSet);
            } catch (Throwable th) {
                throw th;
            }
        }
        return unmodifiableSet;
    }

    public h a(a3 a3Var) {
        return a(a3Var, false);
    }

    public h a(a3 a3Var, boolean z) {
        Class a2;
        h hVar;
        if (a3Var != null) {
            String c = a3Var.c();
            String b = a3Var.b();
            if (TextUtils.isEmpty(c)) {
                if (o.a()) {
                    o oVar = this.c;
                    oVar.b("MediationAdapterManager", "No adapter name provided for " + b + ", not loading the adapter ");
                }
                return null;
            } else if (TextUtils.isEmpty(b)) {
                if (o.a()) {
                    o oVar2 = this.c;
                    oVar2.b("MediationAdapterManager", "Unable to find default className for '" + c + "'");
                }
                return null;
            } else if (!z || (hVar = (h) this.f3435a.get(b)) == null) {
                synchronized (this.d) {
                    try {
                        if (!this.f.contains(b)) {
                            if (this.e.containsKey(b)) {
                                a2 = (Class) this.e.get(b);
                            } else {
                                a2 = a(b);
                                if (a2 == null) {
                                    if (o.a()) {
                                        o oVar3 = this.c;
                                        oVar3.k("MediationAdapterManager", "Adapter " + c + " could not be loaded, class " + b + " not found");
                                    }
                                    this.f.add(b);
                                    return null;
                                }
                            }
                            h a3 = a(a3Var, a2, z);
                            if (a3 != null) {
                                if (o.a()) {
                                    o oVar4 = this.c;
                                    oVar4.a("MediationAdapterManager", "Loaded " + c);
                                }
                                this.e.put(b, a2);
                                if (z) {
                                    this.f3435a.put(a3Var.b(), a3);
                                }
                                return a3;
                            }
                            if (o.a()) {
                                o oVar5 = this.c;
                                oVar5.b("MediationAdapterManager", "Failed to load " + c);
                            }
                            this.f.add(b);
                            return null;
                        }
                        if (o.a()) {
                            o oVar6 = this.c;
                            oVar6.a("MediationAdapterManager", "Not attempting to load " + c + " due to prior errors");
                        }
                        return null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else {
                return hVar;
            }
        }
        throw new IllegalArgumentException("No adapter spec specified");
    }

    public void a(String str, String str2, q2 q2Var) {
        synchronized (this.g) {
            try {
                this.b.O();
                if (o.a()) {
                    o O = this.b.O();
                    O.b("MediationAdapterManager", "Adding " + str + " to list of disabled adapters.");
                }
                this.h.add(new a(str, str2, q2Var, this.b));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private h a(a3 a3Var, Class cls, boolean z) {
        try {
            return new h(a3Var, (MediationAdapterBase) cls.getConstructor(AppLovinSdk.class).newInstance(this.b.y0()), z, this.b);
        } catch (Throwable th) {
            o.c("MediationAdapterManager", "Failed to load adapter: " + a3Var, th);
            return null;
        }
    }

    private Class a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return cls.asSubclass(MaxAdapter.class);
            }
            o.h("MediationAdapterManager", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
