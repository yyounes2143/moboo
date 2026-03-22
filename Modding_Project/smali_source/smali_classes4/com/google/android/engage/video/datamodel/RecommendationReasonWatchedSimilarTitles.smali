.class public final Lcom/google/android/engage/video/datamodel/RecommendationReasonWatchedSimilarTitles;
.super Lcom/google/android/engage/common/datamodel/RecommendationReason;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/video/datamodel/RecommendationReasonWatchedSimilarTitles$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/RecommendationReasonWatchedSimilarTitles$Builder;Lcom/google/android/engage/video/datamodel/zzo;)V
    .locals 0

    .line 1
    const/4 p2, 0x4

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/RecommendationReason;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/RecommendationReasonWatchedSimilarTitles$Builder;->zza(Lcom/google/android/engage/video/datamodel/RecommendationReasonWatchedSimilarTitles$Builder;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/RecommendationReasonWatchedSimilarTitles;->zza:Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getSimilarTitles()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/RecommendationReasonWatchedSimilarTitles;->zza:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/RecommendationReasonWatchedSimilarTitles;->zza:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/RecommendationReason;->zza()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "A"

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v1
.end method
