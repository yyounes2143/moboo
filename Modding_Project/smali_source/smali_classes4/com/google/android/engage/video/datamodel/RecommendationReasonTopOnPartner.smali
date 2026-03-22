.class public final Lcom/google/android/engage/video/datamodel/RecommendationReasonTopOnPartner;
.super Lcom/google/android/engage/common/datamodel/RecommendationReason;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/video/datamodel/RecommendationReasonTopOnPartner$Builder;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/RecommendationReasonTopOnPartner$Builder;Lcom/google/android/engage/video/datamodel/zzl;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/RecommendationReason;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/RecommendationReasonTopOnPartner$Builder;->zza(Lcom/google/android/engage/video/datamodel/RecommendationReasonTopOnPartner$Builder;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/RecommendationReasonTopOnPartner;->zza:Ljava/lang/Integer;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getNum()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/RecommendationReasonTopOnPartner;->zza:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/RecommendationReasonTopOnPartner;->zza:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/RecommendationReason;->zza()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v2, "A"

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v1
.end method
