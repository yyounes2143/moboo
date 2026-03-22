package com.google.android.engage.service;

import androidx.annotation.NonNull;
import com.google.android.engage.common.datamodel.ContinuationCluster;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PublishContinuationClusterRequest {
    private final ContinuationCluster zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private ContinuationCluster zza;

        @NonNull
        public PublishContinuationClusterRequest build() {
            return new PublishContinuationClusterRequest(this, null);
        }

        @NonNull
        public Builder setContinuationCluster(@NonNull ContinuationCluster continuationCluster) {
            this.zza = continuationCluster;
            return this;
        }
    }

    public /* synthetic */ PublishContinuationClusterRequest(Builder builder, zzah zzahVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public ContinuationCluster getContinuationCluster() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
