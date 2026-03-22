.class public final Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/shopping/datamodel/ShoppingCart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzh;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzh;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
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
            "Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzc(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzd(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addItemLabel(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zze(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addItemLabels(Ljava/util/List;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
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
            "Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzf(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzg(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
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
            "Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzh(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/shopping/datamodel/ShoppingCart;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/shopping/datamodel/ShoppingCart;-><init>(Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;Lcom/google/android/engage/shopping/datamodel/zza;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionLinkUri(Landroid/net/Uri;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzi(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setActionText(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzj(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLastUserInteractionTimestampMillis(J)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzk(Ljava/lang/Long;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setNumberOfItems(I)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzl(I)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/shopping/datamodel/ShoppingCart$Builder;->zza:Lcom/google/android/engage/common/datamodel/zzh;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzh;->zzm(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzh;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
