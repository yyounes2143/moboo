package com.google.android.engage.service;

import androidx.annotation.NonNull;
import com.google.android.engage.common.datamodel.FeaturedCluster;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class PublishFeaturedClusterRequest {
    private final FeaturedCluster zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private FeaturedCluster zza;

        @NonNull
        public PublishFeaturedClusterRequest build() {
            return new PublishFeaturedClusterRequest(this, null);
        }

        @NonNull
        public Builder setFeaturedCluster(@NonNull FeaturedCluster featuredCluster) {
            this.zza = featuredCluster;
            return this;
        }
    }

    public /* synthetic */ PublishFeaturedClusterRequest(Builder builder, zzai zzaiVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public FeaturedCluster getFeaturedCluster() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
