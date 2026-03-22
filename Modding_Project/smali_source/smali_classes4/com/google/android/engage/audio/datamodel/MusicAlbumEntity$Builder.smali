.class public final Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/audio/datamodel/zza;

.field private final zzb:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzc:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzd:Lcom/google/common/collect/ImmutableList$Builder;

.field private zze:Ljava/lang/Integer;

.field private zzf:Ljava/lang/Long;

.field private zzg:Ljava/lang/Long;

.field private zzh:Landroid/net/Uri;

.field private zzi:Landroid/net/Uri;

.field private zzj:Z

.field private zzk:Z

.field private zzl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/audio/datamodel/zza;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/audio/datamodel/zza;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 28
    .line 29
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzl:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzh:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzi:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zze:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzg:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzf:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzj:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzk:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public addArtist(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addArtists(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
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
            "Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addGenres(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
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
            "Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addMusicLabel(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addMusicLabels(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
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
            "Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
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
            "Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzb(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity;-><init>(Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;Lcom/google/android/engage/audio/datamodel/zzf;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzc(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDownloadedOnDevice(Z)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzj:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setDurationMillis(J)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
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
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzg:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzd(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setExplicitContent(Z)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzk:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setInfoPageUri(Landroid/net/Uri;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzh:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLastEngagementTimeMillis(J)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/audio/datamodel/zza;->zze(J)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMusicAlbumType(I)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzl:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzf(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayBackUri(Landroid/net/Uri;)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzi:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProgressPercentComplete(I)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzg(I)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setReleaseDateEpochMillis(J)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
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
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zzf:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setSongsCount(I)Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;
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
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/MusicAlbumEntity$Builder;->zze:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method
