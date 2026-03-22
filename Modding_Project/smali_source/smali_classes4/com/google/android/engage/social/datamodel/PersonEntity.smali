.class public final Lcom/google/android/engage/social/datamodel/PersonEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;,
        Lcom/google/android/engage/social/datamodel/PersonEntity$EligibleContentCategory;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/social/datamodel/zzj;

.field private final zzb:Lcom/google/android/engage/social/datamodel/Profile;

.field private final zzc:Lcom/google/android/engage/common/datamodel/Image;

.field private final zzd:Lcom/google/android/engage/social/datamodel/Popularity;

.field private final zze:Lcom/google/android/engage/common/datamodel/Rating;

.field private final zzf:Lcom/google/android/engage/common/datamodel/Address;

.field private final zzg:Lcom/google/common/collect/ImmutableList;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/common/collect/ImmutableList;

.field private final zzj:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;Lcom/google/android/engage/social/datamodel/zzc;)V
    .locals 2

    .line 1
    const/16 p2, 0x23

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzf(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/engage/social/datamodel/zzj;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p2, v1}, Lcom/google/android/engage/social/datamodel/zzj;-><init>(Lcom/google/android/engage/social/datamodel/zzh;Lcom/google/android/engage/social/datamodel/zzi;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zze(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/social/datamodel/Profile;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzb:Lcom/google/android/engage/social/datamodel/Profile;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzb(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/common/datamodel/Image;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzc:Lcom/google/android/engage/common/datamodel/Image;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzd(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/social/datamodel/Popularity;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzd:Lcom/google/android/engage/social/datamodel/Popularity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzc(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/common/datamodel/Rating;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zze:Lcom/google/android/engage/common/datamodel/Rating;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zza(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzf:Lcom/google/android/engage/common/datamodel/Address;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzg(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzj(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzh:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzi(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzh(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public getActionLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/social/datamodel/zzj;->zza()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBadgeList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Badge;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentCategoryList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescription()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzh:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/social/datamodel/zzj;->zzc()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHeaderImage()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzc:Lcom/google/android/engage/common/datamodel/Image;

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

.method public getLocation()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Address;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzf:Lcom/google/android/engage/common/datamodel/Address;

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

.method public getPopularity()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/social/datamodel/Popularity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzd:Lcom/google/android/engage/social/datamodel/Popularity;

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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/social/datamodel/zzj;->zze()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProfile()Lcom/google/android/engage/social/datamodel/Profile;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzb:Lcom/google/android/engage/social/datamodel/Profile;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRating()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Rating;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zze:Lcom/google/android/engage/common/datamodel/Rating;

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

.method public getSubtitleList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
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
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zza:Lcom/google/android/engage/social/datamodel/zzj;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/social/datamodel/zzj;->zzb()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzb:Lcom/google/android/engage/social/datamodel/Profile;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "B"

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/engage/social/datamodel/Profile;->zza()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzc:Lcom/google/android/engage/common/datamodel/Image;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v2, "J"

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Image;->zza()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzd:Lcom/google/android/engage/social/datamodel/Popularity;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const-string v2, "C"

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/google/android/engage/social/datamodel/Popularity;->zza()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zze:Lcom/google/android/engage/common/datamodel/Rating;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const-string v2, "D"

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Rating;->zza()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzf:Lcom/google/android/engage/common/datamodel/Address;

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    const-string v2, "E"

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Address;->zza()Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x0

    .line 88
    if-nez v2, :cond_6

    .line 89
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    move v5, v3

    .line 100
    :goto_0
    if-ge v5, v4, :cond_5

    .line 101
    .line 102
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Lcom/google/android/engage/common/datamodel/Badge;

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/google/android/engage/common/datamodel/Badge;->zza()Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const-string v1, "F"

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzh:Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    const-string v2, "G"

    .line 128
    .line 129
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_8

    .line 139
    .line 140
    new-array v2, v3, [Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, [Ljava/lang/String;

    .line 147
    .line 148
    const-string v2, "H"

    .line 149
    .line 150
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_9

    .line 160
    .line 161
    new-instance v2, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    .line 168
    .line 169
    const-string v1, "I"

    .line 170
    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    .line 173
    .line 174
    :cond_9
    return-object v0
.end method
