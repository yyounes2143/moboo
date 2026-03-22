.class public final synthetic Lcom/android/billingclient/api/zzbq;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeParams;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzbq;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzbq;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeParams;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbq;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzbq;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ConsumeParams;

    .line 4
    .line 5
    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/billingclient/api/ConsumeParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/ConsumeResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
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
