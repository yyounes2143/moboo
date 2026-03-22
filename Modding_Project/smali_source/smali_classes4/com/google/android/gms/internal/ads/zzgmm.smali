.class final Lcom/google/android/gms/internal/ads/zzgmm;
.super Lcom/google/android/gms/internal/ads/zzgex;
.source "Proguard"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzguq;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzguq;Lcom/google/android/gms/internal/ads/zzgmn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgex;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmm;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgmm;->zzb:Lcom/google/android/gms/internal/ads/zzguq;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmm;->zza:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgmm;->zzb:Lcom/google/android/gms/internal/ads/zzguq;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eq v3, v1, :cond_3

    .line 12
    .line 13
    if-eq v3, v0, :cond_2

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    if-eq v3, v4, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x4

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    const-string v3, "UNKNOWN"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v3, "CRUNCHY"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v3, "RAW"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string v3, "LEGACY"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const-string v3, "TINK"

    .line 34
    .line 35
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput-object v2, v0, v4

    .line 39
    .line 40
    aput-object v3, v0, v1

    .line 41
    .line 42
    const-string v1, "(typeUrl=%s, outputPrefixType=%s)"

    .line 43
    .line 44
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmm;->zzb:Lcom/google/android/gms/internal/ads/zzguq;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzguq;->zzd:Lcom/google/android/gms/internal/ads/zzguq;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
