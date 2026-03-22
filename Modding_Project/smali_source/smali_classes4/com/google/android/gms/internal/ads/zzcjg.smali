.class final Lcom/google/android/gms/internal/ads/zzcjg;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfaa;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhge;

.field final zze:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzg:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzh:Lcom/google/android/gms/internal/ads/zzcil;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 11
    .line 12
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzb:Lcom/google/android/gms/internal/ads/zzhge;

    .line 17
    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzc:Lcom/google/android/gms/internal/ads/zzhge;

    .line 23
    .line 24
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzK:Lcom/google/android/gms/internal/ads/zzhge;

    .line 25
    .line 26
    new-instance p4, Lcom/google/android/gms/internal/ads/zzeks;

    .line 27
    .line 28
    invoke-direct {p4, v9}, Lcom/google/android/gms/internal/ads/zzeks;-><init>(Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzd:Lcom/google/android/gms/internal/ads/zzhge;

    .line 36
    .line 37
    iget-object p4, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzbf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfay;

    .line 40
    .line 41
    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzfay;-><init>(Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zze:Lcom/google/android/gms/internal/ads/zzhge;

    .line 49
    .line 50
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcil;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzQ:Lcom/google/android/gms/internal/ads/zzhge;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcr;->zza()Lcom/google/android/gms/internal/ads/zzfcr;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzezy;

    .line 59
    .line 60
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzezy;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 68
    .line 69
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzj:Lcom/google/android/gms/internal/ads/zzhge;

    .line 70
    .line 71
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzS:Lcom/google/android/gms/internal/ads/zzhge;

    .line 72
    .line 73
    new-instance v0, Lcom/google/android/gms/internal/ads/zzela;

    .line 74
    .line 75
    move-object v2, p2

    .line 76
    move-object v3, p3

    .line 77
    move-object v6, v5

    .line 78
    move-object v5, v4

    .line 79
    move-object v4, p4

    .line 80
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzela;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzg:Lcom/google/android/gms/internal/ads/zzhge;

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzekz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjg;->zzg:Lcom/google/android/gms/internal/ads/zzhge;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzekz;

    .line 8
    .line 9
    return-object v0
.end method
