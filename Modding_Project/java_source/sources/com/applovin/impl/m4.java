package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class m4 {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f3195a;
    protected final Context b;
    protected final SharedPreferences c;
    private final Map d = new HashMap();
    private final Object e = new Object();

    public m4(com.applovin.impl.sdk.k kVar) {
        this.f3195a = kVar;
        Context o = com.applovin.impl.sdk.k.o();
        this.b = o;
        this.c = o.getSharedPreferences("com.applovin.sdk.1", 0);
        try {
            Class.forName(l4.class.getName());
            Class.forName(g3.class.getName());
        } catch (Throwable unused) {
        }
        d();
    }

    public Object a(l4 l4Var) {
        if (l4Var != null) {
            synchronized (this.e) {
                try {
                    Object obj = this.d.get(l4Var.b());
                    if (obj == null) {
                        return l4Var.a();
                    }
                    return l4Var.a(obj);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException("No setting type specified");
    }

    public List b(l4 l4Var) {
        ArrayList arrayList = new ArrayList(6);
        for (String str : c(l4Var)) {
            arrayList.add(MaxAdFormat.formatFromString(str));
        }
        return arrayList;
    }

    public List c(l4 l4Var) {
        return CollectionUtils.explode((String) a(l4Var));
    }

    public void d() {
        String b = b();
        synchronized (this.e) {
            try {
                for (l4 l4Var : l4.c()) {
                    String b2 = l4Var.b();
                    Object a2 = this.f3195a.a(b + b2, null, l4Var.a().getClass(), this.c);
                    if (a2 != null) {
                        this.d.put(l4Var.b(), a2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e() {
        String b = b();
        synchronized (this.e) {
            try {
                SharedPreferences.Editor edit = this.c.edit();
                for (l4 l4Var : l4.c()) {
                    Object obj = this.d.get(l4Var.b());
                    if (obj != null) {
                        this.f3195a.a(b + l4Var.b(), obj, edit);
                    }
                }
                if (((Boolean) this.f3195a.a(l4.a6)).booleanValue()) {
                    o4.a(edit);
                } else {
                    edit.apply();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean c() {
        return this.f3195a.n0().isVerboseLoggingEnabled() || ((Boolean) a(l4.k)).booleanValue();
    }

    private String b() {
        return "com.applovin.sdk." + z6.f(this.f3195a.i0()) + ".";
    }

    public void a(l4 l4Var, Object obj) {
        if (l4Var == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj != null) {
            synchronized (this.e) {
                this.d.put(l4Var.b(), obj);
            }
            return;
        }
        throw new IllegalArgumentException("No new value specified");
    }

    public void a(JSONObject jSONObject) {
        synchronized (this.e) {
            try {
                boolean booleanValue = JsonUtils.getBoolean(jSONObject, l4.v.b(), Boolean.FALSE).booleanValue();
                HashMap hashMap = booleanValue ? new HashMap() : null;
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next != null && next.length() > 0) {
                        try {
                            l4 a2 = l4.a(next);
                            if (a2 != null) {
                                Object a3 = booleanValue ? a(a2) : null;
                                Object a4 = a(next, jSONObject, a2.a());
                                this.d.put(a2.b(), a4);
                                if (a2 == l4.g5) {
                                    this.d.put(l4.h5.b(), Long.valueOf(System.currentTimeMillis()));
                                }
                                if (booleanValue && !a4.equals(a3)) {
                                    hashMap.put(a2, a3);
                                }
                            }
                        } catch (JSONException e) {
                            com.applovin.impl.sdk.o.c("SettingsManager", "Unable to parse JSON settingsValues array", e);
                            this.f3195a.E().a("SettingsManager", "loadSettingsException", e);
                        } catch (Throwable th) {
                            com.applovin.impl.sdk.o.c("SettingsManager", "Unable to convert setting object ", th);
                            this.f3195a.E().a("SettingsManager", "loadSettingsThrowable", th);
                        }
                    }
                }
                if (booleanValue && hashMap.size() > 0) {
                    n2 n2Var = new n2();
                    n2Var.a("========== UPDATED SETTINGS ==========");
                    for (l4 l4Var : hashMap.keySet()) {
                        String b = l4Var.b();
                        n2Var.a(b, a(l4Var) + " (" + hashMap.get(l4Var) + ")");
                    }
                    n2Var.a("========== END ==========");
                    this.f3195a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f3195a.O().a("SettingsManager", n2Var.toString());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a() {
        synchronized (this.e) {
            this.d.clear();
        }
        this.f3195a.a(this.c);
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Double) {
            return Double.valueOf(jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
    }
}
