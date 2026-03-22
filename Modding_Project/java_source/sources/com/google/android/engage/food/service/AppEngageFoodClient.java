package com.google.android.engage.food.service;

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
public class AppEngageFoodClient {
    private final zzaa zza;

    public AppEngageFoodClient(@NonNull Context context) {
        this.zza = zzaa.zza(context);
    }

    @NonNull
    public Task<Void> deleteClusters(@NonNull DeleteClustersRequest deleteClustersRequest) {
        return this.zza.zzb(deleteClustersRequest).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> deleteFeaturedCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(2);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Void> deleteFoodShoppingCartCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(6);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Void> deleteFoodShoppingListCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(7);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Void> deleteRecommendationsClusters() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(1);
        return deleteClusters(builder.build());
    }

    @NonNull
    public Task<Void> deleteReorderCluster() {
        DeleteClustersRequest.Builder builder = new DeleteClustersRequest.Builder();
        builder.addClusterType(5);
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
    public Task<Void> publishFeaturedCluster(@NonNull PublishFeaturedClusterRequest publishFeaturedClusterRequest) {
        return this.zza.zzd(publishFeaturedClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    @Deprecated
    public Task<Void> publishFoodShoppingCart(@NonNull PublishFoodShoppingCartClusterRequest publishFoodShoppingCartClusterRequest) {
        return this.zza.zzd(publishFoodShoppingCartClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishFoodShoppingCarts(@NonNull PublishFoodShoppingCartsRequest publishFoodShoppingCartsRequest) {
        return this.zza.zzd(publishFoodShoppingCartsRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    @Deprecated
    public Task<Void> publishFoodShoppingList(@NonNull PublishFoodShoppingListClusterRequest publishFoodShoppingListClusterRequest) {
        return this.zza.zzd(publishFoodShoppingListClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishFoodShoppingLists(@NonNull PublishFoodShoppingListsRequest publishFoodShoppingListsRequest) {
        return this.zza.zzd(publishFoodShoppingListsRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishRecommendationClusters(@NonNull PublishRecommendationClustersRequest publishRecommendationClustersRequest) {
        return this.zza.zzd(publishRecommendationClustersRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
    }

    @NonNull
    public Task<Void> publishReorderCluster(@NonNull PublishReorderClusterRequest publishReorderClusterRequest) {
        return this.zza.zzd(publishReorderClusterRequest.zza()).onSuccessTask(MoreExecutors.directExecutor(), new Object());
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
