.class public final Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/audio/datamodel/MusicArtistEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/audio/datamodel/zza;

.field private zzb:Landroid/net/Uri;

.field private zzc:Landroid/net/Uri;


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
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
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
            "Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzb(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/audio/datamodel/MusicArtistEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity;-><init>(Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;Lcom/google/android/engage/audio/datamodel/zzg;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzc(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzd(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setInfoPageUri(Landroid/net/Uri;)Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLastEngagementTimeMillis(J)Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/audio/datamodel/zza;->zze(J)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzf(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayBackUri(Landroid/net/Uri;)Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/MusicArtistEntity$Builder;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method
