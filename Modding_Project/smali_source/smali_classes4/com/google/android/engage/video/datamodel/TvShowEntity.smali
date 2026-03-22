.class public final Lcom/google/android/engage/video/datamodel/TvShowEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/video/datamodel/zzv;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Ljava/lang/Long;

.field private final zze:Ljava/lang/Long;

.field private final zzf:I

.field private final zzg:I

.field private final zzh:Lcom/google/common/collect/ImmutableList;

.field private final zzi:Ljava/util/List;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzj:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzk:Ljava/util/List;

.field private final zzl:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;Lcom/google/android/engage/video/datamodel/zzr;)V
    .locals 2

    .line 1
    const/4 p2, 0x2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzf(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Lcom/google/android/engage/video/datamodel/zzt;

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
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzc(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzb:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzd(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzc:Landroid/net/Uri;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzk(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzd:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzl(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zze:Ljava/lang/Long;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zza(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iput p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzf:I

    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzb(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iput p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzg:I

    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzi(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzh:Lcom/google/common/collect/ImmutableList;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzh(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzi:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzg(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzk:Ljava/util/List;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zze(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;->zzj(Lcom/google/android/engage/video/datamodel/TvShowEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

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
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public getAvailability()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzf:I

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzk:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzi:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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

.method public getFirstEpisodeAirDateEpochMillis()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzd:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzh:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfoPageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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

.method public getLatestEpisodeAirDateEpochMillis()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zze:Ljava/lang/Long;

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

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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

.method public getPlatformSpecificPlaybackUris()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayBackUri()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzc:Landroid/net/Uri;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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

.method public getSeasonCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzg:I

    .line 2
    .line 3
    return v0
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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

.method public final toBundle()Landroid/os/Bundle;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzc:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzb:Landroid/net/Uri;

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
    iget v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzf:I

    .line 35
    .line 36
    const-string v2, "F"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzh:Lcom/google/common/collect/ImmutableList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    new-array v2, v3, [Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, [Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, "H"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzg:I

    .line 64
    .line 65
    const-string v2, "G"

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzd:Ljava/lang/Long;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const-string v2, "D"

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zze:Ljava/lang/Long;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    const-string v2, "E"

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzi:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    new-array v2, v3, [Ljava/lang/String;

    .line 105
    .line 106
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, [Ljava/lang/String;

    .line 111
    .line 112
    const-string v2, "I"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 118
    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    const-string v2, "K"

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzk:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_8

    .line 137
    .line 138
    new-instance v2, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_7

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Lcom/google/android/engage/video/datamodel/RatingSystem;

    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/google/android/engage/video/datamodel/RatingSystem;->zza()Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_7
    const-string v1, "J"

    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 170
    .line 171
    .line 172
    :cond_8
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvShowEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_a

    .line 179
    .line 180
    new-instance v2, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    :goto_1
    if-ge v3, v4, :cond_9

    .line 190
    .line 191
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    check-cast v5, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;

    .line 196
    .line 197
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zza()Landroid/os/Bundle;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_9
    const-string v1, "L"

    .line 208
    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    return-object v0
.end method
