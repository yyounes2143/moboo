.class Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/changdu/component/pay/google/localdb/PurchaseOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/changdu/component/pay/google/localdb/PurchaseOrder;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getCdOrderId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getCdOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getJumpUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getJumpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getSku()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getSkuType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getSkuType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 17
    :goto_4
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;

    invoke-static {v0}, Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;)Lcom/changdu/component/pay/google/localdb/PurchaseTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getPurchaseData()Lcom/android/billingclient/api/Purchase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/changdu/component/pay/google/localdb/PurchaseTypeConverter;->toString(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 18
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    .line 19
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 20
    :goto_5
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getStatus()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x7

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/changdu/component/pay/google/localdb/PurchaseOrder;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `purchase_order` (`cdOrderId`,`jumpUrl`,`sku`,`skuType`,`purchaseToken`,`purchaseData`,`status`) VALUES (?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method
