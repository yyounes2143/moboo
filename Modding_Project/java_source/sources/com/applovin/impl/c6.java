package com.applovin.impl;

import com.applovin.impl.m0;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class c6 extends e6 {
    public c6(String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
    }

    private JSONObject a(b4 b4Var) {
        JSONObject e = e();
        JsonUtils.putString(e, "result", b4Var.b());
        Map a2 = b4Var.a();
        if (a2 != null) {
            JsonUtils.putJSONObject(e, "params", new JSONObject(a2));
        }
        return e;
    }

    public abstract void b(JSONObject jSONObject);

    @Override // com.applovin.impl.e6
    public int g() {
        return ((Integer) this.f3803a.a(l4.b1)).intValue();
    }

    public abstract b4 h();

    public abstract void i();

    @Override // java.lang.Runnable
    public void run() {
        b4 h = h();
        if (h != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.b;
                oVar.a(str, "Reporting pending reward: " + h + "...");
            }
            a(a(h), new a());
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.c.b(this.b, "Pending reward not found");
        }
        i();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements m0.e {
        public a() {
        }

        @Override // com.applovin.impl.m0.e
        public void a(String str, JSONObject jSONObject, int i) {
            c6.this.b(jSONObject);
        }

        @Override // com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            c6.this.a(i);
        }
    }
}
