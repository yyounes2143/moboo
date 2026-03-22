.class public final Lcom/google/android/gms/internal/ads/zzgeh;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzgef;)Lcom/google/android/gms/internal/ads/zzget;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgef;->zza()Lcom/google/android/gms/internal/ads/zzgty;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzd(Lcom/google/android/gms/internal/ads/zzgty;)Lcom/google/android/gms/internal/ads/zzget;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzget;Lcom/google/android/gms/internal/ads/zzgeg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzget;->zzf()Lcom/google/android/gms/internal/ads/zzgty;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgeg;->zza(Lcom/google/android/gms/internal/ads/zzgty;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
