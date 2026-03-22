package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class e5 extends w4 {
    private final com.applovin.impl.sdk.network.e g;
    private final AppLovinPostbackListener h;
    private final r5.b i;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements AppLovinPostbackListener {
        public a() {
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackFailure(String str, int i) {
            e5.this.e();
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackSuccess(String str) {
            if (e5.this.h != null) {
                e5.this.h.onPostbackSuccess(e5.this.g.f());
            }
        }
    }

    public e5(com.applovin.impl.sdk.network.e eVar, r5.b bVar, com.applovin.impl.sdk.k kVar, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", kVar);
        if (eVar != null) {
            this.g = eVar;
            this.h = appLovinPostbackListener;
            this.i = bVar;
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        b bVar = new b(this.g, b());
        bVar.a(this.i);
        b().q0().a(bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!StringUtils.isValidString(this.g.f())) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.d(this.b, "Requested URL is not valid; nothing to do...");
            }
            AppLovinPostbackListener appLovinPostbackListener = this.h;
            if (appLovinPostbackListener != null) {
                appLovinPostbackListener.onPostbackFailure(this.g.f(), AppLovinErrorCodes.INVALID_URL);
            }
        } else if (this.g.u()) {
            b().x0().a(this.g, new a());
        } else {
            e();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b extends z5 {
        final String m;

        public b(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
            this.m = e5.this.g.f();
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, Object obj, int i) {
            if (obj instanceof String) {
                for (String str2 : this.f3803a.c(l4.m0)) {
                    if (str2.startsWith(str2)) {
                        String str3 = (String) obj;
                        if (TextUtils.isEmpty(str3)) {
                            continue;
                        } else {
                            try {
                                JSONObject jSONObject = new JSONObject(str3);
                                n0.c(jSONObject, this.f3803a);
                                n0.b(jSONObject, this.f3803a);
                                n0.a(jSONObject, this.f3803a);
                                break;
                            } catch (JSONException unused) {
                                continue;
                            }
                        }
                    }
                }
            }
            if (e5.this.h != null) {
                e5.this.h.onPostbackSuccess(this.m);
            }
            if (e5.this.g.t()) {
                this.f3803a.u().a(e5.this.g.s(), this.m, i, obj, null, true);
            }
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, Object obj) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str3 = this.b;
                oVar.b(str3, "Failed to dispatch postback. Error code: " + i + " URL: " + this.m);
            }
            if (e5.this.h != null) {
                e5.this.h.onPostbackFailure(this.m, i);
            }
            if (e5.this.g.t()) {
                this.f3803a.u().a(e5.this.g.s(), this.m, i, obj, str2, false);
            }
        }
    }
}
