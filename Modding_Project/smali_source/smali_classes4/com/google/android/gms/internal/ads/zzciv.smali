.class final Lcom/google/android/gms/internal/ads/zzciv;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeyj;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhge;

.field final zze:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zzg:Landroid/content/Context;

.field private final zzh:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzj:Lcom/google/android/gms/internal/ads/zzcil;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzg:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzi:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzciv;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 17
    .line 18
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzb:Lcom/google/android/gms/internal/ads/zzhge;

    .line 23
    .line 24
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzK:Lcom/google/android/gms/internal/ads/zzhge;

    .line 25
    .line 26
    new-instance p3, Lcom/google/android/gms/internal/ads/zzeks;

    .line 27
    .line 28
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzeks;-><init>(Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzc:Lcom/google/android/gms/internal/ads/zzhge;

    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekx;->zza()Lcom/google/android/gms/internal/ads/zzekx;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzd:Lcom/google/android/gms/internal/ads/zzhge;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzday;->zza()Lcom/google/android/gms/internal/ads/zzday;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzciv;->zze:Lcom/google/android/gms/internal/ads/zzhge;

    .line 56
    .line 57
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcil;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 58
    .line 59
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzcil;->zzQ:Lcom/google/android/gms/internal/ads/zzhge;

    .line 60
    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcr;->zza()Lcom/google/android/gms/internal/ads/zzfcr;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyh;

    .line 66
    .line 67
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzeyh;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzejx;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzf:Lcom/google/android/gms/internal/ads/zzhge;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzejx;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v5, v0

    .line 10
    check-cast v5, Lcom/google/android/gms/internal/ads/zzeyg;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzc:Lcom/google/android/gms/internal/ads/zzhge;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v6, v0

    .line 19
    check-cast v6, Lcom/google/android/gms/internal/ads/zzekr;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzj:Lcom/google/android/gms/internal/ads/zzcil;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcil;->zzF(Lcom/google/android/gms/internal/ads/zzcil;)Lcom/google/android/gms/internal/ads/zzche;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzchw;->zzc(Lcom/google/android/gms/internal/ads/zzche;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcil;->zzK:Lcom/google/android/gms/internal/ads/zzhge;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v8, v0

    .line 38
    check-cast v8, Lcom/google/android/gms/internal/ads/zzdsd;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzg:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzi:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzejx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeyg;Lcom/google/android/gms/internal/ads/zzekr;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdsd;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method
