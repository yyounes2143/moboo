.class public final Lcom/google/android/gms/internal/ads/zzaxh;
.super Lcom/google/android/gms/internal/ads/zzayb;
.source "Proguard"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzawp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzask;IILcom/google/android/gms/internal/ads/zzawp;)V
    .locals 7

    .line 1
    const-string v3, "7KShiw4CrXn9e1sAZ1bf68KLoTIikFllvC3ALPO42ag="

    .line 2
    .line 3
    const/16 v6, 0x55

    .line 4
    .line 5
    const-string v2, "L3kNtlg7QY6D9Xl7pPswVVS/MCBOYXcB4vflYd8GjH187tfdUwj4wLKq5xN70kha"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayb;-><init>(Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzask;II)V

    .line 12
    .line 13
    .line 14
    iput-object p7, v0, Lcom/google/android/gms/internal/ads/zzaxh;->zzh:Lcom/google/android/gms/internal/ads/zzawp;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zze:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxh;->zzh:Lcom/google/android/gms/internal/ads/zzawp;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawp;->zzd()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawp;->zzh()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawp;->zzb()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawp;->zzf()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v5, 0x4

    .line 38
    new-array v5, v5, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    aput-object v2, v5, v6

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    aput-object v3, v5, v2

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    aput-object v4, v5, v3

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    aput-object v1, v5, v3

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, [J

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzd:Lcom/google/android/gms/internal/ads/zzask;

    .line 60
    .line 61
    monitor-enter v1

    .line 62
    :try_start_0
    aget-wide v3, v0, v6

    .line 63
    .line 64
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzask;->zzt(J)Lcom/google/android/gms/internal/ads/zzask;

    .line 65
    .line 66
    .line 67
    aget-wide v2, v0, v2

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzask;->zzs(J)Lcom/google/android/gms/internal/ads/zzask;

    .line 70
    .line 71
    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw v0
.end method
