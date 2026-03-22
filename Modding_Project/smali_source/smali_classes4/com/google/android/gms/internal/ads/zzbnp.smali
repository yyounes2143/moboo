.class final Lcom/google/android/gms/internal/ads/zzbnp;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcah;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbny;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhc;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbnz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnz;Lcom/google/android/gms/internal/ads/zzbny;Lcom/google/android/gms/internal/ads/zzfhc;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zza:Lcom/google/android/gms/internal/ads/zzbny;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzb:Lcom/google/android/gms/internal/ads/zzfhc;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzc:Lcom/google/android/gms/internal/ads/zzbnz;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    const-string v0, "loadNewJavascriptEngine (failure): Trying to acquire lock"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzc:Lcom/google/android/gms/internal/ads/zzbnz;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbnz;->zzf(Lcom/google/android/gms/internal/ads/zzbnz;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    const-string v2, "loadNewJavascriptEngine (failure): Lock acquired"

    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbnz;->zzk(Lcom/google/android/gms/internal/ads/zzbnz;I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "Failed loading new engine. Marking new engine destroyable."

    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zza:Lcom/google/android/gms/internal/ads/zzbny;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbny;->zzb()V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeo;->zzd:Lcom/google/android/gms/internal/ads/zzbef;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbnz;->zze(Lcom/google/android/gms/internal/ads/zzbnz;)Lcom/google/android/gms/internal/ads/zzfhq;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbnz;->zze(Lcom/google/android/gms/internal/ads/zzbnz;)Lcom/google/android/gms/internal/ads/zzfhq;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzb:Lcom/google/android/gms/internal/ads/zzfhc;

    .line 57
    .line 58
    const-string v3, "Failed loading new engine"

    .line 59
    .line 60
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfhc;->zzm()Lcom/google/android/gms/internal/ads/zzfhg;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfhq;->zzc(Lcom/google/android/gms/internal/ads/zzfhg;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const-string v0, "loadNewJavascriptEngine (failure): Lock released"

    .line 79
    .line 80
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw v0
.end method
