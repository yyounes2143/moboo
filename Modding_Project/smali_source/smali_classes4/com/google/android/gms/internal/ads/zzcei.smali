.class public final synthetic Lcom/google/android/gms/internal/ads/zzcei;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzads;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzadn;
    .locals 7

    .line 1
    sget p1, Lcom/google/android/gms/internal/ads/zzcej;->zza:I

    .line 2
    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajb;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajb;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzahq;

    .line 9
    .line 10
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzahq;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 14
    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzakj;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x0

    .line 22
    const/16 v2, 0x20

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzakj;ILcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzajh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaet;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzadn;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object p1, v1, v2

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    aput-object p2, v1, p1

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    aput-object v0, v1, p1

    .line 40
    .line 41
    return-object v1
.end method
