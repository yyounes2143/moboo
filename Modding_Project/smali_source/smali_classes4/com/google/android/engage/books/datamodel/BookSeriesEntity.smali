.class public final Lcom/google/android/engage/books/datamodel/BookSeriesEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/books/datamodel/BookSeriesEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/books/datamodel/zzd;

.field private final zzb:Lcom/google/common/collect/ImmutableList;

.field private final zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/books/datamodel/BookSeriesEntity$Builder;Lcom/google/android/engage/books/datamodel/zze;)V
    .locals 2

    .line 1
    const/16 p2, 0xa

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/BookSeriesEntity$Builder;->zzb(Lcom/google/android/engage/books/datamodel/BookSeriesEntity$Builder;)Lcom/google/android/engage/books/datamodel/zzb;

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
    iput-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/BookSeriesEntity$Builder;->zzc(Lcom/google/android/engage/books/datamodel/BookSeriesEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

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
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zzb:Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/BookSeriesEntity$Builder;->zza(Lcom/google/android/engage/books/datamodel/BookSeriesEntity$Builder;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zzc:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public getActionLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zzb:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAvailability()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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

.method public getBookCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zzc:I

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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

.method public isDownloadedOnDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zza:Lcom/google/android/engage/books/datamodel/zzd;

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
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zzb:Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v2, v2, [Ljava/lang/String;

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
    iget v1, p0, Lcom/google/android/engage/books/datamodel/BookSeriesEntity;->zzc:I

    .line 39
    .line 40
    const-string v2, "C"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method
