.class final Lcom/google/android/gms/internal/ads/zzfkq;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfkt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfkt;JLcom/google/android/gms/ads/internal/client/zzdx;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfkq;->zza:J

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzc:Lcom/google/android/gms/internal/ads/zzfkt;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzc:Lcom/google/android/gms/internal/ads/zzfkt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkt;->zze(Lcom/google/android/gms/internal/ads/zzfkt;)Lcom/google/android/gms/internal/ads/zzfkc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfkq;->zza:J

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkq;->zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkt;->zze(Lcom/google/android/gms/internal/ads/zzfkt;)Lcom/google/android/gms/internal/ads/zzfkc;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfkt;->zzk(Lcom/google/android/gms/internal/ads/zzfkt;Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkt;->zzf(Lcom/google/android/gms/internal/ads/zzfkt;)Lcom/google/android/gms/internal/ads/zzfkk;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfkc;->zzc(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
