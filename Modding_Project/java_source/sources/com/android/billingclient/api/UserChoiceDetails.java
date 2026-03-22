package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@zzk
/* loaded from: classes3.dex */
public final class UserChoiceDetails {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Product> f2404Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f2405Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2406Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @zzk
    /* loaded from: classes3.dex */
    public static class Product {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @NonNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Product)) {
                return false;
            }
            Product product = (Product) obj;
            if (this.f2409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(product.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && this.f2408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(product.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && Objects.equals(this.f2407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, product.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f2409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @NonNull
        public String toString() {
            return String.format("{id: %s, type: %s, offer token: %s}", this.f2409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public Product(JSONObject jSONObject) {
            this.f2409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
            this.f2408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("productType");
            String optString = jSONObject.optString("offerToken");
            this.f2407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true == optString.isEmpty() ? null : optString;
        }
    }

    public UserChoiceDetails(String str) throws JSONException {
        this.f2406Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f2405Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
        this.f2404Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optJSONArray("products"));
    }

    public static List<Product> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new Product(optJSONObject));
                }
            }
        }
        return arrayList;
    }
}
