.class public final Lcom/google/android/gms/internal/ads/zzdgq;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhge;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;Lcom/google/android/gms/internal/ads/zzhge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzb:Lcom/google/android/gms/internal/ads/zzhge;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzc:Lcom/google/android/gms/internal/ads/zzhge;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzd:Lcom/google/android/gms/internal/ads/zzhge;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zze:Lcom/google/android/gms/internal/ads/zzhge;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zza:Lcom/google/android/gms/internal/ads/zzhge;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfz;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfz;->zzd()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Ljava/util/Map;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzb:Lcom/google/android/gms/internal/ads/zzhge;

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfz;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfz;->zzd()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Ljava/util/Map;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzc:Lcom/google/android/gms/internal/ads/zzhge;

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfz;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfz;->zzd()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Ljava/util/Map;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zze:Lcom/google/android/gms/internal/ads/zzhge;

    .line 35
    .line 36
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdgu;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgu;->zza()Lcom/google/android/gms/internal/ads/zzdiz;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdgq;->zzd:Lcom/google/android/gms/internal/ads/zzhge;

    .line 43
    .line 44
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgp;

    .line 45
    .line 46
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdgp;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhgk;Lcom/google/android/gms/internal/ads/zzdiz;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method
