package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class PurchaseHistoryRecord {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public PurchaseHistoryRecord(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f2383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f2382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new JSONObject(str);
    }

    public final ArrayList Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ArrayList arrayList = new ArrayList();
        if (this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.has("productIds")) {
            JSONArray optJSONArray = this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
        } else if (this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
            arrayList.add(this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID));
        }
        return arrayList;
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optInt(FirebaseAnalytics.Param.QUANTITY, 1);
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return jSONObject.optString(BidResponsed.KEY_TOKEN, jSONObject.optString("purchaseToken"));
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optLong("purchaseTime");
    }

    @NonNull
    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("developerPayload");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchaseHistoryRecord)) {
            return false;
        }
        PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) obj;
        if (TextUtils.equals(this.f2383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, purchaseHistoryRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && TextUtils.equals(this.f2382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, purchaseHistoryRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f2383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NonNull
    public String toString() {
        return "PurchaseHistoryRecord. Json: ".concat(String.valueOf(this.f2383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }
}
