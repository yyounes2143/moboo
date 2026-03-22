.class public final synthetic Lcom/google/android/engage/service/zzr;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/engage/service/zzy;


# instance fields
.field public final synthetic zza:Lcom/google/android/engage/service/zzaa;

.field public final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/service/zzaa;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/engage/service/zzr;->zza:Lcom/google/android/engage/service/zzaa;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/engage/service/zzr;->zzb:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/engage/protocol/IAppEngageService;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/engage/service/zzv;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/engage/service/zzr;->zza:Lcom/google/android/engage/service/zzaa;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/engage/service/zzv;-><init>(Lcom/google/android/engage/service/zzaa;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/engage/service/zzz;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/android/engage/service/zzr;->zzb:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-interface {p1, p2, v0}, Lcom/google/android/engage/protocol/IAppEngageService;->deleteClusters(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServiceDeleteClustersCallback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
