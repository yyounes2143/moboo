.class public final Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/social/datamodel/PersonEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/social/datamodel/zzh;

.field private zzb:Lcom/google/android/engage/social/datamodel/Profile;

.field private zzc:Lcom/google/android/engage/common/datamodel/Image;

.field private zzd:Lcom/google/android/engage/social/datamodel/Popularity;

.field private zze:Lcom/google/android/engage/common/datamodel/Rating;

.field private zzf:Lcom/google/android/engage/common/datamodel/Address;

.field private final zzg:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzj:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/social/datamodel/zzh;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/social/datamodel/zzh;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzi:Lcom/google/common/collect/ImmutableList$Builder;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 28
    .line 29
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzf:Lcom/google/android/engage/common/datamodel/Address;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/common/datamodel/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzc:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/common/datamodel/Rating;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/social/datamodel/Popularity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzd:Lcom/google/android/engage/social/datamodel/Popularity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/social/datamodel/Profile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzb:Lcom/google/android/engage/social/datamodel/Profile;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/android/engage/social/datamodel/zzh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzi:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addBadge(Lcom/google/android/engage/common/datamodel/Badge;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Badge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addBadges(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/Badge;",
            ">;)",
            "Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentCategories(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentCategory(I)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/social/datamodel/zzh;->zze(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
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
            "Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzf(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitle(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzi:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitles(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
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
            "Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzi:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/social/datamodel/PersonEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/social/datamodel/PersonEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/social/datamodel/PersonEntity;-><init>(Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;Lcom/google/android/engage/social/datamodel/zzc;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionLinkUri(Landroid/net/Uri;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzg(Landroid/net/Uri;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzh(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setHeaderImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzc:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(Lcom/google/android/engage/common/datamodel/Address;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Address;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzf:Lcom/google/android/engage/common/datamodel/Address;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPopularity(Lcom/google/android/engage/social/datamodel/Popularity;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/social/datamodel/Popularity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzd:Lcom/google/android/engage/social/datamodel/Popularity;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProfile(Lcom/google/android/engage/social/datamodel/Profile;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/social/datamodel/Profile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zzb:Lcom/google/android/engage/social/datamodel/Profile;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRating(Lcom/google/android/engage/common/datamodel/Rating;)Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Rating;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PersonEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method
