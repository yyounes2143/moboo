package com.google.android.engage.social.service;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.engage.service.DeleteClustersRequest;
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
public class AppEngageSocialClient {
    private final zzaa zza;

    public AppEngageSocialClient(@NonNull Context context) {
        this.zza = zzaa.zza(context);
    }

    @NonNull
    public Task<Void> deleteClusters(@NonNull DeleteClustersRequest deleteClustersRequest) {
        return this.zza.zzb(deleteClustersRequest).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> deleteRecommendationsClusters() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(1);
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
    public Task<Void> publishRecommendationClusters(@NonNull PublishRecommendationClustersRequest publishRecommendationClustersRequest) {
        return this.zza.zzd(publishRecommendationClustersRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
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
