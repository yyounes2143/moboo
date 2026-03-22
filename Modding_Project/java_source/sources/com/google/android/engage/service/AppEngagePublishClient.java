package com.google.android.engage.service;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.engage.common.datamodel.AccountProfile;
import com.google.android.engage.service.DeleteClustersRequest;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.MoreExecutors;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class AppEngagePublishClient {
    private final zzaa zza;

    public AppEngagePublishClient(@NonNull Context context) {
        this.zza = zzaa.zza(context);
    }

    @NonNull
    public Task<Void> deleteClusters(@NonNull DeleteClustersRequest deleteClustersRequest) {
        return this.zza.zzb(deleteClustersRequest).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> deleteContinuationCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(3);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Void> deleteFeaturedCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(2);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Void> deleteRecommendationsClusters() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(1);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Void> deleteSubscription(@NonNull AccountProfile accountProfile) {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(12);
        builder.setAccountProfile(accountProfile);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Void> deleteUserManagementCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(8);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Boolean> isServiceAvailable() {
        return this.zza.zzc().onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishContinuationCluster(@NonNull PublishContinuationClusterRequest publishContinuationClusterRequest) {
        return this.zza.zzd(publishContinuationClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishFeaturedCluster(@NonNull PublishFeaturedClusterRequest publishFeaturedClusterRequest) {
        return this.zza.zzd(publishFeaturedClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishRecommendationClusters(@NonNull PublishRecommendationClustersRequest publishRecommendationClustersRequest) {
        Bundle bundle = new Bundle();
        if (publishRecommendationClustersRequest.getAccountProfile().isPresent()) {
            bundle.putBundle("account_profile", publishRecommendationClustersRequest.getAccountProfile().get().zza());
        }
        if (publishRecommendationClustersRequest.getSyncAcrossDevices()) {
            bundle.putBoolean("publish_request_sync_across_devices", publishRecommendationClustersRequest.getSyncAcrossDevices());
        }
        return this.zza.zze(publishRecommendationClustersRequest.zza(), bundle).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishSubscription(@NonNull PublishSubscriptionRequest publishSubscriptionRequest) {
        return this.zza.zzd(publishSubscriptionRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishUserAccountManagementRequest(@NonNull PublishUserAccountManagementRequest publishUserAccountManagementRequest) {
        return this.zza.zzd(publishUserAccountManagementRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> updatePublishStatus(@NonNull PublishStatusRequest publishStatusRequest) {
        return this.zza.zzf(publishStatusRequest).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> deleteContinuationCluster(@NonNull AccountProfile accountProfile) {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(3);
        builder.setAccountProfile(accountProfile);
        return deleteClusters(builder.build());
    }
}
