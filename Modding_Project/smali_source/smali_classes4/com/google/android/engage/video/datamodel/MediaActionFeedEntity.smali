.class public final Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/engage/video/datamodel/zzv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity$Builder;Lcom/google/android/engage/video/datamodel/zzd;)V
    .locals 1

    .line 1
    const/16 p2, 0x2a

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity$Builder;->zzb(Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity$Builder;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zza:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity$Builder;->zza(Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity$Builder;)Lcom/google/android/engage/video/datamodel/zzt;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lcom/google/android/engage/video/datamodel/zzv;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, p1, v0}, Lcom/google/android/engage/video/datamodel/zzv;-><init>(Lcom/google/android/engage/video/datamodel/zzt;Lcom/google/android/engage/video/datamodel/zzu;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zzb:Lcom/google/android/engage/video/datamodel/zzv;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getDataFeedElementId()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zza:Ljava/lang/String;

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

.method public getDescription()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zzb:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzb()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zzb:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzh()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPosterImages()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zzb:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzj()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getRecommendationReason()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/RecommendationReason;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zzb:Lcom/google/android/engage/video/datamodel/zzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zzf()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v2, "A"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/MediaActionFeedEntity;->zzb:Lcom/google/android/engage/video/datamodel/zzv;

    .line 19
    .line 20
    const-string v2, "B"

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/engage/video/datamodel/zzv;->zza()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method
