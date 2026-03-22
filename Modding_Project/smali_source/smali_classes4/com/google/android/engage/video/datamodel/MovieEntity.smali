.class public final Lcom/google/android/engage/video/datamodel/MovieEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/video/datamodel/zzv;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Ljava/lang/Long;

.field private final zze:I

.field private final zzf:J

.field private final zzg:Lcom/google/common/collect/ImmutableList;

.field private final zzh:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzi:Z

.field private final zzj:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzk:Lcom/google/common/collect/ImmutableList;

.field private final zzl:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;Lcom/google/android/engage/video/datamodel/zze;)V
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzf(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Lcom/google/android/engage/video/datamodel/zzv;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p2, v1}, Lcom/google/android/engage/video/datamodel/zzv;-><init>(Lcom/google/android/engage/video/datamodel/zzt;Lcom/google/android/engage/video/datamodel/zzu;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzd(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzb:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzc(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzc:Landroid/net/Uri;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzk(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzd:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zza(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iput p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zze:I

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzb(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzf:J

    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzi(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzh(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzh:Lcom/google/common/collect/ImmutableList;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzl(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    iput-boolean p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzi:Z

    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zze(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzg(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzk:Lcom/google/common/collect/ImmutableList;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;->zzj(Lcom/google/android/engage/video/datamodel/MovieEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public getAvailability()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zze:I

    .line 2
    .line 3
    return v0
.end method

.method public getAvailabilityTimeWindows()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzi()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentRatings()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/video/datamodel/RatingSystem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzk:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentRatingsLegacy()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzh:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescription()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzb()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzf:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEntityId()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzc()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getGenres()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfoPageUri()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLastEngagementTimeMillis()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzd()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLastPlayBackPositionTimeMillis()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zze()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzh()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPlatformSpecificPlaybackUris()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayBackUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosterImages()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzj()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPrice()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Price;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRecommendationReason()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/RecommendationReason;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzf()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReleaseDateEpochMillis()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzd:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWatchNextType()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzg()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isDownloadedOnDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzi:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/video/datamodel/zzv;->zza()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzb:Landroid/net/Uri;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "B"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzc:Landroid/net/Uri;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v2, "C"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzd:Ljava/lang/Long;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v2, "D"

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zze:I

    .line 48
    .line 49
    const-string v2, "E"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    iget-wide v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzf:J

    .line 55
    .line 56
    const-string v3, "F"

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x0

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    new-array v2, v3, [Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, [Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, "G"

    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzh:Lcom/google/common/collect/ImmutableList;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_4

    .line 90
    .line 91
    new-array v2, v3, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, [Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "H"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 105
    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    const-string v2, "J"

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzk:Lcom/google/common/collect/ImmutableList;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_7

    .line 124
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    move v5, v3

    .line 135
    :goto_0
    if-ge v5, v4, :cond_6

    .line 136
    .line 137
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Lcom/google/android/engage/video/datamodel/RatingSystem;

    .line 142
    .line 143
    invoke-virtual {v6}, Lcom/google/android/engage/video/datamodel/RatingSystem;->zza()Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    add-int/lit8 v5, v5, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_6
    const-string v1, "K"

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_9

    .line 165
    .line 166
    new-instance v2, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    :goto_1
    if-ge v3, v4, :cond_8

    .line 176
    .line 177
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;

    .line 182
    .line 183
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zza()Landroid/os/Bundle;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_8
    const-string v1, "L"

    .line 194
    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 196
    .line 197
    .line 198
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/engage/video/datamodel/MovieEntity;->zzi:Z

    .line 199
    .line 200
    const-string v2, "I"

    .line 201
    .line 202
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    .line 204
    .line 205
    return-object v0
.end method
