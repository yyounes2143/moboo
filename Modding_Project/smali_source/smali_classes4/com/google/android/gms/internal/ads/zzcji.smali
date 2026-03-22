.class final Lcom/google/android/gms/internal/ads/zzcji;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfbo;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhge;

.field final zze:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzg:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzh:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzi:Lcom/google/android/gms/internal/ads/zzcil;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcji;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzbf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzbg:Lcom/google/android/gms/internal/ads/zzhge;

    .line 15
    .line 16
    new-instance v4, Lcom/google/android/gms/internal/ads/zzezo;

    .line 17
    .line 18
    invoke-direct {v4, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzezo;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 19
    .line 20
    .line 21
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzb:Lcom/google/android/gms/internal/ads/zzhge;

    .line 22
    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfay;

    .line 24
    .line 25
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfay;-><init>(Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzc:Lcom/google/android/gms/internal/ads/zzhge;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcm;->zza()Lcom/google/android/gms/internal/ads/zzfcm;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzd:Lcom/google/android/gms/internal/ads/zzhge;

    .line 43
    .line 44
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcil;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzQ:Lcom/google/android/gms/internal/ads/zzhge;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcr;->zza()Lcom/google/android/gms/internal/ads/zzfcr;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbi;

    .line 53
    .line 54
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfbi;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 55
    .line 56
    .line 57
    move-object v4, v5

    .line 58
    move-object v5, v7

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcji;->zze:Lcom/google/android/gms/internal/ads/zzhge;

    .line 64
    .line 65
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbs;

    .line 66
    .line 67
    invoke-direct {p2, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzfbs;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 75
    .line 76
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfw;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzg:Lcom/google/android/gms/internal/ads/zzhge;

    .line 81
    .line 82
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzj:Lcom/google/android/gms/internal/ads/zzhge;

    .line 83
    .line 84
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzS:Lcom/google/android/gms/internal/ads/zzhge;

    .line 85
    .line 86
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzK:Lcom/google/android/gms/internal/ads/zzhge;

    .line 87
    .line 88
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbm;

    .line 89
    .line 90
    move-object v3, v1

    .line 91
    move-object v1, p2

    .line 92
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfbm;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzh:Lcom/google/android/gms/internal/ads/zzhge;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfbl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzh:Lcom/google/android/gms/internal/ads/zzhge;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbl;

    .line 8
    .line 9
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfbr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbr;

    .line 8
    .line 9
    return-object v0
.end method
