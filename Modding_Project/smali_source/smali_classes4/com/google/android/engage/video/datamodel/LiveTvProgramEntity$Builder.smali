.class public final Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/video/datamodel/zzt;

.field private final zzb:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/engage/common/datamodel/Image;

.field private final zzf:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzg:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/video/datamodel/zzt;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/video/datamodel/zzt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 28
    .line 29
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/android/engage/common/datamodel/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAvailabilityTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zze(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addAvailabilityTimeWindows(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzd(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentRating(Lcom/google/android/engage/video/datamodel/RatingSystem;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/video/datamodel/RatingSystem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentRatings(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/RatingSystem;",
            ">;)",
            "Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addGenres(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPlatformSpecificPlaybackUri(Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPlatformSpecificPlaybackUris(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;",
            ">;)",
            "Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzf(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzg(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity;-><init>(Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;Lcom/google/android/engage/video/datamodel/zzc;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setChannelLogoImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public setChannelName(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzh(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzi(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRecommendationReason(Lcom/google/android/engage/common/datamodel/RecommendationReason;)Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/RecommendationReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/LiveTvProgramEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzm(Lcom/google/android/engage/common/datamodel/RecommendationReason;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
