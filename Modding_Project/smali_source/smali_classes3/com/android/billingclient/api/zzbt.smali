.class public final synthetic Lcom/android/billingclient/api/zzbt;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/SkuDetailsResponseListener;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbt;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    .line 2
    .line 3
    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
