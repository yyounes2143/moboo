.class public final Lcom/changdu/component/pay/google/localdb/PurchaseOrder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/room/Entity;
    primaryKeys = {
        "cdOrderId",
        "purchaseToken"
    }
    tableName = "purchase_order"
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/changdu/component/pay/google/localdb/PurchaseTypeConverter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000eR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/changdu/component/pay/google/localdb/PurchaseOrder;",
        "",
        "cdOrderId",
        "",
        "jumpUrl",
        "sku",
        "skuType",
        "purchaseToken",
        "purchaseData",
        "Lcom/android/billingclient/api/Purchase;",
        "status",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;I)V",
        "getCdOrderId",
        "()Ljava/lang/String;",
        "getJumpUrl",
        "getPurchaseData",
        "()Lcom/android/billingclient/api/Purchase;",
        "setPurchaseData",
        "(Lcom/android/billingclient/api/Purchase;)V",
        "getPurchaseToken",
        "getSku",
        "getSkuType",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
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


# instance fields
.field private final cdOrderId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final jumpUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private purchaseData:Lcom/android/billingclient/api/Purchase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final purchaseToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sku:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final skuType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/Purchase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->cdOrderId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->jumpUrl:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->sku:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->skuType:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->purchaseToken:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->purchaseData:Lcom/android/billingclient/api/Purchase;

    .line 15
    .line 16
    iput p7, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->status:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getCdOrderId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->cdOrderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJumpUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->jumpUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPurchaseData()Lcom/android/billingclient/api/Purchase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->purchaseData:Lcom/android/billingclient/api/Purchase;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->purchaseToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->sku:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->skuType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final setPurchaseData(Lcom/android/billingclient/api/Purchase;)V
    .locals 0
    .param p1    # Lcom/android/billingclient/api/Purchase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->purchaseData:Lcom/android/billingclient/api/Purchase;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->status:I

    .line 2
    .line 3
    return-void
.end method
