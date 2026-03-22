.class final Lcom/android/billingclient/api/zzbe;
.super Lcom/google/android/gms/internal/play_billing/zzad;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingConfigResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/zzch;ILcom/android/billingclient/api/zzbl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzad;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xd

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 7
    .line 8
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 9
    .line 10
    const/16 v3, 0x3f

    .line 11
    .line 12
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v3, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    invoke-interface {p1, v1, v3}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 22
    .line 23
    invoke-interface {p1, v2, v0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string v2, "BillingClient"

    .line 28
    .line 29
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 45
    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "getBillingConfig() failed. Response code: "

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v2, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 74
    .line 75
    const/16 v3, 0x17

    .line 76
    .line 77
    invoke-static {v3, v1, p1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget v3, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 82
    .line 83
    invoke-interface {v2, v1, v3}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 87
    .line 88
    invoke-interface {v1, p1, v0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    const-string v3, "BILLING_CONFIG"

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_2

    .line 99
    .line 100
    const-string p1, "getBillingConfig() returned a bundle with neither an error nor a billing config response"

    .line 101
    .line 102
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x6

    .line 106
    invoke-virtual {v5, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v2, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 114
    .line 115
    const/16 v3, 0x40

    .line 116
    .line 117
    invoke-static {v3, v1, p1}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget v3, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 122
    .line 123
    invoke-interface {v2, v1, v3}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 127
    .line 128
    invoke-interface {v1, p1, v0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :try_start_0
    new-instance v3, Lcom/android/billingclient/api/BillingConfig;

    .line 137
    .line 138
    invoke-direct {v3, p1}, Lcom/android/billingclient/api/BillingConfig;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {p1, v4, v3}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :catch_0
    move-exception p1

    .line 152
    const-string v3, "Got a JSON exception trying to decode BillingConfig. \n Exception: "

    .line 153
    .line 154
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/zzch;

    .line 158
    .line 159
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 160
    .line 161
    const/16 v3, 0x41

    .line 162
    .line 163
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget v3, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 168
    .line 169
    invoke-interface {p1, v1, v3}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/billingclient/api/zzbe;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 173
    .line 174
    invoke-interface {p1, v2, v0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method
