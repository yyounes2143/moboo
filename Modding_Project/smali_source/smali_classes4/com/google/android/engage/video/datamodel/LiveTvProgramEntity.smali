.class public final Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/video/datamodel/zzv;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/engage/common/datamodel/Image;

.field private final zze:Lcom/google/common/collect/ImmutableList;

.field private final zzf:Lcom/google/common/collect/ImmutableList;

.field private final zzg:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;Lcom/google/android/engage/video/datamodel/zzc;)V
    .locals 2

    .line 1
    const/16 p2, 0x2c

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzb(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/engage/video/datamodel/zzv;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p2, v1}, Lcom/google/android/engage/video/datamodel/zzv;-><init>(Lcom/google/android/engage/video/datamodel/zzt;Lcom/google/android/engage/video/datamodel/zzu;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzd(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzf(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzb:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzg(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzc:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/android/engage/common/datamodel/Image;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzd:Lcom/google/android/engage/common/datamodel/Image;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zze(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzc(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zze:Lcom/google/common/collect/ImmutableList;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public getAvailabilityTimeWindows()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzi()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getChannelId()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzb:Ljava/lang/String;

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

.method public getChannelLogoImage()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzd:Lcom/google/android/engage/common/datamodel/Image;

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

.method public getChannelName()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzc:Ljava/lang/String;

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

.method public getContentRatings()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/video/datamodel/RatingSystem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zze:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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

.method public getGenres()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzh()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosterImages()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzj()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
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
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zza:Lcom/google/android/engage/video/datamodel/zzv;

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
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-array v2, v3, [Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "B"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzb:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    const-string v2, "C"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzc:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    const-string v2, "D"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzd:Lcom/google/android/engage/common/datamodel/Image;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const-string v2, "E"

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Image;->zza()Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_5

    .line 84
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    move v5, v3

    .line 95
    :goto_0
    if-ge v5, v4, :cond_4

    .line 96
    .line 97
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;

    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;->zza()Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    const-string v1, "G"

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;->zze:Lcom/google/common/collect/ImmutableList;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_7

    .line 125
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    :goto_1
    if-ge v3, v4, :cond_6

    .line 136
    .line 137
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Lcom/google/android/engage/video/datamodel/RatingSystem;

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/google/android/engage/video/datamodel/RatingSystem;->zza()Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    const-string v1, "F"

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    return-object v0
.end method
