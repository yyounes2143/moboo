package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ConsumeParams {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f2319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            throw null;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
            this.f2320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NonNull
        public ConsumeParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            String str = this.f2320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                ConsumeParams consumeParams = new ConsumeParams(null);
                consumeParams.f2319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                return consumeParams;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        public /* synthetic */ Builder(zzck zzckVar) {
        }
    }

    public ConsumeParams() {
        throw null;
    }

    @NonNull
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(null);
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public /* synthetic */ ConsumeParams(zzck zzckVar) {
    }
}
