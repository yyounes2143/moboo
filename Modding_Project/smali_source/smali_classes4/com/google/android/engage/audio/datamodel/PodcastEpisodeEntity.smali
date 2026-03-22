.class public final Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/audio/datamodel/zzc;

.field private final zzb:I

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:J

.field private final zzh:Ljava/lang/Integer;

.field private final zzi:Lcom/google/common/collect/ImmutableList;

.field private final zzj:Lcom/google/common/collect/ImmutableList;

.field private final zzk:Z

.field private final zzl:J

.field private final zzm:Z

.field private final zzn:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;Lcom/google/android/engage/audio/datamodel/zzk;)V
    .locals 2

    .line 1
    const/16 p2, 0xf

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zze(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/engage/audio/datamodel/zzc;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p2, v1}, Lcom/google/android/engage/audio/datamodel/zzc;-><init>(Lcom/google/android/engage/audio/datamodel/zza;Lcom/google/android/engage/audio/datamodel/zzb;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzd(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzc:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzc(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzd:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzi(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zze:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzj(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzf:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zza(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzg:J

    .line 47
    .line 48
    iget p2, p1, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->listenNextType:I

    .line 49
    .line 50
    iput p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzb:I

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzh(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzh:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzg(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzf(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzk(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iput-boolean p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzk:Z

    .line 83
    .line 84
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzb(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    iput-wide v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzl:J

    .line 89
    .line 90
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzl(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iput-boolean p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzm:Z

    .line 95
    .line 96
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;->zzm(Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity$Builder;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput-boolean p1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzn:Z

    .line 101
    .line 102
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzb()Lcom/google/common/base/Optional;

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
    iget-wide v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzg:J

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzc()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEpisodeIndex()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzh:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHosts()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzi:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzd:Landroid/net/Uri;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzd()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getListenNextType()Lcom/google/common/base/Optional;
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
    iget v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzb:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

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

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzf()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPlayBackUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPodcastSeriesTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zze:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zzg()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProductionName()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzf:Ljava/lang/String;

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

.method public getProgressPercentComplete()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/audio/datamodel/zzc;->zze()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPublishDateEpochMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isDownloadedOnDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzk:Z

    .line 2
    .line 3
    return v0
.end method

.method public isExplicitContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzm:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVideoPodcast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/audio/datamodel/zzc;->zza()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzc:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzd:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zze:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    const-string v2, "D"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzf:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    const-string v2, "E"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-wide v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzg:J

    .line 61
    .line 62
    const-string v3, "F"

    .line 63
    .line 64
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzb:I

    .line 68
    .line 69
    const-string v2, "N"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/4 v3, 0x0

    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    new-array v2, v3, [Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, [Ljava/lang/String;

    .line 90
    .line 91
    const-string v2, "H"

    .line 92
    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

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
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzh:Ljava/lang/Integer;

    .line 118
    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    const-string v2, "G"

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-wide v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzl:J

    .line 131
    .line 132
    const-string v3, "J"

    .line 133
    .line 134
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 135
    .line 136
    .line 137
    iget-boolean v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzn:Z

    .line 138
    .line 139
    const-string v2, "M"

    .line 140
    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    iget-boolean v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzm:Z

    .line 145
    .line 146
    const-string v2, "K"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    iget-boolean v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastEpisodeEntity;->zzk:Z

    .line 152
    .line 153
    const-string v2, "L"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    return-object v0
.end method
