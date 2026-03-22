.class public final Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzk;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzk;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzk;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster$Builder;)Lcom/google/android/engage/common/datamodel/zzk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addPointOfInterestEntity(Lcom/google/android/engage/travel/datamodel/PointOfInterestEntity;)Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/travel/datamodel/PointOfInterestEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzd(Lcom/google/android/engage/common/datamodel/Entity;)Lcom/google/android/engage/common/datamodel/zzk;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster;-><init>(Lcom/google/android/engage/travel/datamodel/ContinueSearchCluster$Builder;Lcom/google/android/engage/travel/datamodel/zza;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
