package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class Purchase {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @zzj
    /* loaded from: classes3.dex */
    public static final class PendingPurchaseUpdate {
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface PurchaseState {
    }

    public Purchase(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f2380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f2379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new JSONObject(str);
    }

    public final ArrayList Wwwwwwwwwwwwwwwwwwwwwwwww() {
        ArrayList arrayList = new ArrayList();
        if (this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.has("productIds")) {
            JSONArray optJSONArray = this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
        } else if (this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
            arrayList.add(this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID));
        }
        return arrayList;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optBoolean("acknowledged", true);
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return jSONObject.optString(BidResponsed.KEY_TOKEN, jSONObject.optString("purchaseToken"));
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optLong("purchaseTime");
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optInt("purchaseState", 1) != 4) {
            return 1;
        }
        return 2;
    }

    @NonNull
    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String optString = this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("orderId");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        return optString;
    }

    @Nullable
    public AccountIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = this.f2378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        String optString = jSONObject.optString("obfuscatedAccountId");
        String optString2 = jSONObject.optString("obfuscatedProfileId");
        if (optString == null && optString2 == null) {
            return null;
        }
        return new AccountIdentifiers(optString, optString2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        if (TextUtils.equals(this.f2380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, purchase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && TextUtils.equals(this.f2379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, purchase.Wwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f2380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NonNull
    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f2380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }
}
