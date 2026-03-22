.class public final Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/books/datamodel/EbookEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzb:Ljava/lang/Long;

.field private zzc:Ljava/lang/Integer;

.field private zzd:Lcom/google/android/engage/common/datamodel/Price;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/Integer;

.field private final zzg:Lcom/google/android/engage/books/datamodel/zzb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/engage/books/datamodel/zzb;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/engage/books/datamodel/zzb;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzd:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzc:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzf:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzb:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;)",
            "Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/engage/books/datamodel/zzb;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public addAuthor(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addAuthors(Ljava/util/List;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/engage/books/datamodel/zzb;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzd(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addGenres(Ljava/util/List;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zze(Ljava/util/List;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzf(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;)",
            "Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzg(Ljava/util/List;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/books/datamodel/EbookEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/books/datamodel/EbookEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/books/datamodel/EbookEntity;-><init>(Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;Lcom/google/android/engage/books/datamodel/zzf;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionLinkUri(Landroid/net/Uri;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzh(Landroid/net/Uri;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAvailability(I)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzi(I)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setContinueBookType(I)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzj(I)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzk(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDownloadedOnDevice(Z)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzl(Z)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzm(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLastEngagementTimeMillis(J)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/books/datamodel/zzb;->zzn(J)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzo(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPageCount(I)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzc:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setPrice(Lcom/google/android/engage/common/datamodel/Price;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Price;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzd:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProgressPercentComplete(I)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzp(I)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPublishDateEpochMillis(J)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzb:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setRating(Lcom/google/android/engage/common/datamodel/Rating;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Rating;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzg:Lcom/google/android/engage/books/datamodel/zzb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzq(Lcom/google/android/engage/common/datamodel/Rating;)Lcom/google/android/engage/books/datamodel/zzb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSeriesName(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSeriesUnitIndex(Ljava/lang/Integer;)Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/EbookEntity$Builder;->zzf:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method
