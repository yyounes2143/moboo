package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class QueryPurchaseHistoryParams {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            throw null;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
            this.f2395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NonNull
        public QueryPurchaseHistoryParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f2395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return new QueryPurchaseHistoryParams(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        public /* synthetic */ Builder(zzda zzdaVar) {
        }
    }

    public /* synthetic */ QueryPurchaseHistoryParams(Builder builder, zzda zzdaVar) {
        this.f2394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f2395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(null);
    }

    @NonNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
