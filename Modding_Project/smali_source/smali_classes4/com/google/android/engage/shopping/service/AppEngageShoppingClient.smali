.class public Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/service/zzaa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/engage/service/zzaa;->zza(Landroid/content/Context;)Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/service/DeleteClustersRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/service/DeleteClustersRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzb(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/engage/shopping/service/zzc;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public deleteFeaturedCluster()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public deleteRecommendationsClusters()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public deleteReorderCluster()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public deleteShoppingCartCluster()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public deleteShoppingListCluster()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public deleteShoppingOrderTrackingCluster()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public deleteUserManagementCluster()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public isServiceAvailable()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/service/zzaa;->zzc()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/google/android/engage/shopping/service/zzk;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public publishFeaturedCluster(Lcom/google/android/engage/service/PublishFeaturedClusterRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/service/PublishFeaturedClusterRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/service/PublishFeaturedClusterRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishFeaturedClusterRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zzb;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public publishRecommendationClusters(Lcom/google/android/engage/service/PublishRecommendationClustersRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/service/PublishRecommendationClustersRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/service/PublishRecommendationClustersRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zze;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public publishShoppingCart(Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zzi;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public publishShoppingCarts(Lcom/google/android/engage/shopping/service/PublishShoppingCartClustersRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/shopping/service/PublishShoppingCartClustersRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/shopping/service/PublishShoppingCartClustersRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/shopping/service/PublishShoppingCartClustersRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zzf;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public publishShoppingList(Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/shopping/service/PublishShoppingListClusterRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zzd;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public publishShoppingLists(Lcom/google/android/engage/shopping/service/PublishShoppingListsRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/shopping/service/PublishShoppingListsRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/shopping/service/PublishShoppingListsRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/shopping/service/PublishShoppingListsRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zzh;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public publishShoppingOrderTrackingCluster(Lcom/google/android/engage/shopping/service/PublishShoppingOrderTrackingClusterRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/shopping/service/PublishShoppingOrderTrackingClusterRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/shopping/service/PublishShoppingOrderTrackingClusterRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/shopping/service/PublishShoppingOrderTrackingClusterRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zzg;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public publishShoppingReorderCluster(Lcom/google/android/engage/shopping/service/PublishShoppingReorderClusterRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/shopping/service/PublishShoppingReorderClusterRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/shopping/service/PublishShoppingReorderClusterRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/shopping/service/PublishShoppingReorderClusterRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zzj;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public publishUserAccountManagementRequest(Lcom/google/android/engage/service/PublishUserAccountManagementRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/service/PublishUserAccountManagementRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/service/PublishUserAccountManagementRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishUserAccountManagementRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/engage/shopping/service/zza;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public updatePublishStatus(Lcom/google/android/engage/service/PublishStatusRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/service/PublishStatusRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/service/PublishStatusRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/service/AppEngageShoppingClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/zzaa;->zzf(Lcom/google/android/engage/service/PublishStatusRequest;)Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/engage/shopping/service/zzl;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
