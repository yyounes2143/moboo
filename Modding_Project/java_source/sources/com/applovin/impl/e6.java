package com.applovin.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.i4;
import com.applovin.impl.m0;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class e6 extends w4 {
    public e6(String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
    }

    public abstract void a(JSONObject jSONObject);

    public void a(JSONObject jSONObject, m0.e eVar) {
        Map c = n0.c(this.f3803a);
        if (((Boolean) this.f3803a.a(l4.f5)).booleanValue() || ((Boolean) this.f3803a.a(l4.Y4)).booleanValue()) {
            JsonUtils.putAll(jSONObject, c);
            c = null;
        }
        a aVar = new a(com.applovin.impl.sdk.network.a.a(this.f3803a).b(n0.b(f(), this.f3803a)).a(n0.a(f(), this.f3803a)).b(c).a(jSONObject).c(ShareTarget.METHOD_POST).b(((Boolean) this.f3803a.a(l4.o5)).booleanValue()).a((Object) new JSONObject()).a(g()).a(i4.a.a(((Integer) this.f3803a.a(l4.X4)).intValue())).a(), this.f3803a, eVar);
        aVar.c(l4.r0);
        aVar.b(l4.s0);
        this.f3803a.q0().a(aVar);
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        String e = this.f3803a.w0().e();
        if (((Boolean) this.f3803a.a(l4.r3)).booleanValue() && StringUtils.isValidString(e)) {
            JsonUtils.putString(jSONObject, "cuid", e);
        }
        if (((Boolean) this.f3803a.a(l4.t3)).booleanValue()) {
            JsonUtils.putString(jSONObject, "compass_random_token", this.f3803a.v());
        }
        if (((Boolean) this.f3803a.a(l4.v3)).booleanValue()) {
            JsonUtils.putString(jSONObject, "applovin_random_token", this.f3803a.h0());
        }
        a(jSONObject);
        return jSONObject;
    }

    public abstract String f();

    public abstract int g();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends z5 {
        final /* synthetic */ m0.e m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, m0.e eVar) {
            super(aVar, kVar);
            this.m = eVar;
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, JSONObject jSONObject, int i) {
            this.m.a(str, jSONObject, i);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            this.m.a(str, i, str2, jSONObject);
        }
    }

    public void a(int i) {
        n0.a(i, this.f3803a);
    }
}
