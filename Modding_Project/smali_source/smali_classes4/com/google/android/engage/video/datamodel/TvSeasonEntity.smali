.class public final Lcom/google/android/engage/video/datamodel/TvSeasonEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;
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

.field private final zzi:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzj:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzk:Ljava/lang/String;

.field private final zzl:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;Lcom/google/android/engage/video/datamodel/zzq;)V
    .locals 2

    .line 1
    const/4 p2, 0x3

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzf(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Lcom/google/android/engage/video/datamodel/zzt;

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
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzc(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzb:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzd(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzc:Landroid/net/Uri;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzl(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzk:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzj(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzd:Ljava/lang/Long;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzk(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zze:Ljava/lang/Long;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zza(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iput p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzf:I

    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzb(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iput p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzg:I

    .line 58
    .line 59
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzi(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzh:Lcom/google/common/collect/ImmutableList;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzh(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zzg(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

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
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;->zze(Lcom/google/android/engage/video/datamodel/TvSeasonEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public getAvailability()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzf:I

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzl:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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

.method public getEpisodeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzg:I

    .line 2
    .line 3
    return v0
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzd:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzh:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfoPageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzb:Landroid/net/Uri;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zze:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzc:Landroid/net/Uri;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

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

.method public getSeasonDisplayNumber()Lcom/google/common/base/Optional;
    .locals 2
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzk:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzc:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzb:Landroid/net/Uri;

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
    iget v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzf:I

    .line 35
    .line 36
    const-string v2, "F"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzh:Lcom/google/common/collect/ImmutableList;

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
    iget v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzg:I

    .line 64
    .line 65
    const-string v2, "G"

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzk:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const-string v2, "M"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzd:Ljava/lang/Long;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    const-string v2, "D"

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zze:Ljava/lang/Long;

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    const-string v2, "E"

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    new-array v2, v3, [Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, [Ljava/lang/String;

    .line 120
    .line 121
    const-string v2, "I"

    .line 122
    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    const-string v2, "K"

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/TvSeasonEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_9

    .line 146
    .line 147
    new-instance v2, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    :goto_0
    if-ge v3, v4, :cond_8

    .line 157
    .line 158
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    check-cast v5, Lcom/google/android/engage/video/datamodel/RatingSystem;

    .line 163
    .line 164
    invoke-virtual {v5}, Lcom/google/android/engage/video/datamodel/RatingSystem;->zza()Landroid/os/Bundle;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_8
    const-string v1, "L"

    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    :cond_9
    return-object v0
.end method
