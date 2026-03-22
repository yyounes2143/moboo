package com.applovin.impl;

import android.os.Bundle;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.ads.mediation.mintegral.MintegralConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a3 {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f3020a;
    private final JSONObject b;
    protected final JSONObject d;
    private final Map f;
    private final v4 g;
    protected final v4 h;
    private String i;
    private String j;
    private final Object c = new Object();
    protected final Object e = new Object();

    public a3(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        if (kVar != null) {
            if (jSONObject2 != null) {
                if (jSONObject != null) {
                    this.f3020a = kVar;
                    if (((Boolean) kVar.a(l4.X5)).booleanValue()) {
                        this.g = new v4(jSONObject2);
                        this.h = new v4(jSONObject);
                        this.b = null;
                        this.d = null;
                    } else {
                        this.b = jSONObject2;
                        this.d = jSONObject;
                        this.g = null;
                        this.h = null;
                    }
                    this.f = map;
                    return;
                }
                throw new IllegalArgumentException("No ad object specified");
            }
            throw new IllegalArgumentException("No full response specified");
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    private int j() {
        return a("mute_state", b("mute_state", ((Integer) this.f3020a.a(g3.y7)).intValue()));
    }

    public JSONObject a() {
        JSONObject jSONObject;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a();
        }
        synchronized (this.e) {
            jSONObject = this.d;
        }
        return jSONObject;
    }

    public Boolean b(String str, Boolean bool) {
        Boolean bool2;
        v4 v4Var = this.g;
        if (v4Var != null) {
            return v4Var.a(str, bool);
        }
        synchronized (this.c) {
            bool2 = JsonUtils.getBoolean(this.b, str, bool);
        }
        return bool2;
    }

    public boolean c(String str) {
        boolean has;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a(str);
        }
        synchronized (this.e) {
            has = this.d.has(str);
        }
        return has;
    }

    public boolean d(String str) {
        boolean has;
        v4 v4Var = this.g;
        if (v4Var != null) {
            return v4Var.a(str);
        }
        synchronized (this.c) {
            has = this.b.has(str);
        }
        return has;
    }

    public Object e(String str) {
        Object opt;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.b(str);
        }
        synchronized (this.e) {
            opt = this.d.opt(str);
        }
        return opt;
    }

    public Bundle f() {
        return BundleUtils.getBundle("custom_parameters", new Bundle(), l());
    }

    public JSONObject g() {
        JSONObject jSONObject;
        v4 v4Var = this.g;
        if (v4Var != null) {
            return v4Var.a();
        }
        synchronized (this.c) {
            jSONObject = this.b;
        }
        return jSONObject;
    }

    public String getAdUnitId() {
        return b(MintegralConstants.AD_UNIT_ID, "");
    }

    public String getPlacement() {
        return this.i;
    }

    public long h() {
        return a("init_completion_delay_ms", -1L);
    }

    public Map i() {
        return this.f;
    }

    public String k() {
        return c().split("_")[0];
    }

    public Bundle l() {
        Bundle bundle;
        boolean z;
        if (e("server_parameters") instanceof JSONObject) {
            v4 v4Var = this.h;
            if (v4Var != null) {
                bundle = (Bundle) v4Var.a(new Function() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        Bundle a2;
                        a2 = a3.a((v4) obj);
                        return a2;
                    }
                });
            } else {
                bundle = JsonUtils.toBundle(a("server_parameters", (JSONObject) null));
            }
        } else {
            bundle = new Bundle();
        }
        int j = j();
        if (j != -1) {
            if (j == 2) {
                bundle.putBoolean("is_muted", this.f3020a.n0().isMuted());
            } else {
                if (j == 0) {
                    z = true;
                } else {
                    z = false;
                }
                bundle.putBoolean("is_muted", z);
            }
        }
        if (!bundle.containsKey("amount")) {
            bundle.putLong("amount", b("amount", 0L));
        }
        if (!bundle.containsKey("currency")) {
            bundle.putString("currency", b("currency", ""));
        }
        return bundle;
    }

    public long m() {
        return a("adapter_timeout_ms", ((Long) this.f3020a.a(g3.T6)).longValue());
    }

    public Boolean n() {
        String str = this.f3020a.n0().getExtraParameters().get("huc");
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str);
        }
        if (c("huc")) {
            return a("huc", Boolean.FALSE);
        }
        return b("huc", (Boolean) null);
    }

    public Boolean o() {
        String str = this.f3020a.n0().getExtraParameters().get("dns");
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str);
        }
        if (c("dns")) {
            return a("dns", Boolean.FALSE);
        }
        return b("dns", (Boolean) null);
    }

    public boolean p() {
        return a("is_testing", Boolean.FALSE).booleanValue();
    }

    public boolean q() {
        return a("reinitialize_if_init_fails", Boolean.FALSE).booleanValue();
    }

    public boolean r() {
        return a("run_on_ui_thread", Boolean.TRUE).booleanValue();
    }

    public boolean s() {
        return a("eagerly_initialize", Boolean.TRUE).booleanValue();
    }

    public String toString() {
        return "MediationAdapterSpec{adapterClass='" + b() + "', adapterName='" + c() + "', isTesting=" + p() + AbstractJsonLexerKt.END_OBJ;
    }

    public void f(String str) {
        this.j = str;
    }

    public Boolean a(String str, Boolean bool) {
        Boolean bool2;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a(str, bool);
        }
        synchronized (this.e) {
            bool2 = JsonUtils.getBoolean(this.d, str, bool);
        }
        return bool2;
    }

    public int b(String str, int i) {
        int i2;
        v4 v4Var = this.g;
        if (v4Var != null) {
            return v4Var.a(str, i);
        }
        synchronized (this.c) {
            i2 = JsonUtils.getInt(this.b, str, i);
        }
        return i2;
    }

    public void c(String str, int i) {
        v4 v4Var = this.h;
        if (v4Var != null) {
            v4Var.b(str, i);
            return;
        }
        synchronized (this.e) {
            JsonUtils.putInt(this.d, str, i);
        }
    }

    public String d() {
        if (c("consent_string")) {
            return a("consent_string", (String) null);
        }
        if (d("consent_string")) {
            return b("consent_string", (String) null);
        }
        return this.f3020a.r0().j();
    }

    public String e() {
        return this.j;
    }

    public void g(String str) {
        this.i = str;
    }

    public float a(String str, float f) {
        float f2;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a(str, f);
        }
        synchronized (this.e) {
            f2 = JsonUtils.getFloat(this.d, str, f);
        }
        return f2;
    }

    public JSONArray b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        v4 v4Var = this.g;
        if (v4Var != null) {
            return v4Var.a(str, jSONArray);
        }
        synchronized (this.c) {
            jSONArray2 = JsonUtils.getJSONArray(this.b, str, jSONArray);
        }
        return jSONArray2;
    }

    public void c(String str, long j) {
        v4 v4Var = this.h;
        if (v4Var != null) {
            v4Var.b(str, j);
            return;
        }
        synchronized (this.e) {
            JsonUtils.putLong(this.d, str, j);
        }
    }

    public int a(String str, int i) {
        int i2;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a(str, i);
        }
        synchronized (this.e) {
            i2 = JsonUtils.getInt(this.d, str, i);
        }
        return i2;
    }

    public long b(String str, long j) {
        long j2;
        v4 v4Var = this.g;
        if (v4Var != null) {
            return v4Var.a(str, j);
        }
        synchronized (this.c) {
            j2 = JsonUtils.getLong(this.b, str, j);
        }
        return j2;
    }

    public void c(String str, String str2) {
        v4 v4Var = this.h;
        if (v4Var != null) {
            v4Var.b(str, str2);
            return;
        }
        synchronized (this.e) {
            JsonUtils.putString(this.d, str, str2);
        }
    }

    public JSONArray a(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a(str, jSONArray);
        }
        synchronized (this.e) {
            jSONArray2 = JsonUtils.getJSONArray(this.d, str, jSONArray);
        }
        return jSONArray2;
    }

    public String b(String str, String str2) {
        String string;
        v4 v4Var = this.g;
        if (v4Var != null) {
            return v4Var.a(str, str2);
        }
        synchronized (this.c) {
            string = JsonUtils.getString(this.b, str, str2);
        }
        return string;
    }

    public String c() {
        return a("name", (String) null);
    }

    public JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a(str, jSONObject);
        }
        synchronized (this.e) {
            jSONObject2 = JsonUtils.getJSONObject(this.d, str, jSONObject);
        }
        return jSONObject2;
    }

    public String b() {
        return a("class", (String) null);
    }

    public List b(String str) {
        List optList;
        List optList2;
        if (str != null) {
            v4 v4Var = this.g;
            if (v4Var != null) {
                optList = v4Var.b(str, Collections.EMPTY_LIST);
            } else {
                optList = JsonUtils.optList(b(str, new JSONArray()), Collections.EMPTY_LIST);
            }
            v4 v4Var2 = this.h;
            if (v4Var2 != null) {
                optList2 = v4Var2.b(str, Collections.EMPTY_LIST);
            } else {
                optList2 = JsonUtils.optList(a(str, new JSONArray()), Collections.EMPTY_LIST);
            }
            ArrayList arrayList = new ArrayList(optList.size() + optList2.size());
            arrayList.addAll(optList);
            arrayList.addAll(optList2);
            return arrayList;
        }
        throw new IllegalArgumentException("No key specified");
    }

    public long a(String str, long j) {
        long j2;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a(str, j);
        }
        synchronized (this.e) {
            j2 = JsonUtils.getLong(this.d, str, j);
        }
        return j2;
    }

    public String a(String str, String str2) {
        String string;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return v4Var.a(str, str2);
        }
        synchronized (this.e) {
            string = JsonUtils.getString(this.d, str, str2);
        }
        return string;
    }

    public void a(String str, Object obj) {
        v4 v4Var = this.h;
        if (v4Var != null) {
            v4Var.a(str, obj);
            return;
        }
        synchronized (this.e) {
            JsonUtils.putObject(this.d, str, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bundle a(v4 v4Var) {
        return JsonUtils.toBundle(v4Var.a("server_parameters", (JSONObject) null));
    }

    public String a(String str) {
        String a2 = a(str, "");
        return StringUtils.isValidString(a2) ? a2 : b(str, "");
    }
}
