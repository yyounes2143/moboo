package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class b3 extends n0 {
    private static final String[] e = {com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "settings", "auto_init_adapters", "test_mode_idfas", "test_mode_auto_init_adapters", "ad_unit_signal_providers"};
    private static final String[] f = {com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "settings", "signal_providers", "ad_unit_signal_providers"};

    public static String a(com.applovin.impl.sdk.k kVar) {
        return n0.a((String) kVar.a(g3.M6), "1.0/mediate", kVar);
    }

    public static String b(com.applovin.impl.sdk.k kVar) {
        return n0.a((String) kVar.a(g3.L6), "1.0/mediate", kVar);
    }

    public static void d(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (JsonUtils.valueExists(jSONObject, "ad_unit_signal_providers")) {
            d5.a(jSONObject, kVar);
        }
    }

    public static void e(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject.length() == 0) {
            return;
        }
        if (!JsonUtils.valueExists(jSONObject, "auto_init_adapters") && !JsonUtils.valueExists(jSONObject, "test_mode_auto_init_adapters")) {
            kVar.c(n4.E);
            return;
        }
        JSONObject shallowCopy = JsonUtils.shallowCopy(jSONObject);
        JsonUtils.removeObjectsForKeys(shallowCopy, f);
        kVar.b(n4.E, shallowCopy.toString());
    }

    public static void f(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (JsonUtils.valueExists(jSONObject, "signal_providers")) {
            JSONObject shallowCopy = JsonUtils.shallowCopy(jSONObject);
            JsonUtils.removeObjectsForKeys(shallowCopy, e);
            kVar.b(n4.D, shallowCopy.toString());
            d5.a(shallowCopy);
        }
    }

    public static void g(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (JsonUtils.valueExists(jSONObject, "ad_unit_signal_providers") && JsonUtils.valueExists(jSONObject, "signal_providers")) {
            try {
                HashSet hashSet = new HashSet();
                JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
                for (int i = 0; i < jSONArray.length(); i++) {
                    hashSet.add(JsonUtils.getString(jSONArray.getJSONObject(i), "name", null));
                }
                HashSet hashSet2 = new HashSet();
                JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "ad_unit_signal_providers", (JSONObject) null);
                for (String str : JsonUtils.toList(jSONObject2.names())) {
                    hashSet2.addAll(JsonUtils.getList(jSONObject2, str, null));
                }
                if (!hashSet.equals(hashSet2)) {
                    Set differenceSet = CollectionUtils.getDifferenceSet(hashSet, hashSet2);
                    com.applovin.impl.sdk.o.h("MediationConnectionUtils", "\"signal_providers\" contains extra network(s): " + differenceSet);
                    Set differenceSet2 = CollectionUtils.getDifferenceSet(hashSet2, hashSet);
                    com.applovin.impl.sdk.o.h("MediationConnectionUtils", "\"ad_unit_signal_providers\" contains extra network(s): " + differenceSet2);
                    kVar.E().a(y1.C0, "signalProvidersMismatch", CollectionUtils.hashMap("details", "extraSignalProviderNetworks=" + differenceSet + ",extraAdUnitSignalProviderNetworks=" + differenceSet2));
                    g1.a("Networks within \"signal_providers\" and \"ad_unit_signal_providers\" do not match.", new Object[0]);
                }
            } catch (JSONException e2) {
                com.applovin.impl.sdk.o.c("MediationConnectionUtils", "Failed to parse JSON", e2);
                kVar.E().a("MediationConnectionUtils", "verifyBidderNetworksMatchFromJson", e2);
                g1.a((Throwable) e2, "Failed to parse JSON in verifyBidderNetworksMatchFromJson", new Object[0]);
            }
        }
    }

    public static String h(com.applovin.impl.sdk.k kVar) {
        l4 l4Var;
        String str;
        l4 l4Var2 = g3.U7;
        if (((Boolean) kVar.a(l4Var2)).booleanValue()) {
            l4Var = g3.T7;
        } else {
            l4Var = g3.M6;
        }
        String str2 = (String) kVar.a(l4Var);
        if (((Boolean) kVar.a(l4Var2)).booleanValue()) {
            str = "2.0/mediate_debug";
        } else {
            str = "1.0/mediate_debug";
        }
        return n0.a(str2, str, kVar);
    }

    public static String i(com.applovin.impl.sdk.k kVar) {
        l4 l4Var;
        String str;
        l4 l4Var2 = g3.U7;
        if (((Boolean) kVar.a(l4Var2)).booleanValue()) {
            l4Var = g3.S7;
        } else {
            l4Var = g3.L6;
        }
        String str2 = (String) kVar.a(l4Var);
        if (((Boolean) kVar.a(l4Var2)).booleanValue()) {
            str = "2.0/mediate_debug";
        } else {
            str = "1.0/mediate_debug";
        }
        return n0.a(str2, str, kVar);
    }
}
