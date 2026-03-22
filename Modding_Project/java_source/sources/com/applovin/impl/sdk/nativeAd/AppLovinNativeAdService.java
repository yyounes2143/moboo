package com.applovin.impl.sdk.nativeAd;

import android.text.TextUtils;
import com.applovin.impl.j;
import com.applovin.impl.l2;
import com.applovin.impl.l5;
import com.applovin.impl.n0;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.u5;
import com.applovin.impl.w4;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinNativeAdService {
    private static final String TAG = "AppLovinNativeAdService";
    private final o logger;
    private final k sdk;

    public AppLovinNativeAdService(k kVar) {
        this.sdk = kVar;
        this.logger = kVar.O();
    }

    public void loadNextAdForAdToken(String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        String str2;
        if (str != null) {
            str2 = str.trim();
        } else {
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            o.h(TAG, "Empty ad token");
            l2.b(appLovinNativeAdLoadListener, new AppLovinError(-8, "Empty ad token"));
            return;
        }
        j jVar = new j(str2, this.sdk);
        if (jVar.c() == j.a.REGULAR) {
            if (o.a()) {
                this.logger.a(TAG, "Loading next ad for token: " + jVar);
            }
            this.sdk.q0().a((w4) new l5(jVar, appLovinNativeAdLoadListener, this.sdk), r5.b.CORE);
        } else if (jVar.c() == j.a.AD_RESPONSE_JSON) {
            JSONObject a2 = jVar.a();
            if (a2 != null) {
                n0.c(a2, this.sdk);
                n0.b(a2, this.sdk);
                n0.a(a2, this.sdk);
                if (JsonUtils.getJSONArray(a2, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray()).length() > 0) {
                    if (o.a()) {
                        this.logger.a(TAG, "Rendering ad for token: " + jVar);
                    }
                    this.sdk.q0().a((w4) new u5(a2, appLovinNativeAdLoadListener, this.sdk), r5.b.CORE);
                    return;
                }
                if (o.a()) {
                    this.logger.b(TAG, "No ad returned from the server for token: " + jVar);
                }
                l2.b(appLovinNativeAdLoadListener, AppLovinError.NO_FILL);
                return;
            }
            String str3 = "Unable to retrieve ad response JSON from token: " + jVar.b();
            AppLovinError appLovinError = new AppLovinError(-8, str3);
            o.h(TAG, str3);
            l2.b(appLovinNativeAdLoadListener, appLovinError);
        } else {
            AppLovinError appLovinError2 = new AppLovinError(-8, "Invalid token type");
            o.h(TAG, "Invalid token type");
            l2.b(appLovinNativeAdLoadListener, appLovinError2);
        }
    }
}
