.class public final Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/social/datamodel/PortraitMediaPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private final zzb:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzc:Ljava/lang/Long;

.field private zzd:Z

.field private zze:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zzc:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zze:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zzd:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public addVisualContent(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addVisualContents(Ljava/util/List;)Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;
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
            "Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/social/datamodel/PortraitMediaPost;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/social/datamodel/PortraitMediaPost;-><init>(Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;Lcom/google/android/engage/social/datamodel/zzf;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setIsVideoContent(Z)Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zzd:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTextContent(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zzc:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setVideoDurationMillis(J)Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/PortraitMediaPost$Builder;->zze:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method
