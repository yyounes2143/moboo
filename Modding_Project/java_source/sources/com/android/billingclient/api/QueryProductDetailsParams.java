package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class QueryProductDetailsParams {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.google.android.gms.internal.play_billing.zzco f2388Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public com.google.android.gms.internal.play_billing.zzco f2389Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            throw null;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<Product> list) {
            if (list != null && !list.isEmpty()) {
                HashSet hashSet = new HashSet();
                for (Product product : list) {
                    if (!"play_pass_subs".equals(product.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                        hashSet.add(product.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                }
                if (hashSet.size() <= 1) {
                    this.f2389Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = com.google.android.gms.internal.play_billing.zzco.zzk(list);
                    return this;
                }
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            throw new IllegalArgumentException("Product list cannot be empty.");
        }

        @NonNull
        public QueryProductDetailsParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f2389Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return new QueryProductDetailsParams(this, null);
            }
            throw new IllegalArgumentException("Product list must be set to a non empty list.");
        }

        public /* synthetic */ Builder(zzcz zzczVar) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Product {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2390Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2391Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public static class Builder {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public String f2392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public String f2393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public Builder() {
                throw null;
            }

            @NonNull
            public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
                this.f2392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                return this;
            }

            @NonNull
            public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
                this.f2393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                return this;
            }

            @NonNull
            public Product Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                if (!"first_party".equals(this.f2392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    if (this.f2393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                        if (this.f2392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                            return new Product(this, null);
                        }
                        throw new IllegalArgumentException("Product type must be provided.");
                    }
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
            }

            public /* synthetic */ Builder(zzcz zzczVar) {
            }
        }

        public /* synthetic */ Product(Builder builder, zzcz zzczVar) {
            this.f2391Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f2393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f2390Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f2392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Builder(null);
        }

        @NonNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2390Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NonNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2391Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public /* synthetic */ QueryProductDetailsParams(Builder builder, zzcz zzczVar) {
        this.f2388Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f2389Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(null);
    }

    @NonNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return ((Product) this.f2388Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(0)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final com.google.android.gms.internal.play_billing.zzco Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2388Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
