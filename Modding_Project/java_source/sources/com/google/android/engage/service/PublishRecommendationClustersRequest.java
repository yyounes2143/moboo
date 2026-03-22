package com.google.android.engage.service;

import androidx.annotation.NonNull;
import com.google.android.engage.common.datamodel.AccountProfile;
import com.google.android.engage.common.datamodel.RecommendationCluster;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishRecommendationClustersRequest {
    private final ImmutableList zza;
    private final Optional zzb;
    private final boolean zzc;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private final ImmutableList.Builder zza = ImmutableList.builder();
        private AccountProfile zzb;
        private boolean zzc;

        @NonNull
        public Builder addRecommendationCluster(@NonNull RecommendationCluster recommendationCluster) {
            this.zza.add((ImmutableList.Builder) recommendationCluster);
            return this;
        }

        @NonNull
        public PublishRecommendationClustersRequest build() {
            return new PublishRecommendationClustersRequest(this, null);
        }

        @NonNull
        public Builder setAccountProfile(@NonNull AccountProfile accountProfile) {
            this.zzb = accountProfile;
            return this;
        }

        @NonNull
        public Builder setSyncAcrossDevices(boolean z) {
            this.zzc = z;
            return this;
        }
    }

    public /* synthetic */ PublishRecommendationClustersRequest(Builder builder, zzaj zzajVar) {
        this.zza = builder.zza.build();
        this.zzb = Optional.fromNullable(builder.zzb);
        this.zzc = builder.zzc;
    }

    @NonNull
    public Optional<AccountProfile> getAccountProfile() {
        return this.zzb;
    }

    @NonNull
    public ImmutableList<RecommendationCluster> getRecommendationClusters() {
        return this.zza;
    }

    public boolean getSyncAcrossDevices() {
        return this.zzc;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        ImmutableList immutableList = this.zza;
        int size = immutableList.size();
        for (int i = 0; i < size; i++) {
            zzabVar.zza((RecommendationCluster) immutableList.get(i));
        }
        return new zzac(zzabVar);
    }
}
