.class public interface abstract Lcom/changdu/component/pay/google/localdb/CdSkuDetailsDao;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/pay/google/localdb/CdSkuDetailsDao$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\'J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\'J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0017J\u0010\u0010\t\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\'J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\'\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/changdu/component/pay/google/localdb/CdSkuDetailsDao;",
        "",
        "getById",
        "Lcom/changdu/component/pay/google/localdb/CdSkuDetails;",
        "sku",
        "",
        "getInappSkuDetails",
        "",
        "getSubscriptionSkuDetails",
        "insert",
        "Lcom/android/billingclient/api/SkuDetails;",
        "skuDetails",
        "",
        "cdSkuDetails",
        "update",
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
.method public abstract getById(Ljava/lang/String;)Lcom/changdu/component/pay/google/localdb/CdSkuDetails;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM CdSkuDetails WHERE sku = :sku"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getInappSkuDetails()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM CdSkuDetails WHERE type = \'inapp\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/changdu/component/pay/google/localdb/CdSkuDetails;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSubscriptionSkuDetails()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM CdSkuDetails WHERE type = \'subs\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/changdu/component/pay/google/localdb/CdSkuDetails;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract insert(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/SkuDetails;
    .param p1    # Lcom/android/billingclient/api/SkuDetails;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract insert(Lcom/changdu/component/pay/google/localdb/CdSkuDetails;)V
    .param p1    # Lcom/changdu/component/pay/google/localdb/CdSkuDetails;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract update(Lcom/changdu/component/pay/google/localdb/CdSkuDetails;)V
    .param p1    # Lcom/changdu/component/pay/google/localdb/CdSkuDetails;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
        onConflict = 0x1
    .end annotation
.end method
