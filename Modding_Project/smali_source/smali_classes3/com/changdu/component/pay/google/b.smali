.class public abstract Lcom/changdu/component/pay/google/b;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static synthetic a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V
    .locals 1

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    invoke-interface {p0, p1, p2, v0}, Lcom/changdu/component/pay/google/OnPurchaseListener;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
