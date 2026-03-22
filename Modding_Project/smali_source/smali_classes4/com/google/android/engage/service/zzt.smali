.class final Lcom/google/android/engage/service/zzt;
.super Lcom/google/android/gms/internal/engage/zze;
.source "Proguard"


# instance fields
.field final synthetic zza:Lcom/google/android/engage/service/zzy;

.field final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzc:Lcom/google/android/engage/service/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/engage/service/zzaa;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/engage/service/zzy;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/engage/service/zzt;->zza:Lcom/google/android/engage/service/zzy;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/engage/service/zzt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/engage/service/zzt;->zzc:Lcom/google/android/engage/service/zzaa;

    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/engage/zze;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/engage/service/zzt;->zzc:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/engage/zzo;->zze()Landroid/os/IInterface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/engage/protocol/IAppEngageService;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/engage/service/zzt;->zza:Lcom/google/android/engage/service/zzy;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/engage/service/zzt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 16
    .line 17
    invoke-interface {v1, v0, v2}, Lcom/google/android/engage/service/zzy;->zza(Lcom/google/android/engage/protocol/IAppEngageService;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/engage/service/zzt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/engage/service/AppEngageException;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v1, v2}, Lcom/google/android/engage/service/AppEngageException;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    iget-object v0, p0, Lcom/google/android/engage/service/zzt;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 34
    .line 35
    new-instance v1, Lcom/google/android/engage/service/AppEngageException;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v1, v2}, Lcom/google/android/engage/service/AppEngageException;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method
