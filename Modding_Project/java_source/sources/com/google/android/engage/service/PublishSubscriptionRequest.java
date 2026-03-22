package com.google.android.engage.service;

import androidx.annotation.NonNull;
import com.google.android.engage.common.datamodel.AccountProfile;
import com.google.android.engage.common.datamodel.SubscriptionCluster;
import com.google.android.engage.common.datamodel.SubscriptionEntity;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PublishSubscriptionRequest {
    private final SubscriptionEntity zza;
    private final AccountProfile zzb;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private SubscriptionEntity zza;
        private AccountProfile zzb;

        @NonNull
        public PublishSubscriptionRequest build() {
            return new PublishSubscriptionRequest(this, null);
        }

        @NonNull
        public Builder setAccountProfile(@NonNull AccountProfile accountProfile) {
            this.zzb = accountProfile;
            return this;
        }

        @NonNull
        public Builder setSubscription(@NonNull SubscriptionEntity subscriptionEntity) {
            this.zza = subscriptionEntity;
            return this;
        }
    }

    public /* synthetic */ PublishSubscriptionRequest(Builder builder, zzak zzakVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public AccountProfile getAccountProfile() {
        return this.zzb;
    }

    @NonNull
    public SubscriptionEntity getSubscription() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        SubscriptionCluster.Builder builder = new SubscriptionCluster.Builder();
        builder.setAccountProfile(this.zzb);
        builder.addSubscriptionEntity(this.zza);
        zzabVar.zza(builder.build());
        return new zzac(zzabVar);
    }
}
