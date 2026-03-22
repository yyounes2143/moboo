package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.ProductDetails;
import j$.lang.Iterable$EL;
import j$.util.Collection;
import j$.util.function.Consumer$CC;
import j$.util.function.Predicate$CC;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BillingFlowParams {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2291Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ArrayList f2292Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.google.android.gms.internal.play_billing.zzco f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SubscriptionUpdateParams f2294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f2295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f2296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public SubscriptionUpdateParams.Builder f2298Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f2299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ArrayList f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List f2301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            SubscriptionUpdateParams.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SubscriptionUpdateParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SubscriptionUpdateParams.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            this.f2298Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SubscriptionUpdateParams subscriptionUpdateParams) {
            this.f2298Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = SubscriptionUpdateParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(subscriptionUpdateParams);
            return this;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<ProductDetailsParams> list) {
            this.f2301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList(list);
            return this;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
            this.f2302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
            this.f2303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NonNull
        public BillingFlowParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            boolean z;
            boolean z2;
            ArrayList arrayList;
            com.google.android.gms.internal.play_billing.zzco zzl;
            ArrayList arrayList2 = this.f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            boolean z3 = true;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
            List list = this.f2301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (list != null && !list.isEmpty()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z && !z2) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            if (z && z2) {
                throw new IllegalArgumentException("Set SkuDetails or ProductDetailsParams, not both.");
            }
            if (z) {
                if (!this.f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(null)) {
                    if (this.f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 1) {
                        SkuDetails skuDetails = (SkuDetails) this.f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(0);
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = skuDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        ArrayList arrayList3 = this.f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        int size = arrayList3.size();
                        for (int i = 0; i < size; i++) {
                            SkuDetails skuDetails2 = (SkuDetails) arrayList3.get(i);
                            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("play_pass_subs") && !skuDetails2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals("play_pass_subs") && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals(skuDetails2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                                throw new IllegalArgumentException("SKUs should have the same type.");
                            }
                        }
                        String Wwwwwwwwwwwwwwwwwwwwwwwww2 = skuDetails.Wwwwwwwwwwwwwwwwwwwwwwwww();
                        ArrayList arrayList4 = this.f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        int size2 = arrayList4.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            SkuDetails skuDetails3 = (SkuDetails) arrayList4.get(i2);
                            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("play_pass_subs") && !skuDetails3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals("play_pass_subs") && !Wwwwwwwwwwwwwwwwwwwwwwwww2.equals(skuDetails3.Wwwwwwwwwwwwwwwwwwwwwwwww())) {
                                throw new IllegalArgumentException("All SKUs must have the same package name.");
                            }
                        }
                    }
                } else {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            } else {
                Iterable$EL.forEach(this.f2301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new Consumer() { // from class: com.android.billingclient.api.zzce
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        if (((BillingFlowParams.ProductDetailsParams) obj) != null) {
                            return;
                        }
                        throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
            }
            BillingFlowParams billingFlowParams = new BillingFlowParams(null);
            if ((!z || ((SkuDetails) this.f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(0)).Wwwwwwwwwwwwwwwwwwwwwwwww().isEmpty()) && (!z2 || ((ProductDetailsParams) this.f2301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(0)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty())) {
                z3 = false;
            }
            billingFlowParams.f2297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z3;
            billingFlowParams.f2296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            billingFlowParams.f2295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            billingFlowParams.f2294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2298Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            ArrayList arrayList5 = this.f2300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (arrayList5 != null) {
                arrayList = new ArrayList(arrayList5);
            } else {
                arrayList = new ArrayList();
            }
            billingFlowParams.f2292Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
            billingFlowParams.f2291Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            List list2 = this.f2301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (list2 != null) {
                zzl = com.google.android.gms.internal.play_billing.zzco.zzk(list2);
            } else {
                zzl = com.google.android.gms.internal.play_billing.zzco.zzl();
            }
            billingFlowParams.f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zzl;
            return billingFlowParams;
        }

        public /* synthetic */ Builder(zzcf zzcfVar) {
            SubscriptionUpdateParams.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SubscriptionUpdateParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SubscriptionUpdateParams.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            this.f2298Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class ProductDetailsParams {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ProductDetails f2305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static class Builder {
            @Nullable

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public String f2306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public ProductDetails f2307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public Builder() {
                throw null;
            }

            @NonNull
            public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ProductDetails productDetails) {
                this.f2307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = productDetails;
                if (productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getClass();
                    ProductDetails.OneTimePurchaseOfferDetails Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = productDetails.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                        this.f2306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
                return this;
            }

            @NonNull
            public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
                if (!TextUtils.isEmpty(str)) {
                    this.f2306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                    return this;
                }
                throw new IllegalArgumentException("offerToken can not be empty");
            }

            @NonNull
            public ProductDetailsParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                com.google.android.gms.internal.play_billing.zzbe.zzc(this.f2307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "ProductDetails is required for constructing ProductDetailsParams.");
                if (this.f2307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    com.google.android.gms.internal.play_billing.zzbe.zzc(this.f2306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "offerToken is required for constructing ProductDetailsParams for subscriptions.");
                }
                return new ProductDetailsParams(this, null);
            }

            public /* synthetic */ Builder(zzcf zzcfVar) {
            }
        }

        public /* synthetic */ ProductDetailsParams(Builder builder, zzcf zzcfVar) {
            this.f2305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f2307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f2304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f2306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Builder(null);
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public final ProductDetails Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class SubscriptionUpdateParams {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f2308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static class Builder {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public int f2311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public boolean f2312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public String f2313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public String f2314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public Builder() {
            }

            public static /* synthetic */ Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Builder builder) {
                builder.f2312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                return builder;
            }

            @NonNull
            @Deprecated
            public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
                this.f2314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                return this;
            }

            @NonNull
            public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
                this.f2311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                return this;
            }

            @NonNull
            @zze
            public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
                this.f2313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                return this;
            }

            @NonNull
            public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
                this.f2314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                return this;
            }

            @NonNull
            public SubscriptionUpdateParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                boolean z = true;
                if (TextUtils.isEmpty(this.f2314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && TextUtils.isEmpty(null)) {
                    z = false;
                }
                boolean isEmpty = TextUtils.isEmpty(this.f2313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                if (z && !isEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.f2312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !z && isEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                SubscriptionUpdateParams subscriptionUpdateParams = new SubscriptionUpdateParams(null);
                subscriptionUpdateParams.f2310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                subscriptionUpdateParams.f2308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                subscriptionUpdateParams.f2309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                return subscriptionUpdateParams;
            }

            public /* synthetic */ Builder(zzcf zzcfVar) {
            }
        }

        /* compiled from: Proguard */
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes3.dex */
        public @interface ReplacementMode {
        }

        public SubscriptionUpdateParams() {
        }

        public static /* bridge */ /* synthetic */ Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SubscriptionUpdateParams subscriptionUpdateParams) {
            Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(subscriptionUpdateParams.f2310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(subscriptionUpdateParams.f2308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(subscriptionUpdateParams.f2309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @NonNull
        public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Builder(null);
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public /* synthetic */ SubscriptionUpdateParams(zzcf zzcfVar) {
        }
    }

    public BillingFlowParams() {
        throw null;
    }

    @NonNull
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(null);
    }

    public final boolean Wwwwwwwwwwwwwwwww() {
        if (this.f2296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null && this.f2295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null && this.f2294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null && this.f2294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0 && !Collection.EL.stream(this.f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).anyMatch(new Predicate() { // from class: com.android.billingclient.api.zzcd
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            public /* synthetic */ Predicate or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                BillingFlowParams.ProductDetailsParams productDetailsParams = (BillingFlowParams.ProductDetailsParams) obj;
                return false;
            }
        }) && !this.f2297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f2291Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return false;
        }
        return true;
    }

    public final boolean Wwwwwwwwwwwwwwwwww() {
        return this.f2291Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public final List Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public final ArrayList Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f2292Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return arrayList;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            return zzcj.f2560Wwwwwwwwwwwwwwwwwwwwwww;
        }
        ProductDetailsParams productDetailsParams = (ProductDetailsParams) this.f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(0);
        for (int i = 1; i < this.f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size(); i++) {
            ProductDetailsParams productDetailsParams2 = (ProductDetailsParams) this.f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i);
            if (!productDetailsParams2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals(productDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && !productDetailsParams2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals("play_pass_subs")) {
                return zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(5, "All products should have same ProductType.");
            }
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = productDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        com.google.android.gms.internal.play_billing.zzco zzcoVar = this.f2293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int size = zzcoVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            ProductDetailsParams productDetailsParams3 = (ProductDetailsParams) zzcoVar.get(i2);
            productDetailsParams3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals("subs");
            if (hashSet.contains(productDetailsParams3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(5, String.format("ProductId can not be duplicated. Invalid product id: %s.", productDetailsParams3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            }
            hashSet.add(productDetailsParams3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (!productDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals("play_pass_subs") && !productDetailsParams3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals("play_pass_subs") && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals(productDetailsParams3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(5, "All products must have the same package name.");
            }
        }
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (hashSet.contains(str)) {
                return zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(5, String.format("OldProductId must not be one of the products to be purchased. Invalid old product id: %s.", str));
            }
        }
        ProductDetails.OneTimePurchaseOfferDetails Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = productDetailsParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            return zzcj.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(5, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay.");
        }
        return zzcj.f2560Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public /* synthetic */ BillingFlowParams(zzcf zzcfVar) {
    }
}
