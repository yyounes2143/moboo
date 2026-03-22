.class public interface abstract Lcom/changdu/component/pay/base/service/IPayService;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/changdu/component/pay/base/service/IPayService;",
        "",
        "pay",
        "",
        "activity",
        "Landroid/app/Activity;",
        "payRequestItem",
        "Lcom/changdu/component/pay/base/model/PayRequestItem;",
        "payCreateOrderResult",
        "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;",
        "payCallback",
        "Lcom/changdu/component/pay/base/IPayCallback;",
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
.method public abstract pay(Landroid/app/Activity;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lcom/changdu/component/pay/base/IPayCallback;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/component/pay/base/model/PayRequestItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/changdu/component/pay/base/model/PayCreateOrderResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/changdu/component/pay/base/IPayCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
