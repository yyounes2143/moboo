.class public final Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/audio/datamodel/zzc;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Ljava/lang/Integer;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/common/collect/ImmutableList;

.field private final zzg:Lcom/google/common/collect/ImmutableList;

.field private final zzh:Z

.field private final zzi:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;Lcom/google/android/engage/audio/datamodel/zzl;)V
    .locals 2

    .line 1
    const/16 p2, 0xe

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zzc(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Lcom/google/android/engage/audio/datamodel/zza;

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
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zza(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzb:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zzb(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzc:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zzf(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzd:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zzg(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zze:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zze(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zzd(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zzh(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    iput-boolean p2, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzh:Z

    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;->zzi(Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity$Builder;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-boolean p1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzi:Z

    .line 73
    .line 74
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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

.method public getEpisodeCount()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzd:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzg:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfoPageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzb:Landroid/net/Uri;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzc:Landroid/net/Uri;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zze:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public isDownloadedOnDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzh:Z

    .line 2
    .line 3
    return v0
.end method

.method public isExplicitContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzi:Z

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zza:Lcom/google/android/engage/audio/datamodel/zzc;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzc:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzb:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzd:Ljava/lang/Integer;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v2, "D"

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zze:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x0

    .line 67
    if-nez v2, :cond_4

    .line 68
    .line 69
    new-array v2, v3, [Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, [Ljava/lang/String;

    .line 76
    .line 77
    const-string v2, "F"

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_5

    .line 89
    .line 90
    new-array v2, v3, [Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, [Ljava/lang/String;

    .line 97
    .line 98
    const-string v2, "G"

    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzi:Z

    .line 104
    .line 105
    const-string v2, "H"

    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/google/android/engage/audio/datamodel/PodcastSeriesEntity;->zzh:Z

    .line 111
    .line 112
    const-string v2, "I"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method
