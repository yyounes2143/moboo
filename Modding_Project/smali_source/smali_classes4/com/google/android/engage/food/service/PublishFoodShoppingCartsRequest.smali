.class public Lcom/google/android/engage/food/service/PublishFoodShoppingCartsRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/food/service/PublishFoodShoppingCartsRequest$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/food/service/PublishFoodShoppingCartsRequest$Builder;Lcom/google/android/engage/food/service/zzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/food/service/PublishFoodShoppingCartsRequest$Builder;->zza(Lcom/google/android/engage/food/service/PublishFoodShoppingCartsRequest$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/engage/food/service/PublishFoodShoppingCartsRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getFoodShoppingCarts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/food/datamodel/FoodShoppingCart;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/service/PublishFoodShoppingCartsRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zza()Lcom/google/android/engage/service/zzac;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/engage/service/zzab;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/zzab;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/engage/food/service/zzm;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/android/engage/food/service/zzm;-><init>(Lcom/google/android/engage/service/zzab;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/engage/food/service/PublishFoodShoppingCartsRequest;->zza:Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    invoke-static {v2, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/android/engage/service/zzac;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/google/android/engage/service/zzac;-><init>(Lcom/google/android/engage/service/zzab;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method
