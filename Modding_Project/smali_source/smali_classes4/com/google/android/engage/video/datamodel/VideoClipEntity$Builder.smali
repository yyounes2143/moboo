.class public final Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/video/datamodel/VideoClipEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/video/datamodel/zzt;

.field private zzb:Landroid/net/Uri;

.field private zzc:J

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private final zzh:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzi:Lcom/google/android/engage/common/datamodel/Image;


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
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 10
    .line 11
    const-wide/high16 v0, -0x8000000000000000L

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzc:J

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzd:J

    .line 18
    .line 19
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 24
    .line 25
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzc:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)Lcom/google/android/engage/common/datamodel/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzi:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)Lcom/google/android/engage/video/datamodel/zzt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzg:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public addAllAvailabilityTimeWindows(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzd(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addAvailabilityTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zze(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPlatformSpecificPlaybackUri(Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/PlatformSpecificUri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPlatformSpecificPlaybackUris(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzf(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
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
            "Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzg(Ljava/util/List;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/video/datamodel/VideoClipEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/video/datamodel/VideoClipEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/video/datamodel/VideoClipEntity;-><init>(Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;Lcom/google/android/engage/video/datamodel/zzs;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setCreatedTimeEpochMillis(J)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzc:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCreatorImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzi:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDownloadedOnDevice(Z)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzg:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setDurationMillis(J)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzd:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzi(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLastEngagementTimeMillis(J)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/video/datamodel/zzt;->zzj(J)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLastPlayBackPositionTimeMillis(J)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/video/datamodel/zzt;->zzk(J)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayBackUri(Landroid/net/Uri;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setViewCount(Ljava/lang/String;)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setWatchNextType(I)Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/VideoClipEntity$Builder;->zza:Lcom/google/android/engage/video/datamodel/zzt;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzn(I)Lcom/google/android/engage/video/datamodel/zzt;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
