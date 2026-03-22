.class public final Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/ArticleEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzs;

.field private zzb:Landroid/net/Uri;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private final zze:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzf:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzg:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzh:I

.field private zzi:Ljava/lang/Long;

.field private zzj:Lcom/google/android/engage/common/datamodel/Badge;

.field private zzk:Ljava/lang/Long;

.field private final zzl:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzs;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzs;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzl:Lcom/google/common/collect/ImmutableList$Builder;

    .line 34
    .line 35
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzh:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/android/engage/common/datamodel/Badge;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzj:Lcom/google/android/engage/common/datamodel/Badge;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzl:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzk:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzi:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzl:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addBadge(Lcom/google/android/engage/common/datamodel/Badge;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Badge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addBadges(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzf:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentCategories(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentCategory(I)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

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

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzl:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitle(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitles(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/common/datamodel/ArticleEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/ArticleEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/ArticleEntity;-><init>(Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;Lcom/google/android/engage/common/datamodel/zzc;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionUri(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLastContentPublishTimestampMillis(Ljava/lang/Long;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzk:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLastEngagementTimestampMillis(J)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
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
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzi:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setProgressPercentage(I)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzh:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSource(Lcom/google/android/engage/common/datamodel/Badge;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Badge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzj:Lcom/google/android/engage/common/datamodel/Badge;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/ArticleEntity$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
