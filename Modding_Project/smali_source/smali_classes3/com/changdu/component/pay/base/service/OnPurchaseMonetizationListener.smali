.class public interface abstract Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00072\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
        "",
        "onPurchaseItemMonetizationResult",
        "",
        "inappItemList",
        "Ljava/util/ArrayList;",
        "Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;",
        "Lkotlin/collections/ArrayList;",
        "subsAppItemList",
        "pay-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onPurchaseItemMonetizationResult(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;",
            ">;)V"
        }
    .end annotation
.end method
