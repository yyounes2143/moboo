.class final Lcom/android/billingclient/api/zzba;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/zzbl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 10
    .line 11
    const/16 v2, 0x18

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    invoke-static {v1, v2, v3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlllllllll(Lcom/android/billingclient/api/BillingClientImpl;IILcom/android/billingclient/api/BillingResult;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto/16 :goto_28

    .line 20
    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto/16 :goto_29

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "accountName"

    .line 43
    .line 44
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 48
    .line 49
    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v0, v3

    .line 66
    :goto_0
    const/4 v4, 0x6

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x1

    .line 69
    :try_start_1
    iget-object v7, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 70
    .line 71
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :try_start_2
    iget-object v8, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 77
    .line 78
    invoke-static {v8}, Lcom/android/billingclient/api/BillingClientImpl;->OO00(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzan;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    if-nez v8, :cond_2

    .line 84
    .line 85
    :try_start_3
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 86
    .line 87
    invoke-static {v0, v5}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 91
    .line 92
    sget-object v2, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 93
    .line 94
    const/16 v7, 0x77

    .line 95
    .line 96
    invoke-static {v0, v7, v4, v2}, Lcom/android/billingclient/api/BillingClientImpl;->IIlllllllll(Lcom/android/billingclient/api/BillingClientImpl;IILcom/android/billingclient/api/BillingResult;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2}, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_28

    .line 103
    .line 104
    :catch_0
    move-exception v0

    .line 105
    goto/16 :goto_1e

    .line 106
    .line 107
    :cond_2
    iget-object v7, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 108
    .line 109
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->O00000(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    const/16 v9, 0x17

    .line 118
    .line 119
    move v11, v2

    .line 120
    move v10, v9

    .line 121
    :goto_1
    if-lt v10, v2, :cond_5

    .line 122
    .line 123
    if-nez v0, :cond_3

    .line 124
    .line 125
    const-string v11, "subs"

    .line 126
    .line 127
    invoke-interface {v8, v10, v7, v11}, Lcom/google/android/gms/internal/play_billing/zzan;->zzy(ILjava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const-string v11, "subs"

    .line 133
    .line 134
    invoke-interface {v8, v10, v7, v11, v0}, Lcom/google/android/gms/internal/play_billing/zzan;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    :goto_2
    if-nez v11, :cond_4

    .line 139
    .line 140
    const-string v12, "BillingClient"

    .line 141
    .line 142
    new-instance v13, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v14, "highestLevelSupportedForSubs: "

    .line 148
    .line 149
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    add-int/lit8 v10, v10, -0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    move v10, v5

    .line 167
    :goto_3
    iget-object v12, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 168
    .line 169
    const/4 v13, 0x5

    .line 170
    if-lt v10, v13, :cond_6

    .line 171
    .line 172
    move v13, v6

    .line 173
    goto :goto_4

    .line 174
    :cond_6
    move v13, v5

    .line 175
    :goto_4
    invoke-static {v12, v13}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 176
    .line 177
    .line 178
    iget-object v12, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 179
    .line 180
    if-lt v10, v2, :cond_7

    .line 181
    .line 182
    move v13, v6

    .line 183
    goto :goto_5

    .line 184
    :cond_7
    move v13, v5

    .line 185
    :goto_5
    invoke-static {v12, v13}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 186
    .line 187
    .line 188
    const/16 v12, 0x9

    .line 189
    .line 190
    if-ge v10, v2, :cond_8

    .line 191
    .line 192
    const-string v10, "BillingClient"

    .line 193
    .line 194
    const-string v13, "In-app billing API does not support subscription on this device."

    .line 195
    .line 196
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    move v10, v12

    .line 200
    goto :goto_6

    .line 201
    :cond_8
    move v10, v6

    .line 202
    :goto_6
    move v13, v9

    .line 203
    :goto_7
    if-lt v13, v2, :cond_b

    .line 204
    .line 205
    if-nez v0, :cond_9

    .line 206
    .line 207
    const-string v11, "inapp"

    .line 208
    .line 209
    invoke-interface {v8, v13, v7, v11}, Lcom/google/android/gms/internal/play_billing/zzan;->zzy(ILjava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    goto :goto_8

    .line 214
    :cond_9
    const-string v11, "inapp"

    .line 215
    .line 216
    invoke-interface {v8, v13, v7, v11, v0}, Lcom/google/android/gms/internal/play_billing/zzan;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    :goto_8
    if-nez v11, :cond_a

    .line 221
    .line 222
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 223
    .line 224
    invoke-static {v0, v13}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 225
    .line 226
    .line 227
    const-string v0, "BillingClient"

    .line 228
    .line 229
    iget-object v7, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 230
    .line 231
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v13, "mHighestLevelSupportedForInApp: "

    .line 241
    .line 242
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_a
    add-int/lit8 v13, v13, -0x1

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_b
    :goto_9
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 260
    .line 261
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-lt v7, v9, :cond_c

    .line 266
    .line 267
    move v7, v6

    .line 268
    goto :goto_a

    .line 269
    :cond_c
    move v7, v5

    .line 270
    :goto_a
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Www(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 274
    .line 275
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    const/16 v8, 0x16

    .line 280
    .line 281
    if-lt v7, v8, :cond_d

    .line 282
    .line 283
    move v7, v6

    .line 284
    goto :goto_b

    .line 285
    :cond_d
    move v7, v5

    .line 286
    :goto_b
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 290
    .line 291
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    const/16 v8, 0x15

    .line 296
    .line 297
    if-lt v7, v8, :cond_e

    .line 298
    .line 299
    move v7, v6

    .line 300
    goto :goto_c

    .line 301
    :cond_e
    move v7, v5

    .line 302
    :goto_c
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 306
    .line 307
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    const/16 v8, 0x14

    .line 312
    .line 313
    if-lt v7, v8, :cond_f

    .line 314
    .line 315
    move v7, v6

    .line 316
    goto :goto_d

    .line 317
    :cond_f
    move v7, v5

    .line 318
    :goto_d
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 322
    .line 323
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    const/16 v8, 0x13

    .line 328
    .line 329
    if-lt v7, v8, :cond_10

    .line 330
    .line 331
    move v7, v6

    .line 332
    goto :goto_e

    .line 333
    :cond_10
    move v7, v5

    .line 334
    :goto_e
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 338
    .line 339
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    const/16 v8, 0x12

    .line 344
    .line 345
    if-lt v7, v8, :cond_11

    .line 346
    .line 347
    move v7, v6

    .line 348
    goto :goto_f

    .line 349
    :cond_11
    move v7, v5

    .line 350
    :goto_f
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 351
    .line 352
    .line 353
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 354
    .line 355
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    const/16 v8, 0x11

    .line 360
    .line 361
    if-lt v7, v8, :cond_12

    .line 362
    .line 363
    move v7, v6

    .line 364
    goto :goto_10

    .line 365
    :cond_12
    move v7, v5

    .line 366
    :goto_10
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 367
    .line 368
    .line 369
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 370
    .line 371
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    const/16 v8, 0x10

    .line 376
    .line 377
    if-lt v7, v8, :cond_13

    .line 378
    .line 379
    move v7, v6

    .line 380
    goto :goto_11

    .line 381
    :cond_13
    move v7, v5

    .line 382
    :goto_11
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 386
    .line 387
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    const/16 v8, 0xf

    .line 392
    .line 393
    if-lt v7, v8, :cond_14

    .line 394
    .line 395
    move v7, v6

    .line 396
    goto :goto_12

    .line 397
    :cond_14
    move v7, v5

    .line 398
    :goto_12
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 402
    .line 403
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    const/16 v8, 0xe

    .line 408
    .line 409
    if-lt v7, v8, :cond_15

    .line 410
    .line 411
    move v7, v6

    .line 412
    goto :goto_13

    .line 413
    :cond_15
    move v7, v5

    .line 414
    :goto_13
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 415
    .line 416
    .line 417
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 418
    .line 419
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    const/16 v8, 0xc

    .line 424
    .line 425
    if-lt v7, v8, :cond_16

    .line 426
    .line 427
    move v7, v6

    .line 428
    goto :goto_14

    .line 429
    :cond_16
    move v7, v5

    .line 430
    :goto_14
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 431
    .line 432
    .line 433
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 434
    .line 435
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 436
    .line 437
    .line 438
    move-result v7

    .line 439
    const/16 v8, 0xa

    .line 440
    .line 441
    if-lt v7, v8, :cond_17

    .line 442
    .line 443
    move v7, v6

    .line 444
    goto :goto_15

    .line 445
    :cond_17
    move v7, v5

    .line 446
    :goto_15
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 447
    .line 448
    .line 449
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 450
    .line 451
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    if-lt v7, v12, :cond_18

    .line 456
    .line 457
    move v7, v6

    .line 458
    goto :goto_16

    .line 459
    :cond_18
    move v7, v5

    .line 460
    :goto_16
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 461
    .line 462
    .line 463
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 464
    .line 465
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 466
    .line 467
    .line 468
    move-result v7

    .line 469
    const/16 v8, 0x8

    .line 470
    .line 471
    if-lt v7, v8, :cond_19

    .line 472
    .line 473
    move v7, v6

    .line 474
    goto :goto_17

    .line 475
    :cond_19
    move v7, v5

    .line 476
    :goto_17
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 477
    .line 478
    .line 479
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 480
    .line 481
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    if-lt v7, v4, :cond_1a

    .line 486
    .line 487
    move v7, v6

    .line 488
    goto :goto_18

    .line 489
    :cond_1a
    move v7, v5

    .line 490
    :goto_18
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    .line 491
    .line 492
    .line 493
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 494
    .line 495
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIlll(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-ge v0, v2, :cond_1b

    .line 500
    .line 501
    const-string v0, "BillingClient"

    .line 502
    .line 503
    const-string v7, "In-app billing API version 3 is not supported on this device."

    .line 504
    .line 505
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    const/16 v10, 0x24

    .line 509
    .line 510
    :cond_1b
    if-nez v11, :cond_20

    .line 511
    .line 512
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 513
    .line 514
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 519
    :try_start_4
    iget-object v7, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 520
    .line 521
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 522
    .line 523
    .line 524
    move-result v7

    .line 525
    if-ne v7, v2, :cond_1c

    .line 526
    .line 527
    monitor-exit v0

    .line 528
    goto/16 :goto_28

    .line 529
    .line 530
    :catchall_1
    move-exception v2

    .line 531
    goto :goto_1c

    .line 532
    :cond_1c
    if-ne v1, v6, :cond_1d

    .line 533
    .line 534
    move v2, v5

    .line 535
    goto :goto_19

    .line 536
    :cond_1d
    move v2, v6

    .line 537
    :goto_19
    iget-object v7, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 538
    .line 539
    const/4 v8, 0x2

    .line 540
    invoke-static {v7, v8}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 541
    .line 542
    .line 543
    iget-object v7, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 544
    .line 545
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->O0(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzn;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    if-eqz v7, :cond_1e

    .line 550
    .line 551
    iget-object v7, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 552
    .line 553
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->O0(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzn;

    .line 554
    .line 555
    .line 556
    move-result-object v7

    .line 557
    goto :goto_1a

    .line 558
    :cond_1e
    move-object v7, v3

    .line 559
    :goto_1a
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 560
    if-eqz v7, :cond_1f

    .line 561
    .line 562
    :try_start_5
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 563
    .line 564
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->Illlll(Lcom/android/billingclient/api/BillingClientImpl;)Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/zzn;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 569
    .line 570
    .line 571
    :cond_1f
    :goto_1b
    move-object v0, v3

    .line 572
    goto :goto_23

    .line 573
    :goto_1c
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 574
    :try_start_7
    throw v2

    .line 575
    :cond_20
    if-ne v1, v6, :cond_21

    .line 576
    .line 577
    move v2, v5

    .line 578
    goto :goto_1d

    .line 579
    :cond_21
    move v2, v6

    .line 580
    :goto_1d
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 581
    .line 582
    invoke-static {v0, v5}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 583
    .line 584
    .line 585
    goto :goto_1b

    .line 586
    :catchall_2
    move-exception v0

    .line 587
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 588
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 589
    :goto_1e
    if-ne v1, v6, :cond_22

    .line 590
    .line 591
    move v2, v5

    .line 592
    goto :goto_1f

    .line 593
    :cond_22
    move v2, v6

    .line 594
    :goto_1f
    const-string v1, "BillingClient"

    .line 595
    .line 596
    const-string v7, "Exception while checking if billing is supported; try to reconnect"

    .line 597
    .line 598
    invoke-static {v1, v7, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    .line 600
    .line 601
    instance-of v1, v0, Landroid/os/DeadObjectException;

    .line 602
    .line 603
    const/16 v7, 0x2a

    .line 604
    .line 605
    if-eqz v1, :cond_23

    .line 606
    .line 607
    const/16 v1, 0x65

    .line 608
    .line 609
    :goto_20
    move v10, v1

    .line 610
    goto :goto_21

    .line 611
    :cond_23
    instance-of v1, v0, Landroid/os/RemoteException;

    .line 612
    .line 613
    if-eqz v1, :cond_24

    .line 614
    .line 615
    const/16 v1, 0x64

    .line 616
    .line 617
    goto :goto_20

    .line 618
    :cond_24
    instance-of v1, v0, Ljava/lang/SecurityException;

    .line 619
    .line 620
    if-eqz v1, :cond_25

    .line 621
    .line 622
    const/16 v1, 0x66

    .line 623
    .line 624
    goto :goto_20

    .line 625
    :cond_25
    move v10, v7

    .line 626
    :goto_21
    if-ne v10, v7, :cond_26

    .line 627
    .line 628
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    goto :goto_22

    .line 633
    :cond_26
    move-object v0, v3

    .line 634
    :goto_22
    iget-object v1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 635
    .line 636
    invoke-static {v1, v5}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 637
    .line 638
    .line 639
    move v11, v4

    .line 640
    :goto_23
    if-nez v11, :cond_28

    .line 641
    .line 642
    if-eq v6, v2, :cond_27

    .line 643
    .line 644
    :try_start_a
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 645
    .line 646
    invoke-static {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->IIlllllll(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 647
    .line 648
    .line 649
    goto :goto_25

    .line 650
    :catchall_3
    move-exception v0

    .line 651
    goto :goto_24

    .line 652
    :cond_27
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 653
    .line 654
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlq;->zzc()Lcom/google/android/gms/internal/play_billing/zzlo;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->zzc()Lcom/google/android/gms/internal/play_billing/zzke;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/play_billing/zzke;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzlo;->zza(Lcom/google/android/gms/internal/play_billing/zzke;)Lcom/google/android/gms/internal/play_billing/zzlo;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzlq;

    .line 677
    .line 678
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzlq;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 679
    .line 680
    .line 681
    goto :goto_25

    .line 682
    :goto_24
    const-string v1, "BillingClient"

    .line 683
    .line 684
    const-string v2, "Unable to log."

    .line 685
    .line 686
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    .line 688
    .line 689
    :goto_25
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 690
    .line 691
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 692
    .line 693
    .line 694
    goto :goto_28

    .line 695
    :cond_28
    sget-object v1, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 696
    .line 697
    if-eq v6, v2, :cond_29

    .line 698
    .line 699
    :try_start_b
    iget-object v2, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 700
    .line 701
    invoke-static {v2, v10, v4, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->IIllllllll(Lcom/android/billingclient/api/BillingClientImpl;IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    goto :goto_27

    .line 705
    :catchall_4
    move-exception v0

    .line 706
    goto :goto_26

    .line 707
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->zzc()Lcom/google/android/gms/internal/play_billing/zzke;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 712
    .line 713
    .line 714
    move-result v4

    .line 715
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/play_billing/zzke;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 726
    .line 727
    .line 728
    if-eqz v0, :cond_2a

    .line 729
    .line 730
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 731
    .line 732
    .line 733
    :cond_2a
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 734
    .line 735
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlq;->zzc()Lcom/google/android/gms/internal/play_billing/zzlo;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 748
    .line 749
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzlo;->zzm(Lcom/google/android/gms/internal/play_billing/zzki;)Lcom/google/android/gms/internal/play_billing/zzlo;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzlq;

    .line 757
    .line 758
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzlq;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 759
    .line 760
    .line 761
    goto :goto_27

    .line 762
    :goto_26
    const-string v1, "BillingClient"

    .line 763
    .line 764
    const-string v2, "Unable to log."

    .line 765
    .line 766
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    .line 768
    .line 769
    :goto_27
    sget-object v0, Lcom/android/billingclient/api/zzcj;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingResult;

    .line 770
    .line 771
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 772
    .line 773
    .line 774
    :goto_28
    return-object v3

    .line 775
    :goto_29
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 776
    throw v1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service died."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->Illll(Lcom/android/billingclient/api/BillingClientImpl;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc()Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x6

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjx;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->zzc()Lcom/google/android/gms/internal/play_billing/zzke;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/16 v2, 0x7a

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjx;->zza(Lcom/google/android/gms/internal/play_billing/zzke;)Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkl;->zzB()Lcom/google/android/gms/internal/play_billing/zzkl;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzkl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_0
    const-string v0, "BillingClient"

    .line 69
    .line 70
    const-string v1, "Unable to log."

    .line 71
    .line 72
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    monitor-enter p1

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v1, 0x3

    .line 89
    if-eq v0, v1, :cond_2

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->Illllllllllllllllllll(Lcom/android/billingclient/api/BillingClientImpl;)V

    .line 109
    .line 110
    .line 111
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 113
    .line 114
    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    goto :goto_3

    .line 120
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit p1

    .line 121
    return-void

    .line 122
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    move-object p2, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzam;->zzu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzan;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzan;)V

    .line 36
    .line 37
    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 40
    .line 41
    new-instance v2, Lcom/android/billingclient/api/zzay;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/android/billingclient/api/zzay;-><init>(Lcom/android/billingclient/api/zzba;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lcom/android/billingclient/api/zzaz;

    .line 47
    .line 48
    invoke-direct {v5, p0}, Lcom/android/billingclient/api/zzaz;-><init>(Lcom/android/billingclient/api/zzba;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->O00(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-wide/16 v3, 0x7530

    .line 56
    .line 57
    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->Wwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->OO00000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const/16 v0, 0x19

    .line 70
    .line 71
    const/4 v1, 0x6

    .line 72
    invoke-static {p1, v0, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->IIlllllllll(Lcom/android/billingclient/api/BillingClientImpl;IILcom/android/billingclient/api/BillingResult;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void

    .line 79
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->Illll(Lcom/android/billingclient/api/BillingClientImpl;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc()Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x6

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjx;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->zzc()Lcom/google/android/gms/internal/play_billing/zzke;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/16 v2, 0x79

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjx;->zza(Lcom/google/android/gms/internal/play_billing/zzke;)Lcom/google/android/gms/internal/play_billing/zzjx;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->OO0000000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlu;->zzB()Lcom/google/android/gms/internal/play_billing/zzlu;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzch;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/internal/play_billing/zzlu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_0
    const-string v0, "BillingClient"

    .line 69
    .line 70
    const-string v1, "Unable to log."

    .line 71
    .line 72
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->QQOOOOOOOO(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    monitor-enter p1

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v1, 0x3

    .line 89
    if-ne v0, v1, :cond_1

    .line 90
    .line 91
    monitor-exit p1

    .line 92
    return-void

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientImpl;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->Kkkkkkkkkkkkkkkkkkk(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 99
    .line 100
    .line 101
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    iget-object p1, p0, Lcom/android/billingclient/api/zzba;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 103
    .line 104
    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    throw v0
.end method
