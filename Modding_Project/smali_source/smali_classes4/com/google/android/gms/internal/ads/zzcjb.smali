.class final Lcom/google/android/gms/internal/ads/zzcjb;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdto;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhge;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbkv;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcil;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcjb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbkv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzh:Lcom/google/android/gms/internal/ads/zzcjb;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzg:Lcom/google/android/gms/internal/ads/zzcil;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zze:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzf:Lcom/google/android/gms/internal/ads/zzbkv;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 17
    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhfw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhfv;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzb:Lcom/google/android/gms/internal/ads/zzhge;

    .line 23
    .line 24
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdtk;

    .line 25
    .line 26
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzdtk;-><init>(Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzc:Lcom/google/android/gms/internal/ads/zzhge;

    .line 30
    .line 31
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdtm;

    .line 32
    .line 33
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzdtm;-><init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhfu;->zzc(Lcom/google/android/gms/internal/ads/zzhge;)Lcom/google/android/gms/internal/ads/zzhge;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzd:Lcom/google/android/gms/internal/ads/zzhge;

    .line 41
    .line 42
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcjb;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zze:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzdtf;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzciy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzg:Lcom/google/android/gms/internal/ads/zzcil;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzh:Lcom/google/android/gms/internal/ads/zzcjb;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzciy;-><init>(Lcom/google/android/gms/internal/ads/zzcil;Lcom/google/android/gms/internal/ads/zzcjb;Lcom/google/android/gms/internal/ads/zzcjp;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdtj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzf:Lcom/google/android/gms/internal/ads/zzbkv;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtk;->zzc(Lcom/google/android/gms/internal/ads/zzbkv;)Lcom/google/android/gms/internal/ads/zzdtj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdtl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzd:Lcom/google/android/gms/internal/ads/zzhge;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtl;

    .line 8
    .line 9
    return-object v0
.end method
