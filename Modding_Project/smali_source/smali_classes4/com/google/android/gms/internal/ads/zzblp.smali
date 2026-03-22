.class final Lcom/google/android/gms/internal/ads/zzblp;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzblh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzblt;Lcom/google/android/gms/internal/ads/zzblh;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblp;->zza:Lcom/google/android/gms/internal/ads/zzblh;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbln;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcaf;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcaf;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzblo;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzblo;-><init>(Lcom/google/android/gms/internal/ads/zzblp;Lcom/google/android/gms/internal/ads/zzcaf;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzblp;->zza:Lcom/google/android/gms/internal/ads/zzblh;

    .line 14
    .line 15
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbln;->zze(Lcom/google/android/gms/internal/ads/zzblh;Lcom/google/android/gms/internal/ads/zzblm;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
