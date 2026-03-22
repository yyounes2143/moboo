.class public final Lcom/google/android/engage/video/datamodel/RecommendationReasonNewOnPartner;
.super Lcom/google/android/engage/common/datamodel/RecommendationReason;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/video/datamodel/RecommendationReasonNewOnPartner$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/zzi;)V
    .locals 0

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/engage/common/datamodel/RecommendationReason;-><init>(I)V

    return-void
.end method
