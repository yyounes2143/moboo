package com.appsflyer.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFi1zSDK {
    @Nullable
    public final AFh1aSDK getCurrencyIso4217Code;
    @Nullable
    public AFi1xSDK getMediationNetwork;
    @Nullable
    public final AFi1uSDK getMonetizationNetwork;

    public AFi1zSDK(@NotNull JSONObject jSONObject) {
        this.getMediationNetwork = AFAdRevenueData(jSONObject);
        this.getCurrencyIso4217Code = getMediationNetwork(jSONObject);
        this.getMonetizationNetwork = getCurrencyIso4217Code(jSONObject);
    }

    private static AFi1xSDK AFAdRevenueData(JSONObject jSONObject) {
        Object m438constructorimpl;
        AFi1xSDK aFi1xSDK;
        List emptyList;
        try {
            Result.Companion companion = Result.Companion;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "r_debugger");
            if (AFAdRevenueData != null) {
                long j = AFAdRevenueData.getLong("ttl");
                int i = AFAdRevenueData.getInt("counter");
                String optString = AFAdRevenueData.optString("app_ver", "");
                String optString2 = AFAdRevenueData.optString("sdk_ver", "");
                float optDouble = (float) AFAdRevenueData.optDouble("ratio", 1.0d);
                JSONArray optJSONArray = AFAdRevenueData.optJSONArray("tags");
                if (optJSONArray != null) {
                    emptyList = new ArrayList();
                    int length = optJSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        emptyList.add(optJSONArray.getString(i2));
                    }
                } else {
                    emptyList = CollectionsKt.emptyList();
                }
                aFi1xSDK = new AFi1xSDK(j, optDouble, emptyList, i, optString, optString2);
            } else {
                aFi1xSDK = null;
            }
            m438constructorimpl = Result.m438constructorimpl(aFi1xSDK);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m444isFailureimpl(m438constructorimpl) ? null : m438constructorimpl;
    }

    private static AFi1uSDK getCurrencyIso4217Code(JSONObject jSONObject) {
        Object m438constructorimpl;
        AFi1uSDK aFi1uSDK;
        AFi1uSDK aFi1uSDK2 = null;
        try {
            Result.Companion companion = Result.Companion;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "meta_data");
            if (AFAdRevenueData != null) {
                aFi1uSDK = new AFi1uSDK(AFAdRevenueData.optDouble("send_rate", 1.0d));
            } else {
                aFi1uSDK = null;
            }
            m438constructorimpl = Result.m438constructorimpl(aFi1uSDK);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        if (!Result.m444isFailureimpl(m438constructorimpl)) {
            aFi1uSDK2 = m438constructorimpl;
        }
        return aFi1uSDK2;
    }

    private static AFh1aSDK getMediationNetwork(JSONObject jSONObject) {
        Object m438constructorimpl;
        AFh1aSDK aFh1aSDK;
        AFh1aSDK aFh1aSDK2 = null;
        try {
            Result.Companion companion = Result.Companion;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "exc_mngr");
            if (AFAdRevenueData != null) {
                aFh1aSDK = new AFh1aSDK(AFAdRevenueData.getString("sdk_ver"), AFAdRevenueData.optInt("min", -1), AFAdRevenueData.optInt("expire", -1), AFAdRevenueData.optLong("ttl", -1L));
            } else {
                aFh1aSDK = null;
            }
            m438constructorimpl = Result.m438constructorimpl(aFh1aSDK);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        if (!Result.m444isFailureimpl(m438constructorimpl)) {
            aFh1aSDK2 = m438constructorimpl;
        }
        return aFh1aSDK2;
    }

    public final boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(AFi1zSDK.class, cls)) {
            return false;
        }
        AFi1zSDK aFi1zSDK = (AFi1zSDK) obj;
        if (Intrinsics.areEqual(this.getCurrencyIso4217Code, aFi1zSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.getMonetizationNetwork, aFi1zSDK.getMonetizationNetwork) && Intrinsics.areEqual(this.getMediationNetwork, aFi1zSDK.getMediationNetwork)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        AFh1aSDK aFh1aSDK = this.getCurrencyIso4217Code;
        int i3 = 0;
        if (aFh1aSDK != null) {
            i = aFh1aSDK.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        AFi1uSDK aFi1uSDK = this.getMonetizationNetwork;
        if (aFi1uSDK != null) {
            i2 = aFi1uSDK.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        AFi1xSDK aFi1xSDK = this.getMediationNetwork;
        if (aFi1xSDK != null) {
            i3 = aFi1xSDK.hashCode();
        }
        return i5 + i3;
    }

    private static JSONObject AFAdRevenueData(JSONObject jSONObject, String str) throws JSONException, NullPointerException {
        JSONObject optJSONObject;
        if (!jSONObject.has(str) || (optJSONObject = jSONObject.getJSONArray(str).optJSONObject(0).optJSONObject("data")) == null) {
            return null;
        }
        return optJSONObject.optJSONObject("v1");
    }
}
