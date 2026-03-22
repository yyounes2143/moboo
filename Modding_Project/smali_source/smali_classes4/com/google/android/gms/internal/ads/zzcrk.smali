.class final Lcom/google/android/gms/internal/ads/zzcrk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgcu;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcrm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcrm;Lcom/google/android/gms/internal/ads/zzgcu;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zza:Lcom/google/android/gms/internal/ads/zzgcu;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzb:Lcom/google/android/gms/internal/ads/zzcrm;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zza:Lcom/google/android/gms/internal/ads/zzgcu;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcu;->zza(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzb:Lcom/google/android/gms/internal/ads/zzcrm;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcrm;->zzd(Lcom/google/android/gms/internal/ads/zzcrm;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrf;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcrf;->zza:Ljava/util/List;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zza:Lcom/google/android/gms/internal/ads/zzgcu;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzb:Lcom/google/android/gms/internal/ads/zzcrm;

    .line 8
    .line 9
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcrm;->zzc(Lcom/google/android/gms/internal/ads/zzcrm;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgcu;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
