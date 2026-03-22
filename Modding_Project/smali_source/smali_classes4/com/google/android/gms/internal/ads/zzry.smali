.class final Lcom/google/android/gms/internal/ads/zzry;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzrw;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzsa;
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    .line 2
    .line 3
    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzrw;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzsc;
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzrw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsc;

    .line 8
    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzru;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzse;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzse;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x1771

    .line 18
    .line 19
    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzru;-><init>(Ljava/lang/Throwable;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzsc;-><init>(Lcom/google/android/gms/internal/ads/zzru;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method
