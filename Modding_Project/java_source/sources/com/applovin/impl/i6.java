package com.applovin.impl;

import com.applovin.impl.m0;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Collections;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class i6 extends e6 {
    public i6(String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
    }

    private b4 b(JSONObject jSONObject) {
        Map<String, String> map;
        String str;
        JSONObject jSONObject2 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject, "results", new JSONArray()), 0, new JSONObject());
        n0.c(jSONObject2, this.f3803a);
        n0.b(jSONObject, this.f3803a);
        n0.a(jSONObject, this.f3803a);
        try {
            map = JsonUtils.toStringMap((JSONObject) jSONObject2.get("params"));
        } catch (Throwable unused) {
            map = Collections.EMPTY_MAP;
        }
        try {
            str = jSONObject2.getString("result");
        } catch (Throwable unused2) {
            str = "network_timeout";
        }
        return b4.a(str, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject) {
        b4 b = b(jSONObject);
        a(b);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Pending reward handled: " + b);
        }
    }

    public abstract void a(b4 b4Var);

    @Override // com.applovin.impl.e6
    public int g() {
        return ((Integer) this.f3803a.a(l4.a1)).intValue();
    }

    public abstract boolean h();

    @Override // java.lang.Runnable
    public void run() {
        a(e(), new a());
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements m0.e {
        public a() {
        }

        @Override // com.applovin.impl.m0.e
        public void a(String str, JSONObject jSONObject, int i) {
            if (i6.this.h()) {
                com.applovin.impl.sdk.o oVar = i6.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    i6 i6Var = i6.this;
                    com.applovin.impl.sdk.o oVar2 = i6Var.c;
                    String str2 = i6Var.b;
                    oVar2.b(str2, "Reward validation succeeded with code " + i + " but task was cancelled already");
                }
                com.applovin.impl.sdk.o oVar3 = i6.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    i6 i6Var2 = i6.this;
                    com.applovin.impl.sdk.o oVar4 = i6Var2.c;
                    String str3 = i6Var2.b;
                    oVar4.b(str3, "Response: " + jSONObject);
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.o oVar5 = i6.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                i6 i6Var3 = i6.this;
                com.applovin.impl.sdk.o oVar6 = i6Var3.c;
                String str4 = i6Var3.b;
                oVar6.a(str4, "Reward validation succeeded with code " + i + " and response: " + jSONObject);
            }
            i6.this.c(jSONObject);
        }

        @Override // com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            if (i6.this.h()) {
                com.applovin.impl.sdk.o oVar = i6.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    i6 i6Var = i6.this;
                    com.applovin.impl.sdk.o oVar2 = i6Var.c;
                    String str3 = i6Var.b;
                    oVar2.b(str3, "Reward validation failed with error code " + i + " but task was cancelled already");
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.o oVar3 = i6.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                i6 i6Var2 = i6.this;
                com.applovin.impl.sdk.o oVar4 = i6Var2.c;
                String str4 = i6Var2.b;
                oVar4.b(str4, "Reward validation failed with code " + i + " and error: " + str2);
            }
            i6.this.a(i);
        }
    }
}
