.class final Lcom/android/billingclient/api/zzax;
.super Landroid/os/ResultReceiver;
.source "Proguard"


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/billingclient/api/zzax;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/billingclient/api/zzax;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;

    .line 15
    .line 16
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 17
    .line 18
    const/16 v1, 0x61

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->Ill(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p1, "BillingClient"

    .line 26
    .line 27
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 32
    .line 33
    .line 34
    const-string p1, "INTERNAL_LOG_ERROR_REASON"

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v1, p0, Lcom/android/billingclient/api/zzax;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza(I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 p1, 0x17

    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 56
    .line 57
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const/16 v3, 0x19

    .line 62
    .line 63
    invoke-static {p1, v3, v2, p2}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjz;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object p1, p0, Lcom/android/billingclient/api/zzax;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
