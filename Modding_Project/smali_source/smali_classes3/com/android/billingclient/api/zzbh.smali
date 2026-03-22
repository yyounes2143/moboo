.class final Lcom/android/billingclient/api/zzbh;
.super Lcom/google/android/gms/internal/play_billing/zzaj;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/zzch;ILcom/android/billingclient/api/zzbl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 6
    .line 7
    sget-object v1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 8
    .line 9
    const/16 v2, 0x5c

    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v2, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    .line 21
    .line 22
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v1, "BillingClient"

    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v2, p1}, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "isExternalOfferAvailableAsync() failed. Response code: "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 63
    .line 64
    invoke-static {v0, v0, p1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget v2, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    invoke-interface {v1, v0, v2}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbh;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    .line 74
    .line 75
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
