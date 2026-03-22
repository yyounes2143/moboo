package com.applovin.impl.mediation;

import android.app.Activity;
import com.applovin.impl.a2;
import com.applovin.impl.a3;
import com.applovin.impl.g1;
import com.applovin.impl.g3;
import com.applovin.impl.g4;
import com.applovin.impl.n4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.w5;
import com.applovin.impl.y1;
import com.applovin.impl.y4;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final k f3434a;
    private final o b;
    private final AtomicBoolean c = new AtomicBoolean();
    private final Set d = new HashSet();
    private final Object e = new Object();
    private final JSONArray f = new JSONArray();
    private final LinkedHashMap g = new LinkedHashMap();
    private final Object h = new Object();
    private final Map i = new HashMap();
    private final Map j = new HashMap();
    private final Object k = new Object();
    private List l;

    public f(k kVar) {
        this.f3434a = kVar;
        this.b = kVar.O();
    }

    public void a(Activity activity) {
        if (this.c.compareAndSet(false, true)) {
            String str = (String) this.f3434a.a(n4.E);
            if (StringUtils.isValidString(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    List<a3> a2 = a(JsonUtils.getJSONArray(jSONObject, this.f3434a.s0().c() ? "test_mode_auto_init_adapters" : "auto_init_adapters", new JSONArray()), jSONObject);
                    this.l = a2;
                    for (a3 a3Var : a2) {
                        this.i.put(a3Var.b(), a3Var);
                    }
                    long parseLong = StringUtils.parseLong(this.f3434a.n0().getExtraParameters().get("adapter_initialization_delay_ms"), -1L);
                    y4 y4Var = new y4(a2, activity, this.f3434a);
                    if (parseLong > 0) {
                        this.f3434a.q0().a(y4Var, r5.b.MEDIATION, parseLong);
                    } else {
                        this.f3434a.q0().a(y4Var);
                    }
                } catch (JSONException e) {
                    if (o.a()) {
                        this.b.a("MediationAdapterInitializationManager", "Failed to parse auto-init adapters JSON", e);
                    }
                    g1.a((Throwable) e);
                }
            }
        }
    }

    public JSONArray b() {
        JSONArray shallowCopy;
        synchronized (this.h) {
            shallowCopy = JsonUtils.shallowCopy(this.f);
        }
        return shallowCopy;
    }

    public boolean c() {
        return this.c.get();
    }

    private void c(a3 a3Var) {
        String b = a3Var.b();
        synchronized (this.e) {
            try {
                if (this.d.contains(b)) {
                    return;
                }
                this.d.add(b);
                this.f3434a.P().d(y1.L, a2.a(a3Var));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean b(a3 a3Var) {
        boolean containsKey;
        synchronized (this.h) {
            containsKey = this.g.containsKey(a3Var.b());
        }
        return containsKey;
    }

    public g4 a(a3 a3Var, Activity activity) {
        a3 a2 = a(a3Var);
        if (a2 == null) {
            return g4.a("AdapterInitialization:" + a3Var.c(), MaxAdapter.InitializationStatus.DOES_NOT_APPLY);
        }
        String b = a3Var.b();
        synchronized (this.k) {
            try {
                g4 g4Var = (g4) this.j.get(b);
                if (g4Var == null || (g4Var.d() && a2.q())) {
                    final g4 g4Var2 = new g4("AdapterInitialization:" + a3Var.c());
                    this.j.put(b, g4Var2);
                    h a3 = this.f3434a.T().a(a2);
                    if (a3 == null) {
                        g4Var2.a("Adapter implementation not found");
                        return g4Var2;
                    }
                    if (o.a()) {
                        o oVar = this.b;
                        oVar.d("MediationAdapterInitializationManager", "Initializing adapter " + a2);
                    }
                    c(a2);
                    a3.a(MaxAdapterParametersImpl.a(a2), activity, new MaxAdapter.OnCompletionListener() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwww
                        @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
                        public final void onCompletion(MaxAdapter.InitializationStatus initializationStatus, String str) {
                            f.a(g4.this, initializationStatus, str);
                        }
                    });
                    long m = a2.m();
                    w5.a(m, g4Var2, "The adapter (" + a3Var.c() + ") timed out initializing", "MediationAdapterInitializationManager", this.f3434a);
                    return g4Var2;
                }
                return g4Var;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(g4 g4Var, MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (initializationStatus != null && initializationStatus != MaxAdapter.InitializationStatus.INITIALIZING) {
            if (initializationStatus == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE) {
                g4Var.a(str);
                return;
            } else {
                g4Var.b(initializationStatus);
                return;
            }
        }
        g1.a("Adapters should never report a null or INITIALIZING status.", new Object[0]);
        g4Var.a("Adapter reported INITIALIZING");
    }

    private a3 a(a3 a3Var) {
        List<a3> list;
        if (((Boolean) this.f3434a.a(g3.N7)).booleanValue()) {
            a3 a3Var2 = (a3) this.i.get(a3Var.b());
            return a3Var2 != null ? a3Var2 : a3Var;
        } else if (!this.f3434a.s0().c() || (list = this.l) == null) {
            return a3Var;
        } else {
            for (a3 a3Var3 : list) {
                if (a3Var3.b().equals(a3Var.b())) {
                    return a3Var3;
                }
            }
            return null;
        }
    }

    public Integer a(String str) {
        Integer num;
        synchronized (this.h) {
            num = (Integer) this.g.get(str);
        }
        return num;
    }

    public Set a() {
        HashSet hashSet;
        synchronized (this.h) {
            hashSet = new HashSet(this.g.keySet());
        }
        return hashSet;
    }

    public void a(a3 a3Var, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        boolean b;
        if (initializationStatus == null || initializationStatus == MaxAdapter.InitializationStatus.INITIALIZING) {
            return;
        }
        synchronized (this.h) {
            try {
                b = b(a3Var);
                if (!b) {
                    this.g.put(a3Var.b(), Integer.valueOf(initializationStatus.getCode()));
                    JSONObject jSONObject = new JSONObject();
                    JsonUtils.putString(jSONObject, "class", a3Var.b());
                    JsonUtils.putString(jSONObject, "init_status", String.valueOf(initializationStatus.getCode()));
                    JsonUtils.putLong(jSONObject, "init_time_ms", j);
                    JsonUtils.putString(jSONObject, "error_message", JSONObject.quote(str));
                    this.f.put(jSONObject);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (b) {
            return;
        }
        this.f3434a.a(a3Var);
        this.f3434a.X().processAdapterInitializationPostback(a3Var, j, initializationStatus, str);
        this.f3434a.u().a(initializationStatus, a3Var.b());
    }

    private List a(JSONArray jSONArray, JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new a3(Collections.EMPTY_MAP, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, this.f3434a));
        }
        return arrayList;
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus) {
        synchronized (this.h) {
            this.g.put("com.applovin.mediation.adapters.AppLovinMediationAdapter", Integer.valueOf(initializationStatus.getCode()));
        }
        this.f3434a.u().a(initializationStatus, "com.applovin.mediation.adapters.AppLovinMediationAdapter");
    }
}
