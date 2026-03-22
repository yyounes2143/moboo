package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class QueryPurchasesParams {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2397Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            throw null;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
            this.f2397Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NonNull
        public QueryPurchasesParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f2397Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return new QueryPurchasesParams(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        public /* synthetic */ Builder(zzdb zzdbVar) {
        }
    }

    public /* synthetic */ QueryPurchasesParams(Builder builder, zzdb zzdbVar) {
        this.f2396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f2397Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(null);
    }

    @NonNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
