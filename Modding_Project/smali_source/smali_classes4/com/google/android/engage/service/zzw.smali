.class final Lcom/google/android/engage/service/zzw;
.super Lcom/google/android/engage/protocol/IAppEngageServicePublishClustersCallback$Stub;
.source "Proguard"


# instance fields
.field final synthetic zza:Lcom/google/android/engage/service/zzaa;

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/service/zzaa;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/engage/service/zzz;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/engage/service/zzw;->zza:Lcom/google/android/engage/service/zzaa;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/engage/protocol/IAppEngageServicePublishClustersCallback$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/engage/service/zzw;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onPublishClusters(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/zzw;->zza:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/engage/service/zzw;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/engage/zzo;->zzu(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/engage/service/zzw;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
