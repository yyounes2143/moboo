.class public final Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;Lcom/google/android/engage/common/datamodel/zzaq;)V
    .locals 1

    .line 1
    const/16 p2, 0x1a

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza(Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance p2, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p2, p1, v0}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;-><init>(Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;Lcom/google/android/engage/common/datamodel/zzr;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;->zzf()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getActionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;->zza()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEntityId()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;->zzc()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPosterImages()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;->zzg()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSubtitle()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;->zzd()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitle()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;->zze()Lcom/google/common/base/Optional;

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
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata;->zzb()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
