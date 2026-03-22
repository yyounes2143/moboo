package com.applovin.impl;

import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class p5 extends w4 {
    private final String g;
    private final List h;
    private final a3 i;
    private final Map j;
    private final Map k;
    private final Map l;
    private final MaxError m;

    public p5(String str, List list, Map map, Map map2, MaxError maxError, a3 a3Var, com.applovin.impl.sdk.k kVar, boolean z) {
        super("TaskFireMediationPostbacks", kVar);
        MaxError maxErrorImpl;
        this.g = str + "_urls";
        this.h = list;
        this.j = z6.a(map, kVar);
        this.k = map2 == null ? new HashMap() : map2;
        if (maxError != null) {
            maxErrorImpl = maxError;
        } else {
            maxErrorImpl = new MaxErrorImpl(-1);
        }
        this.m = maxErrorImpl;
        this.i = a3Var;
        HashMap hashMap = new HashMap(7);
        hashMap.put("AppLovin-Event-Type", str);
        if (z && a3Var != null) {
            hashMap.put("AppLovin-Ad-Network-Name", a3Var.c());
        }
        if (a3Var instanceof q2) {
            q2 q2Var = (q2) a3Var;
            hashMap.put("AppLovin-Ad-Unit-Id", q2Var.getAdUnitId());
            hashMap.put("AppLovin-Ad-Format", q2Var.getFormat().getLabel());
            if (z) {
                hashMap.put("AppLovin-Third-Party-Ad-Placement-Id", q2Var.P());
            }
        }
        if (maxError != null) {
            hashMap.put("AppLovin-Error-Code", String.valueOf(maxError.getCode()));
            hashMap.put("AppLovin-Error-Message", maxError.getMessage());
        }
        this.l = hashMap;
    }

    private void a(String str, Map map) {
        b().e0().e(com.applovin.impl.sdk.network.d.b().d(str).c(ShareTarget.METHOD_POST).a(this.l).a(false).c(map).c(((Boolean) this.f3803a.a(g3.R7)).booleanValue()).a());
    }

    private String b(String str, Map map) {
        for (String str2 : map.keySet()) {
            str = str.replace(str2, StringUtils.emptyIfNull((String) map.get(str2)));
        }
        return str;
    }

    private Map e() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) this.f3803a.a(g3.R6)));
        } catch (JSONException unused) {
            return Collections.EMPTY_MAP;
        }
    }

    private List f() {
        List list = this.h;
        if (list != null) {
            return list;
        }
        a3 a3Var = this.i;
        if (a3Var != null) {
            return a3Var.b(this.g);
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> f = f();
        if (!CollectionUtils.isEmpty(f)) {
            Map e = e();
            for (String str : f) {
                Uri parse = Uri.parse(a(b(str, this.j), this.m));
                Uri.Builder clearQuery = parse.buildUpon().clearQuery();
                HashMap hashMap = new HashMap(this.k);
                for (String str2 : parse.getQueryParameterNames()) {
                    String queryParameter = parse.getQueryParameter(str2);
                    if (e.containsKey(queryParameter)) {
                        a3 a3Var = this.i;
                        if (a3Var != null) {
                            hashMap.put(str2, a3Var.a((String) e.get(queryParameter)));
                        }
                    } else {
                        clearQuery.appendQueryParameter(str2, queryParameter);
                    }
                }
                hashMap.putAll(this.f3803a.B().e());
                a(clearQuery.build().toString(), hashMap);
            }
        }
    }

    private String a(String str, MaxError maxError) {
        int i;
        String str2;
        if (maxError instanceof MaxAdapterError) {
            MaxAdapterError maxAdapterError = (MaxAdapterError) maxError;
            i = maxAdapterError.getMediatedNetworkErrorCode();
            str2 = maxAdapterError.getMediatedNetworkErrorMessage();
        } else {
            i = 0;
            str2 = "";
        }
        return str.replace("{ERROR_CODE}", String.valueOf(maxError.getCode())).replace("{ERROR_MESSAGE}", StringUtils.encodeUriString(maxError.getMessage())).replace("{THIRD_PARTY_SDK_ERROR_CODE}", String.valueOf(i)).replace("{THIRD_PARTY_SDK_ERROR_MESSAGE}", StringUtils.encodeUriString(str2));
    }
}
