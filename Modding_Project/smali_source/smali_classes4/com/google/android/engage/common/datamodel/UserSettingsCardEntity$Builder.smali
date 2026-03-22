.class public final Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzb(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzc(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;-><init>(Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;Lcom/google/android/engage/common/datamodel/zzaq;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionText(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzd(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setActionUri(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zze(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzf(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzg(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;->zzh(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/EngagementEntityCommonMetadata$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
