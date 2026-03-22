.class public final Lcom/appsflyer/internal/AFf1rSDK;
.super Lcom/appsflyer/internal/AFf1sSDK;
.source "Proguard"


# instance fields
.field private final AFInAppEventType:Lcom/appsflyer/internal/AFf1kSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1lSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final AFLogger:Lcom/appsflyer/AppsFlyerProperties;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final copy:Lcom/appsflyer/internal/AFc1qSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final copydefault:Lcom/appsflyer/internal/AFj1sSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final equals:Lcom/appsflyer/internal/AFh1xSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public hashCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final registerClient:Lcom/appsflyer/internal/AFh1pSDK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFh1mSDK;Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 0
    .param p1    # Lcom/appsflyer/internal/AFh1mSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFf1sSDK;-><init>(Lcom/appsflyer/internal/AFh1mSDK;Lcom/appsflyer/internal/AFd1zSDK;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFLogger()Lcom/appsflyer/internal/AFj1sSDK;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1rSDK;->copydefault:Lcom/appsflyer/internal/AFj1sSDK;

    .line 9
    .line 10
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1rSDK;->copy:Lcom/appsflyer/internal/AFc1qSDK;

    .line 15
    .line 16
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1xSDK;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1rSDK;->equals:Lcom/appsflyer/internal/AFh1xSDK;

    .line 21
    .line 22
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->component1()Lcom/appsflyer/internal/AFf1kSDK;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1rSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFf1kSDK;

    .line 27
    .line 28
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1rSDK;->AFLogger:Lcom/appsflyer/AppsFlyerProperties;

    .line 33
    .line 34
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->afVerboseLog()Lcom/appsflyer/internal/AFa1lSDK;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1lSDK;

    .line 39
    .line 40
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->afWarnLog()Lcom/appsflyer/internal/AFh1pSDK;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1rSDK;->registerClient:Lcom/appsflyer/internal/AFh1pSDK;

    .line 45
    .line 46
    sget-object p1, Lcom/appsflyer/internal/AFe1pSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1pSDK;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/appsflyer/internal/AFe1pSDK;->component2:Lcom/appsflyer/internal/AFe1pSDK;

    .line 54
    .line 55
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Ljava/util/Set;

    .line 56
    .line 57
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private copy()Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1wSDK;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1mSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    .line 4
    .line 5
    sget-object v2, Lcom/appsflyer/internal/AFe1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1wSDK;->getStatusCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    div-int/lit16 v0, v0, 0x1f4

    .line 18
    .line 19
    if-ne v0, v4, :cond_0

    .line 20
    .line 21
    move v0, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v3

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 25
    .line 26
    sget-object v2, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 27
    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    sget-object v2, Lcom/appsflyer/internal/AFe1pSDK;->hashCode:Lcom/appsflyer/internal/AFe1pSDK;

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v3

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    move v1, v4

    .line 38
    :goto_2
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    return v4

    .line 43
    :cond_3
    return v3
.end method


# virtual methods
.method public final AFAdRevenueData(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFf1sSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/appsflyer/internal/AFh1mSDK;->component4:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1rSDK;->equals:Lcom/appsflyer/internal/AFh1xSDK;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    const-string v5, "first_launch"

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    iput-wide v6, v1, Lcom/appsflyer/internal/AFh1xSDK;->copy:J

    .line 23
    .line 24
    iget-wide v8, v1, Lcom/appsflyer/internal/AFh1xSDK;->component4:J

    .line 25
    .line 26
    cmp-long v2, v8, v3

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v1, Lcom/appsflyer/internal/AFh1xSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 31
    .line 32
    sub-long/2addr v6, v8

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v7, "from_fg"

    .line 38
    .line 39
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v2, v1, Lcom/appsflyer/internal/AFh1xSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 43
    .line 44
    new-instance v6, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Lcom/appsflyer/internal/AFh1xSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    .line 50
    .line 51
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v5, v2}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v1, "Metrics: fg ts is missing"

    .line 60
    .line 61
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 65
    .line 66
    const-string v2, "meta"

    .line 67
    .line 68
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/util/Map;

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    new-instance v1, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v6, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v6, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 87
    .line 88
    const-string v7, "af_deeplink"

    .line 89
    .line 90
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    iget-object v6, p0, Lcom/appsflyer/internal/AFf1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1lSDK;

    .line 97
    .line 98
    invoke-interface {v6}, Lcom/appsflyer/internal/AFa1lSDK;->getRevenue()Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {p1, v6}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v6, p0, Lcom/appsflyer/internal/AFf1rSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFf1kSDK;

    .line 106
    .line 107
    invoke-virtual {v6}, Lcom/appsflyer/internal/AFf1kSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFi1wSDK;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    if-eqz v6, :cond_b

    .line 112
    .line 113
    new-instance v7, Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v8, "cdn_token"

    .line 119
    .line 120
    iget-object v9, v6, Lcom/appsflyer/internal/AFi1wSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v8, v6, Lcom/appsflyer/internal/AFi1wSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v8, :cond_4

    .line 128
    .line 129
    const-string v9, "c_ver"

    .line 130
    .line 131
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_4
    iget-wide v8, v6, Lcom/appsflyer/internal/AFi1wSDK;->getCurrencyIso4217Code:J

    .line 135
    .line 136
    cmp-long v10, v8, v3

    .line 137
    .line 138
    if-lez v10, :cond_5

    .line 139
    .line 140
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    const-string v9, "latency"

    .line 145
    .line 146
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-wide v8, v6, Lcom/appsflyer/internal/AFi1wSDK;->getRevenue:J

    .line 150
    .line 151
    cmp-long v3, v8, v3

    .line 152
    .line 153
    if-lez v3, :cond_6

    .line 154
    .line 155
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const-string v4, "delay"

    .line 160
    .line 161
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_6
    iget v3, v6, Lcom/appsflyer/internal/AFi1wSDK;->getMediationNetwork:I

    .line 165
    .line 166
    if-lez v3, :cond_7

    .line 167
    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    const-string v4, "res_code"

    .line 173
    .line 174
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_7
    iget-object v3, v6, Lcom/appsflyer/internal/AFi1wSDK;->component1:Ljava/lang/Throwable;

    .line 178
    .line 179
    if-eqz v3, :cond_8

    .line 180
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    iget-object v4, v6, Lcom/appsflyer/internal/AFi1wSDK;->component1:Ljava/lang/Throwable;

    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v4, ": "

    .line 200
    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v4, v6, Lcom/appsflyer/internal/AFi1wSDK;->component1:Ljava/lang/Throwable;

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    const-string v4, "error"

    .line 218
    .line 219
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    :cond_8
    iget-object v3, v6, Lcom/appsflyer/internal/AFi1wSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFi1ySDK;

    .line 223
    .line 224
    if-eqz v3, :cond_9

    .line 225
    .line 226
    const-string v4, "sig"

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :cond_9
    iget-object v3, v6, Lcom/appsflyer/internal/AFi1wSDK;->component2:Ljava/lang/String;

    .line 236
    .line 237
    if-eqz v3, :cond_a

    .line 238
    .line 239
    const-string v4, "cdn_cache_status"

    .line 240
    .line 241
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_a
    const-string v3, "rc"

    .line 245
    .line 246
    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    :cond_b
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1sSDK;->toString:Lcom/appsflyer/internal/AFg1nSDK;

    .line 250
    .line 251
    iget-object v4, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 252
    .line 253
    invoke-interface {v3, v4}, Lcom/appsflyer/internal/AFg1nSDK;->getCurrencyIso4217Code(Ljava/util/Map;)V

    .line 254
    .line 255
    .line 256
    const/4 v3, 0x0

    .line 257
    const/4 v4, 0x2

    .line 258
    const/4 v6, 0x1

    .line 259
    if-eq v0, v6, :cond_e

    .line 260
    .line 261
    if-eq v0, v4, :cond_c

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_c
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1rSDK;->equals:Lcom/appsflyer/internal/AFh1xSDK;

    .line 265
    .line 266
    iget-object v8, v7, Lcom/appsflyer/internal/AFh1xSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    .line 267
    .line 268
    invoke-interface {v8, v5}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance v8, Ljava/util/HashMap;

    .line 272
    .line 273
    iget-object v7, v7, Lcom/appsflyer/internal/AFh1xSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 274
    .line 275
    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-nez v7, :cond_d

    .line 283
    .line 284
    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    :cond_d
    instance-of v5, p1, Lcom/appsflyer/internal/AFh1kSDK;

    .line 288
    .line 289
    if-eqz v5, :cond_12

    .line 290
    .line 291
    iget-object v5, p0, Lcom/appsflyer/internal/AFf1rSDK;->registerClient:Lcom/appsflyer/internal/AFh1pSDK;

    .line 292
    .line 293
    if-eqz v5, :cond_12

    .line 294
    .line 295
    invoke-interface {v5}, Lcom/appsflyer/internal/AFh1pSDK;->getRevenue()Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-nez v5, :cond_12

    .line 300
    .line 301
    iget-object v5, p0, Lcom/appsflyer/internal/AFf1rSDK;->registerClient:Lcom/appsflyer/internal/AFh1pSDK;

    .line 302
    .line 303
    invoke-interface {v5, p1}, Lcom/appsflyer/internal/AFh1pSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 304
    .line 305
    .line 306
    goto :goto_1

    .line 307
    :cond_e
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1rSDK;->AFLogger:Lcom/appsflyer/AppsFlyerProperties;

    .line 308
    .line 309
    const-string v8, "waitForCustomerId"

    .line 310
    .line 311
    invoke-virtual {v7, v8, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-eqz v7, :cond_f

    .line 316
    .line 317
    iget-object v7, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 318
    .line 319
    const-string v8, "wait_cid"

    .line 320
    .line 321
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    :cond_f
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1rSDK;->equals:Lcom/appsflyer/internal/AFh1xSDK;

    .line 329
    .line 330
    new-instance v8, Ljava/util/HashMap;

    .line 331
    .line 332
    iget-object v9, v7, Lcom/appsflyer/internal/AFh1xSDK;->getMediationNetwork:Ljava/util/Map;

    .line 333
    .line 334
    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 335
    .line 336
    .line 337
    iget-object v7, v7, Lcom/appsflyer/internal/AFh1xSDK;->getMediationNetwork:Ljava/util/Map;

    .line 338
    .line 339
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 340
    .line 341
    .line 342
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-nez v7, :cond_10

    .line 347
    .line 348
    const-string v7, "ddl"

    .line 349
    .line 350
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    :cond_10
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1rSDK;->equals:Lcom/appsflyer/internal/AFh1xSDK;

    .line 354
    .line 355
    new-instance v8, Ljava/util/HashMap;

    .line 356
    .line 357
    iget-object v7, v7, Lcom/appsflyer/internal/AFh1xSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 358
    .line 359
    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 360
    .line 361
    .line 362
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    if-nez v7, :cond_11

    .line 367
    .line 368
    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    :cond_11
    iget-object v5, p0, Lcom/appsflyer/internal/AFf1rSDK;->registerClient:Lcom/appsflyer/internal/AFh1pSDK;

    .line 372
    .line 373
    if-eqz v5, :cond_12

    .line 374
    .line 375
    invoke-interface {v5, p1}, Lcom/appsflyer/internal/AFh1pSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 376
    .line 377
    .line 378
    :cond_12
    :goto_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_13

    .line 383
    .line 384
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 385
    .line 386
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    :cond_13
    if-gt v0, v4, :cond_1a

    .line 390
    .line 391
    new-instance v1, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .line 395
    .line 396
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1rSDK;->copydefault:Lcom/appsflyer/internal/AFj1sSDK;

    .line 397
    .line 398
    iget-object v2, v2, Lcom/appsflyer/internal/AFj1sSDK;->getRevenue:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 399
    .line 400
    new-array v5, v3, [Lcom/appsflyer/internal/AFj1tSDK;

    .line 401
    .line 402
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    check-cast v2, [Lcom/appsflyer/internal/AFj1tSDK;

    .line 407
    .line 408
    array-length v5, v2

    .line 409
    :goto_2
    if-ge v3, v5, :cond_18

    .line 410
    .line 411
    aget-object v7, v2, v3

    .line 412
    .line 413
    instance-of v8, v7, Lcom/appsflyer/internal/AFi1aSDK;

    .line 414
    .line 415
    sget-object v9, Lcom/appsflyer/internal/AFf1rSDK$4;->getMonetizationNetwork:[I

    .line 416
    .line 417
    iget-object v10, v7, Lcom/appsflyer/internal/AFj1tSDK;->component4:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 418
    .line 419
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 420
    .line 421
    .line 422
    move-result v10

    .line 423
    aget v9, v9, v10

    .line 424
    .line 425
    if-eq v9, v6, :cond_15

    .line 426
    .line 427
    if-eq v9, v4, :cond_14

    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_14
    if-ne v0, v4, :cond_17

    .line 431
    .line 432
    if-nez v8, :cond_17

    .line 433
    .line 434
    new-instance v8, Ljava/util/HashMap;

    .line 435
    .line 436
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 437
    .line 438
    .line 439
    const-string v9, "source"

    .line 440
    .line 441
    iget-object v10, v7, Lcom/appsflyer/internal/AFj1tSDK;->component3:Ljava/lang/String;

    .line 442
    .line 443
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    const-string v9, "response"

    .line 447
    .line 448
    const-string v10, "TIMEOUT"

    .line 449
    .line 450
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    const-string v9, "type"

    .line 454
    .line 455
    iget-object v7, v7, Lcom/appsflyer/internal/AFj1tSDK;->areAllFieldsValid:Ljava/lang/String;

    .line 456
    .line 457
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    goto :goto_3

    .line 464
    :cond_15
    if-eqz v8, :cond_16

    .line 465
    .line 466
    move-object v8, v7

    .line 467
    check-cast v8, Lcom/appsflyer/internal/AFi1aSDK;

    .line 468
    .line 469
    iget-object v8, v8, Lcom/appsflyer/internal/AFi1aSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 470
    .line 471
    const-string v9, "rfr"

    .line 472
    .line 473
    invoke-virtual {p1, v9, v8}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 474
    .line 475
    .line 476
    iget-object v8, p0, Lcom/appsflyer/internal/AFf1rSDK;->copy:Lcom/appsflyer/internal/AFc1qSDK;

    .line 477
    .line 478
    const-string v9, "newGPReferrerSent"

    .line 479
    .line 480
    invoke-interface {v8, v9, v6}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;Z)V

    .line 481
    .line 482
    .line 483
    :cond_16
    iget-object v7, v7, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 484
    .line 485
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    :cond_17
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 489
    .line 490
    goto :goto_2

    .line 491
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-nez v0, :cond_19

    .line 496
    .line 497
    const-string v0, "referrers"

    .line 498
    .line 499
    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 500
    .line 501
    .line 502
    :cond_19
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1rSDK;->hashCode:Ljava/util/Map;

    .line 503
    .line 504
    if-eqz v0, :cond_1a

    .line 505
    .line 506
    const-string v1, "fb_ddl"

    .line 507
    .line 508
    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 509
    .line 510
    .line 511
    :cond_1a
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1pSDK;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->copy:Lcom/appsflyer/internal/AFe1pSDK;

    .line 516
    .line 517
    if-ne v0, v1, :cond_1b

    .line 518
    .line 519
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1rSDK;->registerClient:Lcom/appsflyer/internal/AFh1pSDK;

    .line 520
    .line 521
    if-eqz v0, :cond_1b

    .line 522
    .line 523
    invoke-interface {v0}, Lcom/appsflyer/internal/AFh1pSDK;->getMonetizationNetwork()Z

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    if-eqz v0, :cond_1b

    .line 528
    .line 529
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1rSDK;->registerClient:Lcom/appsflyer/internal/AFh1pSDK;

    .line 530
    .line 531
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFh1pSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 532
    .line 533
    .line 534
    :cond_1b
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->toString:Lcom/appsflyer/internal/AFg1nSDK;

    .line 535
    .line 536
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 537
    .line 538
    .line 539
    return-void
.end method

.method public final getCurrencyIso4217Code()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getCurrencyIso4217Code()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1rSDK;->equals:Lcom/appsflyer/internal/AFh1xSDK;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, v0, Lcom/appsflyer/internal/AFh1xSDK;->copy:J

    .line 17
    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    cmp-long v5, v3, v5

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    iget-object v5, v0, Lcom/appsflyer/internal/AFh1xSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 25
    .line 26
    sub-long/2addr v1, v3

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "net"

    .line 32
    .line 33
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/appsflyer/internal/AFh1xSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 37
    .line 38
    new-instance v2, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1xSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "first_launch"

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string v0, "Metrics: launch start ts is missing"

    .line 56
    .line 57
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getMonetizationNetwork()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1rSDK;->copy()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method
