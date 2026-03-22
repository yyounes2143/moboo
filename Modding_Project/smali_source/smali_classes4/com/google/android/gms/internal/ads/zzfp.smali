.class public final Lcom/google/android/gms/internal/ads/zzfp;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfyc;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzfi;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzfk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzd:Lcom/google/android/gms/internal/ads/zzfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfg;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfi;Lcom/google/android/gms/internal/ads/zzfk;Lcom/google/android/gms/internal/ads/zzfo;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzfk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfyc;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zza:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzc:Lcom/google/android/gms/internal/ads/zzfk;

    .line 20
    .line 21
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:Lcom/google/android/gms/internal/ads/zzfo;

    .line 22
    .line 23
    return-void
.end method
