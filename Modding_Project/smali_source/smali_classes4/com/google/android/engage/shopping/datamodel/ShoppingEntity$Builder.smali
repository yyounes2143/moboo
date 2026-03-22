.class public final Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/shopping/datamodel/ShoppingEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzs;

.field private zzb:Landroid/net/Uri;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/engage/common/datamodel/Price;

.field private zzg:Lcom/google/android/engage/common/datamodel/Rating;

.field private final zzh:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzs;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzs;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzf:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;)Lcom/google/android/engage/common/datamodel/Rating;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
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
            "Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
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
            "Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/shopping/datamodel/ShoppingEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity;-><init>(Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;Lcom/google/android/engage/shopping/datamodel/zzb;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionLinkUri(Landroid/net/Uri;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCallout(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCalloutFinePrint(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPrice(Lcom/google/android/engage/common/datamodel/Price;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Price;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzf:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRating(Lcom/google/android/engage/common/datamodel/Rating;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Rating;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingEntity$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
