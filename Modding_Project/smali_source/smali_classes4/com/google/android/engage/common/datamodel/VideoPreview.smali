.class public final Lcom/google/android/engage/common/datamodel/VideoPreview;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/VideoPreview$Builder;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Long;

.field private final zzb:Lcom/google/android/engage/common/datamodel/Image;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/VideoPreview$Builder;Lcom/google/android/engage/common/datamodel/zzar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/VideoPreview$Builder;->zzb(Lcom/google/android/engage/common/datamodel/VideoPreview$Builder;)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/VideoPreview;->zza:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/VideoPreview$Builder;->zza(Lcom/google/android/engage/common/datamodel/VideoPreview$Builder;)Lcom/google/android/engage/common/datamodel/Image;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/VideoPreview;->zzb:Lcom/google/android/engage/common/datamodel/Image;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getDurationMillis()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/VideoPreview;->zza:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImage()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/VideoPreview;->zzb:Lcom/google/android/engage/common/datamodel/Image;

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
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/VideoPreview;->zza:Ljava/lang/Long;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "A"

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/VideoPreview;->zzb:Lcom/google/android/engage/common/datamodel/Image;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v2, "B"

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Image;->zza()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-object v0
.end method
