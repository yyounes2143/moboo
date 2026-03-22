.class final Lcom/google/android/gms/ads/internal/client/zzeo;
.super Lcom/google/android/gms/ads/internal/client/zzcd;
.source "Proguard"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/preload/PreloadCallback;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzet;Lcom/google/android/gms/ads/preload/PreloadCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeo;->zza:Lcom/google/android/gms/ads/preload/PreloadCallback;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzeo;->zzb:Lcom/google/android/gms/ads/internal/client/zzet;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcd;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/client/zzfp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzeo;->zzb:Lcom/google/android/gms/ads/internal/client/zzet;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzet;->zzg(Lcom/google/android/gms/ads/internal/client/zzet;Lcom/google/android/gms/ads/internal/client/zzfp;)Lcom/google/android/gms/ads/preload/PreloadConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzeo;->zza:Lcom/google/android/gms/ads/preload/PreloadCallback;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/preload/PreloadCallback;->onAdsAvailable(Lcom/google/android/gms/ads/preload/PreloadConfiguration;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zzfp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzeo;->zzb:Lcom/google/android/gms/ads/internal/client/zzet;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzet;->zzg(Lcom/google/android/gms/ads/internal/client/zzet;Lcom/google/android/gms/ads/internal/client/zzfp;)Lcom/google/android/gms/ads/preload/PreloadConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzeo;->zza:Lcom/google/android/gms/ads/preload/PreloadCallback;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/preload/PreloadCallback;->onAdsExhausted(Lcom/google/android/gms/ads/preload/PreloadConfiguration;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
