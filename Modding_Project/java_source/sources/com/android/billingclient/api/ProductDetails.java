package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.entity.CampaignEx;
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
public final class ProductDetails {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List f2335Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List f2336Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2337Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2338Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2339Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2340Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2341Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2342Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f2344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @zzi
    /* loaded from: classes3.dex */
    public static final class InstallmentPlanDetails {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f2346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f2347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public InstallmentPlanDetails(JSONObject jSONObject) throws JSONException {
            this.f2347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getInt("commitmentPaymentsCount");
            this.f2346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optInt("subsequentCommitmentPaymentsCount");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class OneTimePurchaseOfferDetails {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final zzcs f2348Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f2352Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public OneTimePurchaseOfferDetails(JSONObject jSONObject) throws JSONException {
            this.f2353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("formattedPrice");
            this.f2352Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optLong("priceAmountMicros");
            this.f2351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("priceCurrencyCode");
            String optString = jSONObject.optString("offerIdToken");
            this.f2350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true == optString.isEmpty() ? null : optString;
            jSONObject.optString("offerId").getClass();
            jSONObject.optString("purchaseOptionId").getClass();
            jSONObject.optInt("offerType");
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            ArrayList arrayList = new ArrayList();
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.getString(i));
                }
            }
            com.google.android.gms.internal.play_billing.zzco.zzk(arrayList);
            if (jSONObject.has("fullPriceMicros")) {
                jSONObject.optLong("fullPriceMicros");
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            if (optJSONObject != null) {
                optJSONObject.getInt("percentageDiscount");
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("validTimeWindow");
            if (optJSONObject2 != null) {
                optJSONObject2.getLong("startTimeMillis");
                optJSONObject2.getLong("endTimeMillis");
            }
            JSONObject optJSONObject3 = jSONObject.optJSONObject("limitedQuantityInfo");
            if (optJSONObject3 != null) {
                optJSONObject3.getInt("maximumQuantity");
                optJSONObject3.getInt("remainingQuantity");
            }
            this.f2349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("serializedDocid");
            JSONObject optJSONObject4 = jSONObject.optJSONObject("preorderDetails");
            if (optJSONObject4 != null) {
                optJSONObject4.getLong("preorderReleaseTimeMillis");
                optJSONObject4.getLong("preorderPresaleEndTimeMillis");
            }
            JSONObject optJSONObject5 = jSONObject.optJSONObject("rentalDetails");
            if (optJSONObject5 != null) {
                optJSONObject5.getString("rentalPeriod");
                optJSONObject5.optString("rentalExpirationPeriod").getClass();
            }
            JSONObject optJSONObject6 = jSONObject.optJSONObject("autoPayDetails");
            this.f2348Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = optJSONObject6 != null ? new zzcs(optJSONObject6) : null;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final zzcs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2348Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2352Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class PricingPhase {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f2354Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f2355Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f2358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2359Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PricingPhase(JSONObject jSONObject) {
            this.f2356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("billingPeriod");
            this.f2357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("priceCurrencyCode");
            this.f2359Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("formattedPrice");
            this.f2358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optLong("priceAmountMicros");
            this.f2354Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optInt("recurrenceMode");
            this.f2355Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optInt("billingCycleCount");
        }

        @NonNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2359Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class PricingPhases {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List f2360Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PricingPhases(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        arrayList.add(new PricingPhase(optJSONObject));
                    }
                }
            }
            this.f2360Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
        }

        @NonNull
        public List<PricingPhase> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2360Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface RecurrenceMode {
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class SubscriptionOfferDetails {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InstallmentPlanDetails f2361Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List f2362Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PricingPhases f2363Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2364Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2366Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SubscriptionOfferDetails(JSONObject jSONObject) throws JSONException {
            this.f2366Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("basePlanId");
            String optString = jSONObject.optString("offerId");
            this.f2365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true == optString.isEmpty() ? null : optString;
            this.f2364Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("offerIdToken");
            this.f2363Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new PricingPhases(jSONObject.getJSONArray("pricingPhases"));
            JSONObject optJSONObject = jSONObject.optJSONObject("installmentPlanDetails");
            this.f2361Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = optJSONObject != null ? new InstallmentPlanDetails(optJSONObject) : null;
            JSONObject optJSONObject2 = jSONObject.optJSONObject("transitionPlanDetails");
            if (optJSONObject2 != null) {
                optJSONObject2.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                optJSONObject2.optString(CampaignEx.JSON_KEY_TITLE);
                optJSONObject2.optString("name");
                optJSONObject2.optString("description");
                optJSONObject2.optString("basePlanId");
                JSONObject optJSONObject3 = optJSONObject2.optJSONObject("pricingPhase");
                if (optJSONObject3 != null) {
                    new PricingPhase(optJSONObject3);
                }
            }
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.getString(i));
                }
            }
            this.f2362Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
        }

        @NonNull
        public PricingPhases Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2363Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2364Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2366Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public ProductDetails(String str) throws JSONException {
        ArrayList arrayList;
        this.f2345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f2344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
        String optString = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
        this.f2343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = optString;
        String optString2 = jSONObject.optString("type");
        this.f2342Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = optString2;
        if (!TextUtils.isEmpty(optString)) {
            if (!TextUtils.isEmpty(optString2)) {
                this.f2341Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString(CampaignEx.JSON_KEY_TITLE);
                this.f2340Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("name");
                this.f2339Wwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("description");
                jSONObject.optString("packageDisplayName");
                jSONObject.optString("iconUrl");
                this.f2338Wwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("skuDetailsToken");
                this.f2337Wwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("serializedDocid");
                JSONArray optJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
                if (optJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        arrayList2.add(new SubscriptionOfferDetails(optJSONArray.getJSONObject(i)));
                    }
                    this.f2336Wwwwwwwwwwwwwwwwwwwwwwwww = arrayList2;
                } else {
                    if (!optString2.equals("subs") && !optString2.equals("play_pass_subs")) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList();
                    }
                    this.f2336Wwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
                }
                JSONObject optJSONObject = this.f2344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optJSONObject("oneTimePurchaseOfferDetails");
                JSONArray optJSONArray2 = this.f2344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optJSONArray("oneTimePurchaseOfferDetailsList");
                ArrayList arrayList3 = new ArrayList();
                if (optJSONArray2 != null) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        arrayList3.add(new OneTimePurchaseOfferDetails(optJSONArray2.getJSONObject(i2)));
                    }
                    this.f2335Wwwwwwwwwwwwwwwwwwwwwwww = arrayList3;
                    return;
                } else if (optJSONObject != null) {
                    arrayList3.add(new OneTimePurchaseOfferDetails(optJSONObject));
                    this.f2335Wwwwwwwwwwwwwwwwwwwwwwww = arrayList3;
                    return;
                } else {
                    this.f2335Wwwwwwwwwwwwwwwwwwwwwwww = null;
                    return;
                }
            }
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        throw new IllegalArgumentException("Product id cannot be empty.");
    }

    @Nullable
    public final List Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2335Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2337Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2338Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.optString("packageName");
    }

    @Nullable
    public List<SubscriptionOfferDetails> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2336Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2342Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public OneTimePurchaseOfferDetails Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        List list = this.f2335Wwwwwwwwwwwwwwwwwwwwwwww;
        if (list != null && !list.isEmpty()) {
            return (OneTimePurchaseOfferDetails) this.f2335Wwwwwwwwwwwwwwwwwwwwwwww.get(0);
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductDetails)) {
            return false;
        }
        return TextUtils.equals(this.f2345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ((ProductDetails) obj).f2345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public int hashCode() {
        return this.f2345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NonNull
    public String toString() {
        List list = this.f2336Wwwwwwwwwwwwwwwwwwwwwwwww;
        String obj = this.f2344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString();
        String valueOf = String.valueOf(list);
        return "ProductDetails{jsonString='" + this.f2345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "', parsedJson=" + obj + ", productId='" + this.f2343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "', productType='" + this.f2342Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "', title='" + this.f2341Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "', productDetailsToken='" + this.f2338Wwwwwwwwwwwwwwwwwwwwwwwwwww + "', subscriptionOfferDetails=" + valueOf + "}";
    }
}
