.class public final Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/social/datamodel/zzh;

.field private zzb:Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

.field private zzc:Lcom/google/android/engage/social/datamodel/Profile;

.field private zzd:Lcom/google/android/engage/social/datamodel/Interaction;

.field private final zze:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/social/datamodel/zzh;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/social/datamodel/zzh;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/android/engage/social/datamodel/Interaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzd:Lcom/google/android/engage/social/datamodel/Interaction;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/android/engage/social/datamodel/PortraitMediaPost;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzb:Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/android/engage/social/datamodel/Profile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzc:Lcom/google/android/engage/social/datamodel/Profile;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/android/engage/social/datamodel/zzh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
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
            "Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzc(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzd(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addInteractions(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
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
            "Lcom/google/android/engage/social/datamodel/Interaction;",
            ">;)",
            "Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity;-><init>(Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;Lcom/google/android/engage/social/datamodel/zze;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionLinkUri(Landroid/net/Uri;)Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzg(Landroid/net/Uri;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zza:Lcom/google/android/engage/social/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzh(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setInteraction(Lcom/google/android/engage/social/datamodel/Interaction;)Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/social/datamodel/Interaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzd:Lcom/google/android/engage/social/datamodel/Interaction;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPortraitMediaPost(Lcom/google/android/engage/social/datamodel/PortraitMediaPost;)Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/social/datamodel/PortraitMediaPost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzb:Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProfile(Lcom/google/android/engage/social/datamodel/Profile;)Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/social/datamodel/Profile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaEntity$Builder;->zzc:Lcom/google/android/engage/social/datamodel/Profile;

    .line 2
    .line 3
    return-object p0
.end method
