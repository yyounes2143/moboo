package com.google.android.engage.travel.service;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.engage.service.DeleteClustersRequest;
import com.google.android.engage.service.PublishFeaturedClusterRequest;
import com.google.android.engage.service.PublishRecommendationClustersRequest;
import com.google.android.engage.service.PublishStatusRequest;
import com.google.android.engage.service.PublishUserAccountManagementRequest;
import com.google.android.engage.service.zzaa;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.MoreExecutors;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class AppEngageTravelClient {
    private final zzaa zza;

    public AppEngageTravelClient(@NonNull Context context) {
        this.zza = zzaa.zza(context);
    }

    @NonNull
    public Task<Void> deleteClusters(@NonNull DeleteClustersRequest deleteClustersRequest) {
        return this.zza.zzb(deleteClustersRequest).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> deleteContinueSearchCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(13);
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
    public Task<Void> deleteReservationCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(14);
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
    public Task<Void> publishContinueSearchCluster(@NonNull PublishContinueSearchClusterRequest publishContinueSearchClusterRequest) {
        return this.zza.zzd(publishContinueSearchClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishFeaturedCluster(@NonNull PublishFeaturedClusterRequest publishFeaturedClusterRequest) {
        return this.zza.zzd(publishFeaturedClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishRecommendationClusters(@NonNull PublishRecommendationClustersRequest publishRecommendationClustersRequest) {
        return this.zza.zzd(publishRecommendationClustersRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishReservationCluster(@NonNull PublishReservationClusterRequest publishReservationClusterRequest) {
        return this.zza.zzd(publishReservationClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishUserAccountManagementRequest(@NonNull PublishUserAccountManagementRequest publishUserAccountManagementRequest) {
        return this.zza.zzd(publishUserAccountManagementRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> updatePublishStatus(@NonNull PublishStatusRequest publishStatusRequest) {
        return this.zza.zzf(publishStatusRequest).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }
}
