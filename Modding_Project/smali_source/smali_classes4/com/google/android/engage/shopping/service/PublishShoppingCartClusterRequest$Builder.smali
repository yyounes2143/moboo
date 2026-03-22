.class public Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/engage/shopping/datamodel/ShoppingCart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest$Builder;)Lcom/google/android/engage/shopping/datamodel/ShoppingCart;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest$Builder;->zza:Lcom/google/android/engage/shopping/datamodel/ShoppingCart;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest;-><init>(Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest$Builder;Lcom/google/android/engage/shopping/service/zzm;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setShoppingCart(Lcom/google/android/engage/shopping/datamodel/ShoppingCart;)Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/shopping/datamodel/ShoppingCart;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/shopping/service/PublishShoppingCartClusterRequest$Builder;->zza:Lcom/google/android/engage/shopping/datamodel/ShoppingCart;

    .line 2
    .line 3
    return-object p0
.end method
