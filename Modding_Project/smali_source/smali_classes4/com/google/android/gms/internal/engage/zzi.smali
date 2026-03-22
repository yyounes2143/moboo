.class final Lcom/google/android/gms/internal/engage/zzi;
.super Lcom/google/android/gms/internal/engage/zze;
.source "Proguard"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/engage/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/engage/zzo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/engage/zzi;->zza:Lcom/google/android/gms/internal/engage/zzo;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/engage/zze;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/engage/zzi;->zza:Lcom/google/android/gms/internal/engage/zzo;

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
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzi(Lcom/google/android/gms/internal/engage/zzo;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzi(Lcom/google/android/gms/internal/engage/zzo;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzf(Lcom/google/android/gms/internal/engage/zzo;)Lcom/google/android/gms/internal/engage/zzd;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "Leaving the connection open for other ongoing calls."

    .line 34
    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/engage/zzd;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzd(Lcom/google/android/gms/internal/engage/zzo;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzf(Lcom/google/android/gms/internal/engage/zzo;)Lcom/google/android/gms/internal/engage/zzd;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v4, "Unbind from service."

    .line 55
    .line 56
    new-array v5, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/engage/zzd;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zza(Lcom/google/android/gms/internal/engage/zzo;)Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzb(Lcom/google/android/gms/internal/engage/zzo;)Landroid/content/ServiceConnection;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/engage/zzo;->zzm(Lcom/google/android/gms/internal/engage/zzo;Z)V

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/engage/zzo;->zzn(Lcom/google/android/gms/internal/engage/zzo;Landroid/os/IInterface;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/engage/zzo;->zzl(Lcom/google/android/gms/internal/engage/zzo;Landroid/content/ServiceConnection;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzp(Lcom/google/android/gms/internal/engage/zzo;)V

    .line 83
    .line 84
    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 87
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw v0
.end method
