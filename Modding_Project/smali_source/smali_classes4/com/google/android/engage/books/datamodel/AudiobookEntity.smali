.class public final Lcom/google/android/engage/books/datamodel/AudiobookEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/books/datamodel/zzd;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/lang/Long;

.field private final zze:Ljava/lang/Long;

.field private final zzf:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;Lcom/google/android/engage/books/datamodel/zza;)V
    .locals 2

    .line 1
    const/16 p2, 0x9

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;->zza(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/engage/books/datamodel/zzd;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p2, v1}, Lcom/google/android/engage/books/datamodel/zzd;-><init>(Lcom/google/android/engage/books/datamodel/zzb;Lcom/google/android/engage/books/datamodel/zzc;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;->zzc(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

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
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzb:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;->zzd(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzc:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;->zzg(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzd:Ljava/lang/Long;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;->zzf(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zze:Ljava/lang/Long;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;->zzb(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzf:Lcom/google/android/engage/common/datamodel/Price;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;->zzh(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzg:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;->zze(Lcom/google/android/engage/books/datamodel/AudiobookEntity$Builder;)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzh:Ljava/lang/Integer;

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public getActionLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzb()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAuthors()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzb:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAvailability()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContinueBookType()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzd()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zze()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDisplayTimeWindows()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzk()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDurationMillis()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zze:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzf()Lcom/google/common/base/Optional;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzl()Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzg()Lcom/google/common/base/Optional;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzj()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNarrators()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzc:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzm()Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzf:Lcom/google/android/engage/common/datamodel/Price;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzh()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPublishDateEpochMillis()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzd:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzi()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSeriesName()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzg:Ljava/lang/String;

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

.method public getSeriesUnitIndex()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzh:Ljava/lang/Integer;

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

.method public isDownloadedOnDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/books/datamodel/zzd;->zzn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/books/datamodel/zzd;->zzc()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzb:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

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
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzc:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    new-array v2, v3, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, [Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "C"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzd:Ljava/lang/Long;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const-string v2, "D"

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zze:Ljava/lang/Long;

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    const-string v2, "E"

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzf:Lcom/google/android/engage/common/datamodel/Price;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    const-string v2, "F"

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzg:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    const-string v2, "G"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/AudiobookEntity;->zzh:Ljava/lang/Integer;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    const-string v2, "H"

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    :cond_6
    return-object v0
.end method
