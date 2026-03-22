.class public final synthetic Lcom/google/android/gms/internal/ads/zzftd;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzftl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfts;

.field public final synthetic zzc:I

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzftq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzftl;Lcom/google/android/gms/internal/ads/zzfts;ILcom/google/android/gms/internal/ads/zzftq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lcom/google/android/gms/internal/ads/zzfts;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzc:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzd:Lcom/google/android/gms/internal/ads/zzftq;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lcom/google/android/gms/internal/ads/zzftl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lcom/google/android/gms/internal/ads/zzfts;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzc:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzd:Lcom/google/android/gms/internal/ads/zzftq;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzftl;->zza(Lcom/google/android/gms/internal/ads/zzftl;Lcom/google/android/gms/internal/ads/zzfts;ILcom/google/android/gms/internal/ads/zzftq;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
