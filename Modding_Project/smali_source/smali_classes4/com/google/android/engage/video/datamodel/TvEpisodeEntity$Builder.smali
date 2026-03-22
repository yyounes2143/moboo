.class public final Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/video/datamodel/zzt;

.field private zzb:Landroid/net/Uri;

.field private zzc:Landroid/net/Uri;

.field private zzd:Ljava/lang/String;

.field private zze:J

.field private zzf:I

.field private final zzg:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzh:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzi:J

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Z

.field private zzm:Lcom/google/android/engage/common/datamodel/Price;

.field private zzn:Ljava/lang/String;

.field private final zzo:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzp:Ljava/lang/Boolean;

.field private final zzq:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 10
    .line 11
    const-wide/high16 v0, -0x8000000000000000L

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zze:J

    .line 14
    .line 15
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzo:Lcom/google/common/collect/ImmutableList$Builder;

    .line 32
    .line 33
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzq:Lcom/google/common/collect/ImmutableList$Builder;

    .line 38
    .line 39
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzf:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zze:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzi:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzo:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzq:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzp:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzo(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzp(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzn:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzq(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzl:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public addAllAvailabilityTimeWindows(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzd(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addAvailabilityTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zze(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentRating(Lcom/google/android/engage/video/datamodel/RatingSystem;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/video/datamodel/RatingSystem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzo:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public addContentRating(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public addContentRatings(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzo:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentRatingsLegacy(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addGenres(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPlatformSpecificPlaybackUri(Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzq:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPlatformSpecificPlaybackUris(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzq:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzf(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzg(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity;-><init>(Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;Lcom/google/android/engage/video/datamodel/zzp;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAirDateEpochMillis(J)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zze:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setAvailability(I)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzf:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setDownloadedOnDevice(Z)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzl:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setDurationMillis(J)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzi:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzi(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEpisodeDisplayNumber(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEpisodeNumber(I)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzd:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public setInfoPageUri(Landroid/net/Uri;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsNextEpisodeAvailable(Z)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzp:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setLastEngagementTimeMillis(J)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/video/datamodel/zzt;->zzj(J)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLastPlayBackPositionTimeMillis(J)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/video/datamodel/zzt;->zzk(J)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayBackUri(Landroid/net/Uri;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPrice(Lcom/google/android/engage/common/datamodel/Price;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Price;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSeasonNumber(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSeasonTitle(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setShowTitle(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zzn:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setWatchNextType(I)Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/TvEpisodeEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzn(I)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
