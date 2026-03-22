.class public interface abstract Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\'J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\'J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000c\u001a\u00020\rH\'J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u0005H\'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\nH\'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\nH\'\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao;",
        "",
        "deleteByCdOrderId",
        "",
        "cdOrderId",
        "",
        "deleteByPurchaseToken",
        "purchaseToken",
        "getAll",
        "",
        "Lcom/changdu/component/pay/google/localdb/PurchaseOrder;",
        "getAllByStatus",
        "status",
        "",
        "getByCdOrderId",
        "getByPurchaseToken",
        "insertPurchaseOrder",
        "purchaseOrder",
        "updatePurchaseOrder",
        "newPurchaseOrder",
        "pay-google_release"
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
.method public abstract deleteByCdOrderId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM purchase_order WHERE cdOrderId = :cdOrderId"
    .end annotation
.end method

.method public abstract deleteByPurchaseToken(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM purchase_order WHERE purchaseToken = :purchaseToken"
    .end annotation
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM purchase_order"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/changdu/component/pay/google/localdb/PurchaseOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getAllByStatus(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM purchase_order WHERE status = :status"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/changdu/component/pay/google/localdb/PurchaseOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getByCdOrderId(Ljava/lang/String;)Lcom/changdu/component/pay/google/localdb/PurchaseOrder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM purchase_order WHERE cdOrderId = :cdOrderId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getByPurchaseToken(Ljava/lang/String;)Lcom/changdu/component/pay/google/localdb/PurchaseOrder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM purchase_order WHERE purchaseToken = :purchaseToken"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract insertPurchaseOrder(Lcom/changdu/component/pay/google/localdb/PurchaseOrder;)V
    .param p1    # Lcom/changdu/component/pay/google/localdb/PurchaseOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract updatePurchaseOrder(Lcom/changdu/component/pay/google/localdb/PurchaseOrder;)V
    .param p1    # Lcom/changdu/component/pay/google/localdb/PurchaseOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
        onConflict = 0x1
    .end annotation
.end method
