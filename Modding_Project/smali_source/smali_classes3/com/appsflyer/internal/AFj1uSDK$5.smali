.class final Lcom/appsflyer/internal/AFj1uSDK$5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFj1uSDK;->getMonetizationNetwork(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic getMediationNetwork:Landroid/content/Context;

.field private synthetic getRevenue:Lcom/appsflyer/internal/AFj1uSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFj1uSDK;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/appsflyer/internal/AFj1tSDK;->component1:J

    .line 8
    .line 9
    sget-object v1, Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/appsflyer/internal/AFj1tSDK;->component4:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 12
    .line 13
    new-instance v1, Lcom/appsflyer/internal/AFj1tSDK$1;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFj1tSDK$1;-><init>(Lcom/appsflyer/internal/AFj1tSDK;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "content://"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/appsflyer/internal/AFj1uSDK;->getCurrencyIso4217Code:Landroid/content/pm/ProviderInfo;

    .line 31
    .line 32
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "/transaction_id"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFj1uSDK;->B_(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const/16 v7, 0x18

    .line 59
    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "app_id="

    .line 63
    .line 64
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 84
    .line 85
    .line 86
    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    if-lt v2, v7, :cond_0

    .line 90
    .line 91
    invoke-static {v1}, Landroidx/core/provider/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_7

    .line 95
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 96
    .line 97
    .line 98
    goto :goto_7

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    move-object v11, v0

    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    move-object v11, v0

    .line 104
    goto :goto_2

    .line 105
    :catch_1
    move-exception v0

    .line 106
    move-object v11, v0

    .line 107
    goto :goto_3

    .line 108
    :goto_0
    :try_start_1
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 109
    .line 110
    sget-object v9, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 111
    .line 112
    const-string v10, "Error to get data from providerClient "

    .line 113
    .line 114
    const/4 v13, 0x1

    .line 115
    const/4 v14, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    invoke-virtual/range {v8 .. v14}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .line 119
    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    if-lt v0, v7, :cond_1

    .line 123
    .line 124
    :goto_1
    invoke-static {v1}, Landroidx/core/provider/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 129
    .line 130
    .line 131
    goto :goto_6

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    goto :goto_4

    .line 134
    :goto_2
    :try_start_2
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 135
    .line 136
    sget-object v9, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 137
    .line 138
    const-string v10, "Failed to query unstable content providerClient"

    .line 139
    .line 140
    const/4 v13, 0x1

    .line 141
    const/4 v14, 0x0

    .line 142
    const/4 v12, 0x0

    .line 143
    invoke-virtual/range {v8 .. v14}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    .line 145
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    .line 148
    if-lt v0, v7, :cond_1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :goto_3
    :try_start_3
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 152
    .line 153
    sget-object v9, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 154
    .line 155
    const-string v10, "Failed to acquire unstable content providerClient"

    .line 156
    .line 157
    const/4 v13, 0x1

    .line 158
    const/4 v14, 0x0

    .line 159
    const/4 v12, 0x0

    .line 160
    invoke-virtual/range {v8 .. v14}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    .line 162
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    .line 165
    if-lt v0, v7, :cond_1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :goto_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 169
    .line 170
    if-lt v2, v7, :cond_2

    .line 171
    .line 172
    invoke-static {v1}, Landroidx/core/provider/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 177
    .line 178
    .line 179
    :goto_5
    throw v0

    .line 180
    :cond_3
    :goto_6
    const/4 v0, 0x0

    .line 181
    :goto_7
    const-string v1, "response"

    .line 182
    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    const-string v2, "transaction_id"

    .line 186
    .line 187
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/4 v3, -0x1

    .line 192
    if-ne v2, v3, :cond_4

    .line 193
    .line 194
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 195
    .line 196
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 197
    .line 198
    const-string v4, "Wrong column name"

    .line 199
    .line 200
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 204
    .line 205
    iget-object v2, v2, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 206
    .line 207
    const-string v3, "FEATURE_NOT_SUPPORTED"

    .line 208
    .line 209
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_4
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 214
    .line 215
    iget-object v3, v3, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 216
    .line 217
    const-string v4, "OK"

    .line 218
    .line 219
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_5

    .line 227
    .line 228
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    .line 234
    .line 235
    if-eqz v1, :cond_5

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_5

    .line 242
    .line 243
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 244
    .line 245
    iget-object v2, v2, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 246
    .line 247
    const-string v3, "referrer"

    .line 248
    .line 249
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    :cond_5
    :goto_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 253
    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_6
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 257
    .line 258
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 259
    .line 260
    const-string v3, "ContentProvider query failed, got null Cursor"

    .line 261
    .line 262
    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 266
    .line 267
    iget-object v0, v0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 268
    .line 269
    const-string v2, "SERVICE_UNAVAILABLE"

    .line 270
    .line 271
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    :goto_9
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 275
    .line 276
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 277
    .line 278
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 279
    .line 280
    iget-object v0, v0, Lcom/appsflyer/internal/AFj1uSDK;->getCurrencyIso4217Code:Landroid/content/pm/ProviderInfo;

    .line 281
    .line 282
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v2, v0}, Lcom/appsflyer/internal/AFj1kSDK;->AFAdRevenueData(Landroid/content/Context;Ljava/lang/String;)J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    const-string v2, "api_ver"

    .line 293
    .line 294
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 298
    .line 299
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 300
    .line 301
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 302
    .line 303
    iget-object v0, v0, Lcom/appsflyer/internal/AFj1uSDK;->getCurrencyIso4217Code:Landroid/content/pm/ProviderInfo;

    .line 304
    .line 305
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v2, v0}, Lcom/appsflyer/internal/AFj1kSDK;->getRevenue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const-string v2, "api_ver_name"

    .line 312
    .line 313
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork()V

    .line 319
    .line 320
    .line 321
    return-void
.end method
