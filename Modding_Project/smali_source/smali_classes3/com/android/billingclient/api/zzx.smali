.class public final synthetic Lcom/android/billingclient/api/zzx;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzx;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzx;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->QQOO(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method
