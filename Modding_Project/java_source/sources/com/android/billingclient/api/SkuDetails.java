package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes3.dex */
public class SkuDetails {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SkuDetails(@NonNull String str) throws JSONException {
        this.f2399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID))) {
            if (!TextUtils.isEmpty(jSONObject.optString("type"))) {
                return;
            }
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("skuDetailsToken");
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("serializedDocid");
    }

    @NonNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("packageName");
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        String optString = this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("offerIdToken");
        if (optString.isEmpty()) {
            return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("offer_id_token");
        }
        return optString;
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("offer_id");
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optInt(CampaignEx.JSON_KEY_OFFER_TYPE);
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("type");
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString(CampaignEx.JSON_KEY_TITLE);
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("price");
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2398Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("description");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuDetails)) {
            return false;
        }
        return TextUtils.equals(this.f2399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ((SkuDetails) obj).f2399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public int hashCode() {
        return this.f2399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NonNull
    public String toString() {
        return "SkuDetails: ".concat(String.valueOf(this.f2399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }
}
