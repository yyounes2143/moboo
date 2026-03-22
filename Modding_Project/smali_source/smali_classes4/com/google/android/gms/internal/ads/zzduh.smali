.class public final Lcom/google/android/gms/internal/ads/zzduh;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzd:J

.field private final zze:Lcom/google/android/gms/internal/ads/zzcaf;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Ljava/lang/ref/WeakReference;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdpt;

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Ljava/util/concurrent/Executor;

.field private final zzk:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdso;

.field private final zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzn:Ljava/util/Map;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzdcx;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzfhq;

.field private zzq:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdpt;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdcx;Lcom/google/android/gms/internal/ads/zzfhq;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzb:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzc:Z

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcaf;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcaf;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zze:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 17
    .line 18
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzn:Ljava/util/Map;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzq:Z

    .line 27
    .line 28
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzh:Lcom/google/android/gms/internal/ads/zzdpt;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzf:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzg:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzi:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzj:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzl:Lcom/google/android/gms/internal/ads/zzdso;

    .line 41
    .line 42
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 43
    .line 44
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzo:Lcom/google/android/gms/internal/ads/zzdcx;

    .line 45
    .line 46
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzp:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzd:J

    .line 57
    .line 58
    const-string p1, ""

    .line 59
    .line 60
    const-string p2, "com.google.android.gms.ads.MobileAds"

    .line 61
    .line 62
    invoke-direct {p0, p2, v0, p1, v0}, Lcom/google/android/gms/internal/ads/zzduh;->zzv(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzduh;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzduh;)Lcom/google/android/gms/internal/ads/zzcaf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zze:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzduh;)Lcom/google/android/gms/internal/ads/zzdcx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzo:Lcom/google/android/gms/internal/ads/zzdcx;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzduh;)Lcom/google/android/gms/internal/ads/zzdso;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzl:Lcom/google/android/gms/internal/ads/zzdso;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzduh;)Lcom/google/android/gms/internal/ads/zzfhq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzp:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzduh;Lcom/google/android/gms/internal/ads/zzfhc;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zze:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzc(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzp:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfhc;->zzm()Lcom/google/android/gms/internal/ads/zzfhg;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfhq;->zzc(Lcom/google/android/gms/internal/ads/zzfhg;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzduh;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzi:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzduh;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcaf;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfhc;)V
    .locals 3

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcaf;->isDone()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "Timeout."

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    sub-long/2addr v1, p4

    .line 19
    long-to-int p4, v1

    .line 20
    const/4 p5, 0x0

    .line 21
    invoke-direct {p0, p3, p5, v0, p4}, Lcom/google/android/gms/internal/ads/zzduh;->zzv(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzl:Lcom/google/android/gms/internal/ads/zzdso;

    .line 25
    .line 26
    const-string v0, "timeout"

    .line 27
    .line 28
    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzdso;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzo:Lcom/google/android/gms/internal/ads/zzdcx;

    .line 32
    .line 33
    const-string v0, "timeout"

    .line 34
    .line 35
    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzdcx;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzp:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 39
    .line 40
    const-string p3, "Timeout"

    .line 41
    .line 42
    invoke-interface {p6, p3}, Lcom/google/android/gms/internal/ads/zzfhc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 43
    .line 44
    .line 45
    invoke-interface {p6, p5}, Lcom/google/android/gms/internal/ads/zzfhc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 46
    .line 47
    .line 48
    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzfhc;->zzm()Lcom/google/android/gms/internal/ads/zzfhg;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzfhq;->zzc(Lcom/google/android/gms/internal/ads/zzfhg;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzcaf;->zzc(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzduh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzl:Lcom/google/android/gms/internal/ads/zzdso;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdso;->zze()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzo:Lcom/google/android/gms/internal/ads/zzdcx;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcx;->zze()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzb:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/ads/zzduh;Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdub;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdub;-><init>(Lcom/google/android/gms/internal/ads/zzduh;Lcom/google/android/gms/internal/ads/zzcaf;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzi:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/ads/zzduh;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzc:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "com.google.android.gms.ads.MobileAds"

    .line 11
    .line 12
    const-string v1, "Timeout."

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzd:J

    .line 23
    .line 24
    sub-long/2addr v2, v4

    .line 25
    long-to-int v2, v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzduh;->zzv(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzl:Lcom/google/android/gms/internal/ads/zzdso;

    .line 31
    .line 32
    const-string v1, "com.google.android.gms.ads.MobileAds"

    .line 33
    .line 34
    const-string v2, "timeout"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdso;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzo:Lcom/google/android/gms/internal/ads/zzdcx;

    .line 40
    .line 41
    const-string v1, "com.google.android.gms.ads.MobileAds"

    .line 42
    .line 43
    const-string v2, "timeout"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcx;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zze:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/Exception;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzd(Ljava/lang/Throwable;)Z

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw v0
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/ads/zzduh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzfdn;Ljava/util/List;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbly;->zzf()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzg:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/Context;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzf:Landroid/content/Context;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p3, v0, p2, p4}, Lcom/google/android/gms/internal/ads/zzfdn;->zzi(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbly;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfcw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfwa;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfwa;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :catch_1
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string p3, "Failed to initialize adapter. "

    .line 43
    .line 44
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " does not implement the initialize() method."

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzbly;->zze(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_2
    move-exception p0

    .line 64
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 65
    .line 66
    const-string p1, ""

    .line 67
    .line 68
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzduh;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzc:Z

    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzduh;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v9, "data"

    .line 4
    .line 5
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzf:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v11, 0x5

    .line 8
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzfhb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 9
    .line 10
    .line 11
    move-result-object v12

    .line 12
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzfhc;->zzi()Lcom/google/android/gms/internal/ads/zzfhc;

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    .line 21
    .line 22
    move-object/from16 v2, p1

    .line 23
    .line 24
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "initializer_settings"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "config"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v15

    .line 39
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v16

    .line 43
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v4, v0

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzfhb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzfhc;->zzi()Lcom/google/android/gms/internal/ads/zzfhc;

    .line 61
    .line 62
    .line 63
    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/ads/zzfhc;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 64
    .line 65
    .line 66
    new-instance v2, Ljava/lang/Object;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcaf;

    .line 72
    .line 73
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcaf;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzca:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/Long;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    .line 94
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 95
    .line 96
    invoke-static {v3, v5, v6, v0, v8}, Lcom/google/android/gms/internal/ads/zzgcy;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzl:Lcom/google/android/gms/internal/ads/zzdso;

    .line 101
    .line 102
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzdso;->zzc(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzo:Lcom/google/android/gms/internal/ads/zzdcx;

    .line 106
    .line 107
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzdcx;->zzc(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v5

    .line 118
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtx;

    .line 119
    .line 120
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdtx;-><init>(Lcom/google/android/gms/internal/ads/zzduh;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcaf;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfhc;)V

    .line 121
    .line 122
    .line 123
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzi:Ljava/util/concurrent/Executor;

    .line 124
    .line 125
    invoke-interface {v8, v0, v11}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .line 130
    .line 131
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdug;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    .line 132
    .line 133
    move-object v8, v3

    .line 134
    move-object v3, v2

    .line 135
    move-object/from16 v2, p0

    .line 136
    .line 137
    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdug;-><init>(Lcom/google/android/gms/internal/ads/zzduh;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzcaf;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 138
    .line 139
    .line 140
    move-object v3, v1

    .line 141
    move-object v1, v2

    .line 142
    :try_start_3
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 149
    .line 150
    .line 151
    const-string v6, ""

    .line 152
    .line 153
    if-eqz v0, :cond_1

    .line 154
    .line 155
    :try_start_4
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/4 v2, 0x0

    .line 160
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-ge v2, v7, :cond_1

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const-string v8, "format"

    .line 171
    .line 172
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    new-instance v11, Landroid/os/Bundle;

    .line 181
    .line 182
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 183
    .line 184
    .line 185
    if-eqz v7, :cond_0

    .line 186
    .line 187
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v17

    .line 191
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v18

    .line 195
    if-eqz v18, :cond_0

    .line 196
    .line 197
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v18

    .line 201
    move-object/from16 v13, v18

    .line 202
    .line 203
    check-cast v13, Ljava/lang/String;

    .line 204
    .line 205
    move-object/from16 p1, v0

    .line 206
    .line 207
    invoke-virtual {v7, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v11, v13, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v0, p1

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_0
    move-object/from16 p1, v0

    .line 218
    .line 219
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbme;

    .line 220
    .line 221
    invoke-direct {v0, v8, v11}, Lcom/google/android/gms/internal/ads/zzbme;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 225
    .line 226
    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 228
    .line 229
    move-object/from16 v0, p1

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :catch_0
    :cond_1
    const/4 v2, 0x0

    .line 233
    :try_start_5
    invoke-direct {v1, v4, v2, v6, v2}, Lcom/google/android/gms/internal/ads/zzduh;->zzv(Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 234
    .line 235
    .line 236
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzh:Lcom/google/android/gms/internal/ads/zzdpt;

    .line 237
    .line 238
    new-instance v2, Lorg/json/JSONObject;

    .line 239
    .line 240
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzdpt;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfdn;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzj:Ljava/util/concurrent/Executor;

    .line 248
    .line 249
    move-object v2, v4

    .line 250
    move-object v4, v0

    .line 251
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduc;

    .line 252
    .line 253
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzduc;-><init>(Lcom/google/android/gms/internal/ads/zzduh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzfdn;Ljava/util/List;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzfcw; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 257
    .line 258
    .line 259
    :goto_3
    const/4 v11, 0x5

    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :catch_1
    move-exception v0

    .line 263
    goto :goto_6

    .line 264
    :catch_2
    move-exception v0

    .line 265
    :try_start_7
    const-string v2, "Failed to create Adapter."

    .line 266
    .line 267
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zznj:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 268
    .line 269
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_2

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v2, " "

    .line 298
    .line 299
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    goto :goto_4

    .line 310
    :catch_3
    move-exception v0

    .line 311
    goto :goto_5

    .line 312
    :cond_2
    :goto_4
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzbly;->zze(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :goto_5
    :try_start_8
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 317
    .line 318
    invoke-static {v6, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :catch_4
    move-exception v0

    .line 323
    move-object v1, v2

    .line 324
    goto :goto_6

    .line 325
    :catch_5
    move-exception v0

    .line 326
    move-object/from16 v1, p0

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_3
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzgcy;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgcw;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdty;

    .line 334
    .line 335
    invoke-direct {v2, v1, v12}, Lcom/google/android/gms/internal/ads/zzdty;-><init>(Lcom/google/android/gms/internal/ads/zzduh;Lcom/google/android/gms/internal/ads/zzfhc;)V

    .line 336
    .line 337
    .line 338
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzi:Ljava/util/concurrent/Executor;

    .line 339
    .line 340
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgcw;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :goto_6
    const-string v2, "Malformed CLD response"

    .line 345
    .line 346
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzo:Lcom/google/android/gms/internal/ads/zzdcx;

    .line 350
    .line 351
    const-string v3, "MalformedJson"

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdcx;->zza(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzl:Lcom/google/android/gms/internal/ads/zzdso;

    .line 357
    .line 358
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdso;->zza(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzduh;->zze:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 362
    .line 363
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcaf;->zzd(Ljava/lang/Throwable;)Z

    .line 364
    .line 365
    .line 366
    const-string v2, "AdapterInitializer.updateAdapterStatus"

    .line 367
    .line 368
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzn;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzduh;->zzp:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 376
    .line 377
    invoke-interface {v12, v0}, Lcom/google/android/gms/internal/ads/zzfhc;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 378
    .line 379
    .line 380
    const/4 v2, 0x0

    .line 381
    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/ads/zzfhc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 382
    .line 383
    .line 384
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzfhc;->zzm()Lcom/google/android/gms/internal/ads/zzfhg;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfhq;->zzc(Lcom/google/android/gms/internal/ads/zzfhg;)V

    .line 389
    .line 390
    .line 391
    return-void
.end method

.method public static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzduh;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzduh;->zzv(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final declared-synchronized zzu()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzn;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzbzh;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzh;->zzc()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcaf;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcaf;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzn;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdtz;

    .line 46
    .line 47
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdtz;-><init>(Lcom/google/android/gms/internal/ads/zzduh;Lcom/google/android/gms/internal/ads/zzcaf;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzo(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-object v0

    .line 55
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw v0
.end method

.method private final zzv(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblu;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzblu;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzn:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zzg()Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzn:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/google/android/gms/internal/ads/zzblu;

    .line 33
    .line 34
    new-instance v5, Lcom/google/android/gms/internal/ads/zzblu;

    .line 35
    .line 36
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzblu;->zzb:Z

    .line 37
    .line 38
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzblu;->zzc:I

    .line 39
    .line 40
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzblu;->zzd:Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v5, v3, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzblu;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method public final zzq()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzq:Z

    .line 3
    .line 4
    return-void
.end method

.method public final zzr()V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfb;->zza:Lcom/google/android/gms/internal/ads/zzbef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 17
    .line 18
    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zzbZ:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-lt v0, v2, :cond_2

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzq:Z

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Z

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzl:Lcom/google/android/gms/internal/ads/zzdso;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdso;->zzf()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzo:Lcom/google/android/gms/internal/ads/zzdcx;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcx;->zzf()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zze:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 67
    .line 68
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdud;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdud;-><init>(Lcom/google/android/gms/internal/ads/zzduh;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzi:Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcaf;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 76
    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Z

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzduh;->zzu()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 85
    .line 86
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdtw;

    .line 87
    .line 88
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdtw;-><init>(Lcom/google/android/gms/internal/ads/zzduh;)V

    .line 89
    .line 90
    .line 91
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzcb:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    .line 109
    invoke-interface {v1, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/google/android/gms/internal/ads/zzduf;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzduf;-><init>(Lcom/google/android/gms/internal/ads/zzduh;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgcy;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)V

    .line 118
    .line 119
    .line 120
    monitor-exit p0

    .line 121
    return-void

    .line 122
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw v0

    .line 124
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Z

    .line 125
    .line 126
    if-nez v0, :cond_3

    .line 127
    .line 128
    const-string v0, ""

    .line 129
    .line 130
    const-string v2, "com.google.android.gms.ads.MobileAds"

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzduh;->zzv(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zze:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 137
    .line 138
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcaf;->zzc(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Z

    .line 144
    .line 145
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzb:Z

    .line 146
    .line 147
    :cond_3
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzbmb;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdua;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdua;-><init>(Lcom/google/android/gms/internal/ads/zzduh;Lcom/google/android/gms/internal/ads/zzbmb;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzj:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zze:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zzb:Z

    .line 2
    .line 3
    return v0
.end method
