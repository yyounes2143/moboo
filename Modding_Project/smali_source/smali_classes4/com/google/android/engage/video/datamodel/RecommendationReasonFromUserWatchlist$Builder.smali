.class public final Lcom/google/android/engage/video/datamodel/RecommendationReasonFromUserWatchlist$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/video/datamodel/RecommendationReasonFromUserWatchlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/engage/video/datamodel/RecommendationReasonFromUserWatchlist;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/video/datamodel/RecommendationReasonFromUserWatchlist;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/engage/video/datamodel/RecommendationReasonFromUserWatchlist;-><init>(Lcom/google/android/engage/video/datamodel/zzg;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
