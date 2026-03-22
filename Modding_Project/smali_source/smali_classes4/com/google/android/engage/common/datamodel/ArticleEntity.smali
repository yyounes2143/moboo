.class public final Lcom/google/android/engage/common/datamodel/ArticleEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;,
        Lcom/google/android/engage/common/datamodel/ArticleEntity$EligibleContentCategory;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzu;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/common/collect/ImmutableList;

.field private final zzf:Lcom/google/common/collect/ImmutableList;

.field private final zzg:Lcom/google/common/collect/ImmutableList;

.field private final zzh:I

.field private final zzi:Ljava/lang/Long;

.field private final zzj:Lcom/google/android/engage/common/datamodel/Badge;

.field private final zzk:Ljava/lang/Long;

.field private final zzl:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;Lcom/google/android/engage/common/datamodel/zzc;)V
    .locals 2

    .line 1
    const/16 p2, 0x27

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzd(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzu;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p2, v1}, Lcom/google/android/engage/common/datamodel/zzu;-><init>(Lcom/google/android/engage/common/datamodel/zzs;Lcom/google/android/engage/common/datamodel/zzt;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zza:Lcom/google/android/engage/common/datamodel/zzu;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzb(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzb:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzl(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzc:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzk(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzd:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzh(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zze:Lcom/google/common/collect/ImmutableList;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zze(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

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
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzf(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zza(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iput p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzh:I

    .line 71
    .line 72
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzj(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzi:Ljava/lang/Long;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzc(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/android/engage/common/datamodel/Badge;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzj:Lcom/google/android/engage/common/datamodel/Badge;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzi(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzk:Ljava/lang/Long;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzg(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public getActionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzf:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzg:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzd:Ljava/lang/String;

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

.method public getDisplayTimeWindows()Lcom/google/common/collect/ImmutableList;
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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzl:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zza:Lcom/google/android/engage/common/datamodel/zzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzu;->zzb()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLastContentPublishTimestampMillis()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzk:Ljava/lang/Long;

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

.method public getLastEngagementTimestampMillis()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzi:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zza:Lcom/google/android/engage/common/datamodel/zzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzu;->zzc()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProgressPercentage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzh:I

    .line 2
    .line 3
    return v0
.end method

.method public getSource()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Badge;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzj:Lcom/google/android/engage/common/datamodel/Badge;

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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zze:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzc:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zza:Lcom/google/android/engage/common/datamodel/zzu;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/zzu;->zza()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzb:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzc:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v2, "C"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzd:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v2, "D"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zze:Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x0

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    new-array v2, v3, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, [Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "E"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    move v5, v3

    .line 83
    :goto_0
    if-ge v5, v4, :cond_4

    .line 84
    .line 85
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Lcom/google/android/engage/common/datamodel/Badge;

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/google/android/engage/common/datamodel/Badge;->zza()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const-string v1, "F"

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_6

    .line 113
    .line 114
    new-instance v2, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    const-string v1, "G"

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzh:I

    .line 128
    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    const-string v2, "H"

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    :cond_7
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzi:Ljava/lang/Long;

    .line 137
    .line 138
    if-eqz v1, :cond_8

    .line 139
    .line 140
    const-string v2, "I"

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 147
    .line 148
    .line 149
    :cond_8
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzj:Lcom/google/android/engage/common/datamodel/Badge;

    .line 150
    .line 151
    if-eqz v1, :cond_9

    .line 152
    .line 153
    const-string v2, "J"

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Badge;->zza()Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    .line 161
    .line 162
    :cond_9
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzk:Ljava/lang/Long;

    .line 163
    .line 164
    if-eqz v1, :cond_a

    .line 165
    .line 166
    const-string v2, "K"

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 173
    .line 174
    .line 175
    :cond_a
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity;->zzl:Lcom/google/common/collect/ImmutableList;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_c

    .line 182
    .line 183
    new-instance v2, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    :goto_1
    if-ge v3, v4, :cond_b

    .line 193
    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 199
    .line 200
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_b
    const-string v1, "L"

    .line 211
    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 213
    .line 214
    .line 215
    :cond_c
    return-object v0
.end method
