.class public Lcom/google/android/engage/service/AppEngagePublishClient;
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
    iput-object p1, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

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
    iget-object v0, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

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
    new-instance v1, Lcom/google/android/engage/service/zze;

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

.method public deleteContinuationCluster()Lcom/google/android/gms/tasks/Task;
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

    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/engage/service/AppEngagePublishClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public deleteContinuationCluster(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/common/datamodel/AccountProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/common/datamodel/AccountProfile;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;-><init>()V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->setAccountProfile(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/engage/service/AppEngagePublishClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

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
    invoke-virtual {p0, v0}, Lcom/google/android/engage/service/AppEngagePublishClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

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
    invoke-virtual {p0, v0}, Lcom/google/android/engage/service/AppEngagePublishClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public deleteSubscription(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/common/datamodel/AccountProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/common/datamodel/AccountProfile;",
            ")",
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
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->setAccountProfile(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->build()Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/engage/service/AppEngagePublishClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
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
    invoke-virtual {p0, v0}, Lcom/google/android/engage/service/AppEngagePublishClient;->deleteClusters(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;

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
    iget-object v0, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

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
    new-instance v2, Lcom/google/android/engage/service/zzf;

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

.method public publishContinuationCluster(Lcom/google/android/engage/service/PublishContinuationClusterRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/service/PublishContinuationClusterRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/service/PublishContinuationClusterRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishContinuationClusterRequest;->zza()Lcom/google/android/engage/service/zzac;

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
    new-instance v1, Lcom/google/android/engage/service/zza;

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
    iget-object v0, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

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
    new-instance v1, Lcom/google/android/engage/service/zzd;

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
    .locals 3
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
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->getAccountProfile()Lcom/google/common/base/Optional;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->getAccountProfile()Lcom/google/common/base/Optional;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/AccountProfile;->zza()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "account_profile"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->getSyncAcrossDevices()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->getSyncAcrossDevices()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const-string v2, "publish_request_sync_across_devices"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishRecommendationClustersRequest;->zza()Lcom/google/android/engage/service/zzac;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v1, p1, v0}, Lcom/google/android/engage/service/zzaa;->zze(Lcom/google/android/engage/service/zzac;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/google/android/engage/service/zzg;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method

.method public publishSubscription(Lcom/google/android/engage/service/PublishSubscriptionRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/engage/service/PublishSubscriptionRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/engage/service/PublishSubscriptionRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishSubscriptionRequest;->zza()Lcom/google/android/engage/service/zzac;

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
    new-instance v1, Lcom/google/android/engage/service/zzh;

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
    iget-object v0, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

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
    new-instance v1, Lcom/google/android/engage/service/zzb;

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
    iget-object v0, p0, Lcom/google/android/engage/service/AppEngagePublishClient;->zza:Lcom/google/android/engage/service/zzaa;

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
    new-instance v1, Lcom/google/android/engage/service/zzc;

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
