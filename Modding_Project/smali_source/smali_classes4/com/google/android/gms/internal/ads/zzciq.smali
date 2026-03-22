.class final Lcom/google/android/gms/internal/ads/zzciq;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzewv;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhge;

.field final zze:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciq;->zzg:Lcom/google/android/gms/internal/ads/zzcil;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzciq;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 11
    .line 12
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciq;->zzb:Lcom/google/android/gms/internal/ads/zzhge;

    .line 17
    .line 18
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzbf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzbg:Lcom/google/android/gms/internal/ads/zzhge;

    .line 21
    .line 22
    new-instance v4, Lcom/google/android/gms/internal/ads/zzezn;

    .line 23
    .line 24
    invoke-direct {v4, v1, p3, v0}, Lcom/google/android/gms/internal/ads/zzezn;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 25
    .line 26
    .line 27
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzciq;->zzc:Lcom/google/android/gms/internal/ads/zzhge;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzext;

    .line 30
    .line 31
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzext;-><init>(Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzciq;->zzd:Lcom/google/android/gms/internal/ads/zzhge;

    .line 39
    .line 40
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcil;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzQ:Lcom/google/android/gms/internal/ads/zzhge;

    .line 43
    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcr;->zza()Lcom/google/android/gms/internal/ads/zzfcr;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzj:Lcom/google/android/gms/internal/ads/zzhge;

    .line 49
    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/zzexv;

    .line 51
    .line 52
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzexv;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 53
    .line 54
    .line 55
    move-object v6, v7

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzciq;->zze:Lcom/google/android/gms/internal/ads/zzhge;

    .line 61
    .line 62
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzK:Lcom/google/android/gms/internal/ads/zzhge;

    .line 63
    .line 64
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyb;

    .line 65
    .line 66
    move-object v2, v1

    .line 67
    move-object v1, v3

    .line 68
    move-object v3, p2

    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzeyb;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciq;->zzf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeya;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciq;->zzf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzeya;

    .line 8
    .line 9
    return-object v0
.end method
