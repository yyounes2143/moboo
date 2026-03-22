.class public final Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/RecommendationCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Landroid/net/Uri;

.field private zze:I

.field private final zzf:Lcom/google/android/engage/common/datamodel/zzk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zze:I

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzk;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzk;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzf:Lcom/google/android/engage/common/datamodel/zzk;

    .line 13
    .line 14
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zze:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzd:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;)Lcom/google/android/engage/common/datamodel/zzk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzf:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
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
            "Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzf:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzk;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzf:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzc(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/common/datamodel/zzk;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addEntity(Lcom/google/android/engage/common/datamodel/Entity;)Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Entity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzf:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzd(Lcom/google/android/engage/common/datamodel/Entity;)Lcom/google/android/engage/common/datamodel/zzk;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/common/datamodel/RecommendationCluster;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/RecommendationCluster;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/RecommendationCluster;-><init>(Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;Lcom/google/android/engage/common/datamodel/zzah;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionText(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setActionUri(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzd:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRecommendationClusterType(I)Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zze:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/RecommendationCluster$Builder;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
