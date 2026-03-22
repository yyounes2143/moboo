.class public interface abstract Lcom/changdu/component/pay/base/service/IPayServiceGoogle;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/pay/base/service/IPayService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u001a\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H&J\u0008\u0010\u000f\u001a\u00020\u0003H&J@\u0010\u0010\u001a\u00020\u00032\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0012j\u0008\u0012\u0004\u0012\u00020\u0005`\u00132\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0012j\u0008\u0012\u0004\u0012\u00020\u0005`\u00132\u0006\u0010\u0015\u001a\u00020\u0016H&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/changdu/component/pay/base/service/IPayServiceGoogle;",
        "Lcom/changdu/component/pay/base/service/IPayService;",
        "checkPayStatus",
        "",
        "getCountryCode",
        "",
        "handleCallbackCancel",
        "handleCallbackFailed",
        "errorCode",
        "",
        "payReportMessage",
        "Lcom/changdu/component/pay/base/model/PayReportMessage;",
        "handleCallbackSuccess",
        "cdOrderId",
        "playOrderId",
        "init",
        "requestPurchaseMonetization",
        "inappItemIdList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "subsItemIdList",
        "listener",
        "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
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
.method public abstract checkPayStatus()V
.end method

.method public abstract getCountryCode()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract handleCallbackCancel()V
.end method

.method public abstract handleCallbackFailed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V
    .param p2    # Lcom/changdu/component/pay/base/model/PayReportMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract handleCallbackSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract init()V
.end method

.method public abstract requestPurchaseMonetization(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;)V
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
            ")V"
        }
    .end annotation
.end method
