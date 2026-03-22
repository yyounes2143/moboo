.class final Lcom/android/billingclient/api/zzau;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/billingclient/api/zzau;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/billingclient/api/zzau;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/billingclient/api/zzau;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzau;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzau;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->OO00000000(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/zzbk;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzbk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzbk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/android/billingclient/api/zzau;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

    .line 18
    .line 19
    invoke-interface {v2, v1, v0}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method
