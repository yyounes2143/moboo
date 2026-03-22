.class public final synthetic Lcom/google/android/gms/internal/ads/zzdmi;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcf;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdmo;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/zzb;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbxv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zza:Lcom/google/android/gms/internal/ads/zzdmo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzb:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzc:Lcom/google/android/gms/internal/ads/zzbxv;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zza:Lcom/google/android/gms/internal/ads/zzdmo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzb:Lcom/google/android/gms/ads/internal/zzb;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zzc:Lcom/google/android/gms/internal/ads/zzbxv;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdmo;->zza(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
