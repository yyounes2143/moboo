package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AcknowledgePurchaseParams {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f2237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            throw null;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
            this.f2238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NonNull
        public AcknowledgePurchaseParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            String str = this.f2238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                AcknowledgePurchaseParams acknowledgePurchaseParams = new AcknowledgePurchaseParams(null);
                acknowledgePurchaseParams.f2237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                return acknowledgePurchaseParams;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        public /* synthetic */ Builder(zza zzaVar) {
        }
    }

    public AcknowledgePurchaseParams() {
        throw null;
    }

    @NonNull
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(null);
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public /* synthetic */ AcknowledgePurchaseParams(zza zzaVar) {
    }
}
