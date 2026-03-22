.class public final synthetic Lcom/google/android/gms/internal/ads/zzfty;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfua;

.field public final synthetic zzb:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfua;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfty;->zza:Lcom/google/android/gms/internal/ads/zzfua;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfty;->zzb:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfty;->zzb:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfsc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfty;->zza:Lcom/google/android/gms/internal/ads/zzfua;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfua;->zza:Lcom/google/android/gms/internal/ads/zzfuc;

    .line 10
    .line 11
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zzk(Lcom/google/android/gms/internal/ads/zzfuc;Landroid/os/IInterface;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzd(Lcom/google/android/gms/internal/ads/zzfuc;)Lcom/google/android/gms/internal/ads/zzfud;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v3, "linkToDeath"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    new-array v5, v4, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzfud;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzb(Lcom/google/android/gms/internal/ads/zzfuc;)Landroid/os/IInterface;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfuc;->zza(Lcom/google/android/gms/internal/ads/zzfuc;)Landroid/os/IBinder$DeathRecipient;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v0, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfua;->zza:Lcom/google/android/gms/internal/ads/zzfuc;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzd(Lcom/google/android/gms/internal/ads/zzfuc;)Lcom/google/android/gms/internal/ads/zzfud;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-array v3, v4, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v5, "linkToDeath failed"

    .line 57
    .line 58
    invoke-virtual {v2, v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzfud;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfua;->zza:Lcom/google/android/gms/internal/ads/zzfuc;

    .line 62
    .line 63
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzfuc;->zzj(Lcom/google/android/gms/internal/ads/zzfuc;Z)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zze(Lcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    monitor-enter v1

    .line 71
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zze(Lcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Runnable;

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto :goto_3

    .line 97
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zze(Lcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    .line 103
    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 106
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw v0
.end method
