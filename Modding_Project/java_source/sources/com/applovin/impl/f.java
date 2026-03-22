package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.y1;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class f extends z1 {
    public f(com.applovin.impl.sdk.k kVar) {
        super(kVar, y1.b.AD);
    }

    public void a(y1 y1Var, com.applovin.impl.sdk.ad.b bVar) {
        a(y1Var, bVar, new HashMap());
    }

    public void a(y1 y1Var, com.applovin.impl.sdk.ad.b bVar, Map map) {
        a(y1Var, bVar != null ? bVar.getAdZone() : null, bVar, null, map);
    }

    public void a(y1 y1Var, t tVar, AppLovinError appLovinError) {
        a(y1Var, tVar, null, appLovinError, new HashMap());
    }

    private void a(y1 y1Var, t tVar, com.applovin.impl.sdk.ad.b bVar, AppLovinError appLovinError, Map map) {
        if (((Boolean) this.f3826a.a(l4.H)).booleanValue() && this.f3826a.G0()) {
            return;
        }
        if (bVar != null) {
            map.putAll(a2.a((AppLovinAdImpl) bVar));
        } else if (tVar != null) {
            CollectionUtils.putStringIfValid("ad_zone_id", tVar.e(), map);
            MaxAdFormat d = tVar.d();
            if (d != null) {
                CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, d.getLabel(), map);
            }
        }
        AppLovinAdSize a2 = a(tVar, bVar);
        if (a2 != null) {
            CollectionUtils.putStringIfValid("ad_size", a2.getLabel(), map);
        }
        if (appLovinError != null) {
            CollectionUtils.putStringIfValid("error_message", appLovinError.getMessage(), map);
            CollectionUtils.putStringIfValid("error_code", String.valueOf(appLovinError.getCode()), map);
        }
        d(y1Var, map);
    }

    private AppLovinAdSize a(t tVar, com.applovin.impl.sdk.ad.b bVar) {
        AppLovinAdSize f = tVar != null ? tVar.f() : null;
        if (f != null) {
            return f;
        }
        if (bVar != null) {
            return bVar.getSize();
        }
        return null;
    }
}
