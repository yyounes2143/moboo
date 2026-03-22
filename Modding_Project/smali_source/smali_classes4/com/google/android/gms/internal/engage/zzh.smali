.class final Lcom/google/android/gms/internal/engage/zzh;
.super Lcom/google/android/gms/internal/engage/zze;
.source "Proguard"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/gms/internal/engage/zze;

.field final synthetic zzc:Lcom/google/android/gms/internal/engage/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/engage/zzo;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/engage/zze;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/engage/zzh;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/engage/zzh;->zzb:Lcom/google/android/gms/internal/engage/zze;

    .line 4
    .line 5
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/engage/zzh;->zzc:Lcom/google/android/gms/internal/engage/zzo;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/engage/zzh;->zzc:Lcom/google/android/gms/internal/engage/zzo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzg(Lcom/google/android/gms/internal/engage/zzo;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/engage/zzh;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/engage/zzo;->zzo(Lcom/google/android/gms/internal/engage/zzo;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzi(Lcom/google/android/gms/internal/engage/zzo;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzf(Lcom/google/android/gms/internal/engage/zzo;)Lcom/google/android/gms/internal/engage/zzd;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "Already connected to the service."

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/engage/zzd;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/engage/zzh;->zzb:Lcom/google/android/gms/internal/engage/zze;

    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/engage/zzo;->zzq(Lcom/google/android/gms/internal/engage/zzo;Lcom/google/android/gms/internal/engage/zze;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v0
.end method
