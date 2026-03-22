package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class BillingResult {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f2315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f2316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f2317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f2318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f2318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            return this;
        }

        @NonNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
            this.f2317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NonNull
        public BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            BillingResult billingResult = new BillingResult();
            billingResult.f2316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2318Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            billingResult.f2315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f2317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return billingResult;
        }

        public /* synthetic */ Builder(zzci zzciVar) {
        }
    }

    @NonNull
    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(null);
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public String toString() {
        String zzi = com.google.android.gms.internal.play_billing.zze.zzi(this.f2316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        String str = this.f2315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return "Response Code: " + zzi + ", Debug Message: " + str;
    }
}
