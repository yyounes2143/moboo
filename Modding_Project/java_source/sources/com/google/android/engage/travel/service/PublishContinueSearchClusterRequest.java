package com.google.android.engage.travel.service;

import androidx.annotation.NonNull;
import com.google.android.engage.service.zzab;
import com.google.android.engage.service.zzac;
import com.google.android.engage.travel.datamodel.ContinueSearchCluster;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PublishContinueSearchClusterRequest {
    private final ContinueSearchCluster zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private ContinueSearchCluster zza;

        @NonNull
        public PublishContinueSearchClusterRequest build() {
            return new PublishContinueSearchClusterRequest(this, null);
        }

        @NonNull
        public Builder setContinueSearchCluster(@NonNull ContinueSearchCluster continueSearchCluster) {
            this.zza = continueSearchCluster;
            return this;
        }
    }

    public /* synthetic */ PublishContinueSearchClusterRequest(Builder builder, zzi zziVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public ContinueSearchCluster getContinueSearchCluster() {
        return this.zza;
    }

    public final zzac zza() {
        zzab zzabVar = new zzab();
        zzabVar.zza(this.zza);
        return new zzac(zzabVar);
    }
}
