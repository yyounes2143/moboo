package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
@zzj
/* loaded from: classes3.dex */
public final class PendingPurchasesParams {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @zzj
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f2333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f2334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f2334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return this;
        }

        @NonNull
        public PendingPurchasesParams Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f2334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return new PendingPurchasesParams(true, this.f2333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
        }
    }

    public PendingPurchasesParams(boolean z, boolean z2) {
        this.f2332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f2331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
    }

    @NonNull
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder();
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
