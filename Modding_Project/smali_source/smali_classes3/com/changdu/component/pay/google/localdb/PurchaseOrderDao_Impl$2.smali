.class Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
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
    iput-object p1, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl$2;->this$0:Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/changdu/component/pay/google/localdb/PurchaseOrder;)V
    .locals 3

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
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl$2;->this$0:Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl;

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

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 21
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getCdOrderId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 22
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    .line 23
    :cond_6
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getCdOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 24
    :goto_6
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 25
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    return-void

    .line 26
    :cond_7
    invoke-virtual {p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/changdu/component/pay/google/localdb/PurchaseOrder;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE OR REPLACE `purchase_order` SET `cdOrderId` = ?,`jumpUrl` = ?,`sku` = ?,`skuType` = ?,`purchaseToken` = ?,`purchaseData` = ?,`status` = ? WHERE `cdOrderId` = ? AND `purchaseToken` = ?"

    .line 2
    .line 3
    return-object v0
.end method
