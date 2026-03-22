package com.applovin.impl;

import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class s6 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3538a;
    private boolean b;
    private List c;

    public s6(com.applovin.impl.sdk.k kVar) {
        boolean z;
        this.f3538a = kVar;
        n4 n4Var = n4.G;
        if (!((Boolean) kVar.a(n4Var, Boolean.FALSE)).booleanValue() && !x.a(com.applovin.impl.sdk.k.o()).a("applovin.sdk.is_test_environment") && !AppLovinSdkUtils.isEmulator() && !kVar.B().R()) {
            z = false;
        } else {
            z = true;
        }
        this.b = z;
        kVar.c(n4Var);
    }

    private void e() {
        com.applovin.impl.sdk.j u = this.f3538a.u();
        if (this.b) {
            u.b(this.c);
        } else {
            u.a(this.c);
        }
    }

    public void a(String str) {
        if (StringUtils.isValidString(str)) {
            a(Collections.singletonList(str));
        } else {
            a((List) null);
        }
    }

    public List b() {
        return this.c;
    }

    public boolean c() {
        return this.b;
    }

    public boolean d() {
        List list = this.c;
        if (list != null && !list.isEmpty()) {
            return true;
        }
        return false;
    }

    public void a(List list) {
        if (list == null && this.c == null) {
            return;
        }
        if (list == null || !list.equals(this.c)) {
            this.c = list;
            e();
        }
    }

    public void a() {
        this.f3538a.b(n4.G, Boolean.TRUE);
    }

    public void a(JSONObject jSONObject) {
        if (this.b) {
            return;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "test_mode_idfas", new JSONArray());
        com.applovin.impl.sdk.l B = this.f3538a.B();
        boolean R = B.R();
        String a2 = B.f().a();
        l.b E = B.E();
        this.b = R || JsonUtils.containsCaseInsensitiveString(a2, jSONArray) || JsonUtils.containsCaseInsensitiveString(E != null ? E.f3693a : null, jSONArray);
    }
}
