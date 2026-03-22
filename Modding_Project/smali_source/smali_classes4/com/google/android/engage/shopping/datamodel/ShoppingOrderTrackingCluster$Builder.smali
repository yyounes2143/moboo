.class public final Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzab;

.field private zzb:I

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzab;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzab;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zzb:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzc(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
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
            "Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzd(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitle(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zze(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitles(Ljava/util/List;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzf(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster;-><init>(Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;Lcom/google/android/engage/shopping/datamodel/zzd;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionLinkUri(Landroid/net/Uri;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzg(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setNumberOfItems(Ljava/lang/Integer;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzh(Ljava/lang/Integer;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOrderDescription(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzi(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOrderReadyTimeWindow(Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzj(Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOrderTime(J)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/common/datamodel/zzab;->zzk(J)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOrderValue(Lcom/google/android/engage/common/datamodel/Price;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Price;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzl(Lcom/google/android/engage/common/datamodel/Price;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setShoppingOrderType(I)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zzb:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzm(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzab;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzn(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzab;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingOrderTrackingCluster$Builder;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
