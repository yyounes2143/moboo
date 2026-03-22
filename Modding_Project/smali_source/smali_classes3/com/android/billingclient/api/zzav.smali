.class final Lcom/android/billingclient/api/zzav;
.super Landroid/os/ResultReceiver;
.source "Proguard"


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/InAppMessageResponseListener;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzav;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/InAppMessageResponseListener;

    .line 2
    .line 3
    const-string v0, "BillingClient"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/billingclient/api/InAppMessageResult;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/InAppMessageResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/InAppMessageResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
