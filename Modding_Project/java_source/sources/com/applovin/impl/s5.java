package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.google.android.gms.ads.AdError;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class s5 extends w4 implements g2 {
    private final JSONObject g;
    private final t h;
    private final AppLovinAdLoadListener i;
    private final boolean j;

    public s5(JSONObject jSONObject, t tVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        this(jSONObject, tVar, false, appLovinAdLoadListener, kVar);
    }

    private void a(JSONObject jSONObject) {
        String string = JsonUtils.getString(jSONObject, "type", AdError.UNDEFINED_DOMAIN);
        if ("applovin".equalsIgnoreCase(string)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Starting task for AppLovin ad...");
            }
            this.f3803a.q0().a(new x5(jSONObject, this.g, this, this.f3803a));
        } else if ("vast".equalsIgnoreCase(string)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Starting task for VAST ad...");
            }
            this.f3803a.q0().a(v5.a(jSONObject, this.g, this, this.f3803a));
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.b;
                oVar.b(str, "Unable to process ad of unknown type: " + string);
            }
            failedToReceiveAdV2(new AppLovinError(AppLovinErrorCodes.INVALID_RESPONSE, "Unknown ad type: " + string));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.i;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(appLovinAd);
        }
        if (!this.j && (appLovinAd instanceof com.applovin.impl.sdk.ad.b)) {
            this.f3803a.g().a(y1.n, (com.applovin.impl.sdk.ad.b) appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        failedToReceiveAdV2(new AppLovinError(i, ""));
    }

    @Override // com.applovin.impl.g2
    public void failedToReceiveAdV2(AppLovinError appLovinError) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.i;
        if (appLovinAdLoadListener != null) {
            if (appLovinAdLoadListener instanceof g2) {
                ((g2) appLovinAdLoadListener).failedToReceiveAdV2(appLovinError);
            } else {
                appLovinAdLoadListener.failedToReceiveAd(appLovinError.getCode());
            }
            if (!this.j) {
                this.f3803a.g().a(y1.o, this.h, appLovinError);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.g, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray());
        if (jSONArray.length() > 0) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Processing ad...");
            }
            a(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()));
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.c.k(this.b, "No ads were returned from the server");
        }
        z6.a(this.h.e(), this.h.d(), this.g, this.f3803a);
        failedToReceiveAdV2(AppLovinError.NO_FILL);
    }

    public s5(JSONObject jSONObject, t tVar, boolean z, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskProcessAdResponse", kVar);
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (tVar != null) {
            this.g = jSONObject;
            this.h = tVar;
            this.i = appLovinAdLoadListener;
            this.j = z;
            return;
        }
        throw new IllegalArgumentException("No zone specified");
    }
}
