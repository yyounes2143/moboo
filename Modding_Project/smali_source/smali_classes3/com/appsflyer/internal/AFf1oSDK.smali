.class public final Lcom/appsflyer/internal/AFf1oSDK;
.super Lcom/appsflyer/internal/AFf1sSDK;
.source "Proguard"


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFInAppEventType:C = '\u0000'

.field private static AFKeystoreWrapper:[C = null

.field private static AFLogger:I = 0x1

.field private static registerClient:I


# instance fields
.field private final copy:Lcom/appsflyer/internal/AFc1hSDK;

.field private final copydefault:Ljava/lang/String;

.field private final equals:Lcom/appsflyer/internal/AFg1nSDK;

.field private final hashCode:Lcom/appsflyer/internal/AFc1oSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0xcdfd

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    new-array v1, v1, [C

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    sput-object v1, Lcom/appsflyer/internal/AFf1oSDK;->AFKeystoreWrapper:[C

    .line 12
    .line 13
    sput-char v0, Lcom/appsflyer/internal/AFf1oSDK;->AFInAppEventType:C

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :array_0
    .array-data 2
        -0x3206s
        -0x800s
        -0x3204s
        -0x7fbs
        -0x7fas
        -0x3203s
        -0x7eas
        -0x3201s
        -0x7f6s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFg1tSDK;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1tSDK;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2, p1}, Lcom/appsflyer/internal/AFf1sSDK;-><init>(Lcom/appsflyer/internal/AFh1mSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    .line 14
    .line 15
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFc1hSDK;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->copy:Lcom/appsflyer/internal/AFc1hSDK;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1oSDK;->copydefault:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->component3()Lcom/appsflyer/internal/AFg1nSDK;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1oSDK;->equals:Lcom/appsflyer/internal/AFg1nSDK;

    .line 28
    .line 29
    return-void
.end method

.method private static a(BLjava/lang/String;I[Ljava/lang/Object;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    check-cast p1, [C

    .line 8
    .line 9
    new-instance v0, Lcom/appsflyer/internal/AFk1pSDK;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/appsflyer/internal/AFk1pSDK;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/appsflyer/internal/AFf1oSDK;->AFKeystoreWrapper:[C

    .line 15
    .line 16
    const-wide v2, -0x7fb8f963e9bb3202L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    array-length v5, v1

    .line 25
    new-array v6, v5, [C

    .line 26
    .line 27
    move v7, v4

    .line 28
    :goto_0
    if-ge v7, v5, :cond_1

    .line 29
    .line 30
    aget-char v8, v1, v7

    .line 31
    .line 32
    int-to-long v8, v8

    .line 33
    xor-long/2addr v8, v2

    .line 34
    long-to-int v8, v8

    .line 35
    int-to-char v8, v8

    .line 36
    aput-char v8, v6, v7

    .line 37
    .line 38
    add-int/lit8 v7, v7, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v1, v6

    .line 42
    :cond_2
    sget-char v5, Lcom/appsflyer/internal/AFf1oSDK;->AFInAppEventType:C

    .line 43
    .line 44
    int-to-long v5, v5

    .line 45
    xor-long/2addr v2, v5

    .line 46
    long-to-int v2, v2

    .line 47
    int-to-char v2, v2

    .line 48
    new-array v3, p2, [C

    .line 49
    .line 50
    rem-int/lit8 v5, p2, 0x2

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    add-int/lit8 v5, p2, -0x1

    .line 55
    .line 56
    aget-char v6, p1, v5

    .line 57
    .line 58
    sub-int/2addr v6, p0

    .line 59
    int-to-char v6, v6

    .line 60
    aput-char v6, v3, v5

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v5, p2

    .line 64
    :goto_1
    const/4 v6, 0x1

    .line 65
    if-le v5, v6, :cond_8

    .line 66
    .line 67
    sget v7, Lcom/appsflyer/internal/AFf1oSDK;->$10:I

    .line 68
    .line 69
    add-int/lit8 v7, v7, 0x41

    .line 70
    .line 71
    rem-int/lit16 v8, v7, 0x80

    .line 72
    .line 73
    sput v8, Lcom/appsflyer/internal/AFf1oSDK;->$11:I

    .line 74
    .line 75
    rem-int/lit8 v7, v7, 0x2

    .line 76
    .line 77
    iput v4, v0, Lcom/appsflyer/internal/AFk1pSDK;->getMonetizationNetwork:I

    .line 78
    .line 79
    :goto_2
    iget v7, v0, Lcom/appsflyer/internal/AFk1pSDK;->getMonetizationNetwork:I

    .line 80
    .line 81
    if-ge v7, v5, :cond_8

    .line 82
    .line 83
    aget-char v8, p1, v7

    .line 84
    .line 85
    iput-char v8, v0, Lcom/appsflyer/internal/AFk1pSDK;->getRevenue:C

    .line 86
    .line 87
    add-int/lit8 v9, v7, 0x1

    .line 88
    .line 89
    aget-char v9, p1, v9

    .line 90
    .line 91
    iput-char v9, v0, Lcom/appsflyer/internal/AFk1pSDK;->getCurrencyIso4217Code:C

    .line 92
    .line 93
    if-ne v8, v9, :cond_5

    .line 94
    .line 95
    sget v10, Lcom/appsflyer/internal/AFf1oSDK;->$11:I

    .line 96
    .line 97
    add-int/lit8 v10, v10, 0x73

    .line 98
    .line 99
    rem-int/lit16 v11, v10, 0x80

    .line 100
    .line 101
    sput v11, Lcom/appsflyer/internal/AFf1oSDK;->$10:I

    .line 102
    .line 103
    rem-int/lit8 v10, v10, 0x2

    .line 104
    .line 105
    if-eqz v10, :cond_4

    .line 106
    .line 107
    ushr-int/2addr v8, p0

    .line 108
    int-to-char v8, v8

    .line 109
    aput-char v8, v3, v7

    .line 110
    .line 111
    shr-int/lit8 v8, v7, 0x1

    .line 112
    .line 113
    shl-int/2addr v9, p0

    .line 114
    int-to-char v9, v9

    .line 115
    aput-char v9, v3, v8

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    sub-int/2addr v8, p0

    .line 119
    int-to-char v8, v8

    .line 120
    aput-char v8, v3, v7

    .line 121
    .line 122
    add-int/lit8 v8, v7, 0x1

    .line 123
    .line 124
    sub-int/2addr v9, p0

    .line 125
    int-to-char v9, v9

    .line 126
    aput-char v9, v3, v8

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    div-int v10, v8, v2

    .line 130
    .line 131
    iput v10, v0, Lcom/appsflyer/internal/AFk1pSDK;->getMediationNetwork:I

    .line 132
    .line 133
    rem-int/2addr v8, v2

    .line 134
    iput v8, v0, Lcom/appsflyer/internal/AFk1pSDK;->component2:I

    .line 135
    .line 136
    div-int v11, v9, v2

    .line 137
    .line 138
    iput v11, v0, Lcom/appsflyer/internal/AFk1pSDK;->AFAdRevenueData:I

    .line 139
    .line 140
    rem-int/2addr v9, v2

    .line 141
    iput v9, v0, Lcom/appsflyer/internal/AFk1pSDK;->component3:I

    .line 142
    .line 143
    if-ne v8, v9, :cond_6

    .line 144
    .line 145
    add-int/2addr v10, v2

    .line 146
    sub-int/2addr v10, v6

    .line 147
    rem-int/2addr v10, v2

    .line 148
    iput v10, v0, Lcom/appsflyer/internal/AFk1pSDK;->getMediationNetwork:I

    .line 149
    .line 150
    add-int/2addr v11, v2

    .line 151
    sub-int/2addr v11, v6

    .line 152
    rem-int/2addr v11, v2

    .line 153
    iput v11, v0, Lcom/appsflyer/internal/AFk1pSDK;->AFAdRevenueData:I

    .line 154
    .line 155
    mul-int/2addr v10, v2

    .line 156
    add-int/2addr v10, v8

    .line 157
    mul-int/2addr v11, v2

    .line 158
    add-int/2addr v11, v9

    .line 159
    aget-char v8, v1, v10

    .line 160
    .line 161
    aput-char v8, v3, v7

    .line 162
    .line 163
    add-int/lit8 v8, v7, 0x1

    .line 164
    .line 165
    aget-char v9, v1, v11

    .line 166
    .line 167
    aput-char v9, v3, v8

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_6
    if-ne v10, v11, :cond_7

    .line 171
    .line 172
    add-int/2addr v8, v2

    .line 173
    sub-int/2addr v8, v6

    .line 174
    rem-int/2addr v8, v2

    .line 175
    iput v8, v0, Lcom/appsflyer/internal/AFk1pSDK;->component2:I

    .line 176
    .line 177
    add-int/2addr v9, v2

    .line 178
    sub-int/2addr v9, v6

    .line 179
    rem-int/2addr v9, v2

    .line 180
    iput v9, v0, Lcom/appsflyer/internal/AFk1pSDK;->component3:I

    .line 181
    .line 182
    mul-int/2addr v10, v2

    .line 183
    add-int/2addr v10, v8

    .line 184
    mul-int/2addr v11, v2

    .line 185
    add-int/2addr v11, v9

    .line 186
    aget-char v8, v1, v10

    .line 187
    .line 188
    aput-char v8, v3, v7

    .line 189
    .line 190
    add-int/lit8 v8, v7, 0x1

    .line 191
    .line 192
    aget-char v9, v1, v11

    .line 193
    .line 194
    aput-char v9, v3, v8

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    mul-int/2addr v10, v2

    .line 198
    add-int/2addr v10, v9

    .line 199
    mul-int/2addr v11, v2

    .line 200
    add-int/2addr v11, v8

    .line 201
    aget-char v8, v1, v10

    .line 202
    .line 203
    aput-char v8, v3, v7

    .line 204
    .line 205
    add-int/lit8 v8, v7, 0x1

    .line 206
    .line 207
    aget-char v9, v1, v11

    .line 208
    .line 209
    aput-char v9, v3, v8

    .line 210
    .line 211
    :goto_3
    add-int/lit8 v7, v7, 0x2

    .line 212
    .line 213
    iput v7, v0, Lcom/appsflyer/internal/AFk1pSDK;->getMonetizationNetwork:I

    .line 214
    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :cond_8
    sget p0, Lcom/appsflyer/internal/AFf1oSDK;->$11:I

    .line 218
    .line 219
    add-int/lit8 p0, p0, 0x5

    .line 220
    .line 221
    rem-int/lit16 p0, p0, 0x80

    .line 222
    .line 223
    sput p0, Lcom/appsflyer/internal/AFf1oSDK;->$10:I

    .line 224
    .line 225
    move p0, v4

    .line 226
    :goto_4
    if-ge p0, p2, :cond_9

    .line 227
    .line 228
    aget-char p1, v3, p0

    .line 229
    .line 230
    xor-int/lit16 p1, p1, 0x359a

    .line 231
    .line 232
    int-to-char p1, p1

    .line 233
    aput-char p1, v3, p0

    .line 234
    .line 235
    add-int/lit8 p0, p0, 0x1

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_9
    new-instance p0, Ljava/lang/String;

    .line 239
    .line 240
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 241
    .line 242
    .line 243
    aput-object p0, p3, v4

    .line 244
    .line 245
    return-void
.end method

.method private equals()V
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x21

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    const-string v1, "[register] Successfully registered for Uninstall Tracking"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v3, "sentRegisterRequestToAF"

    .line 15
    .line 16
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->component2:Lcom/appsflyer/internal/AFc1qSDK;

    .line 17
    .line 18
    invoke-interface {v0, v3, v2}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 4

    mul-int/lit16 v0, p1, 0x1ef

    mul-int/lit16 v1, p2, -0x1ed

    add-int/2addr v0, v1

    not-int v1, p2

    or-int v2, p1, v1

    mul-int/lit16 v2, v2, -0x3dc

    add-int/2addr v0, v2

    not-int v2, p1

    or-int v3, p2, v2

    not-int p3, p3

    or-int/2addr v3, p3

    mul-int/lit16 v3, v3, 0x1ee

    add-int/2addr v0, v3

    or-int/2addr v1, v2

    not-int v1, v1

    or-int/2addr p3, p2

    not-int p3, p3

    or-int/2addr p3, v1

    or-int/2addr p1, p2

    not-int p1, p1

    or-int/2addr p1, p3

    mul-int/lit16 p1, p1, 0x1ee

    add-int/2addr v0, p1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFf1oSDK;->getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFf1oSDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFf1oSDK;

    .line 1
    sget v0, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getCurrencyIso4217Code()V

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1wSDK;

    if-eqz v0, :cond_1

    .line 4
    sget v2, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1wSDK;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1oSDK;->equals()V

    .line 7
    sget p0, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1wSDK;->isSuccessful()Z

    throw v1

    :cond_1
    :goto_0
    return-object v1

    .line 8
    :cond_2
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getCurrencyIso4217Code()V

    .line 9
    throw v1
.end method

.method private static synthetic getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFf1oSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Lcom/appsflyer/internal/AFh1mSDK;

    .line 1
    invoke-super {v1, p0}, Lcom/appsflyer/internal/AFf1sSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 2
    iget-object v3, v1, Lcom/appsflyer/internal/AFf1oSDK;->copy:Lcom/appsflyer/internal/AFc1hSDK;

    .line 3
    iget-object v3, v3, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/appsflyer/internal/AFa1ySDK;->getRevenue()Lcom/appsflyer/internal/AFa1ySDK;

    move-result-object v4

    if-eqz v3, :cond_7

    .line 5
    invoke-virtual {v4}, Lcom/appsflyer/internal/AFa1ySDK;->getCurrencyIso4217Code()Z

    move-result v4

    if-nez v4, :cond_6

    .line 6
    :try_start_0
    const-string v4, "app_version_code"

    iget-object v5, v1, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    .line 7
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFc1oSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 9
    const-string v4, "app_version_name"

    iget-object v5, v1, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    .line 10
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFc1oSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v4, v5}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 13
    const-string v5, "app_name"

    invoke-direct {v1, v4}, Lcom/appsflyer/internal/AFf1oSDK;->s_(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 14
    iget-object v4, v1, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFc1oSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 15
    const-string v6, "yyyy-MM-dd_HHmmssZ"

    .line 16
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    const-string v6, "installDate"

    invoke-static {v7, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 18
    const-string v5, "Exception while collecting application version info."

    invoke-static {v5, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_0
    iget-object v4, v1, Lcom/appsflyer/internal/AFf1oSDK;->equals:Lcom/appsflyer/internal/AFg1nSDK;

    .line 20
    iget-object v5, p0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 21
    invoke-interface {v4, v5}, Lcom/appsflyer/internal/AFg1nSDK;->getRevenue(Ljava/util/Map;)V

    .line 22
    iget-object v4, p0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 23
    const-string v5, "ivc"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lcom/appsflyer/internal/AFa1ySDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 25
    sget v5, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    add-int/lit8 v5, v5, 0x2f

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    rem-int/lit8 v5, v5, 0x2

    const-string v6, "appUserId"

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {p0, v6, v4}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    const/16 v4, 0x53

    .line 27
    div-int/2addr v4, v0

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0, v6, v4}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 29
    :cond_1
    :goto_1
    :try_start_1
    const-string v4, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 30
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    const-string v5, "\u0003\u0007\u0005\u0006\u3601"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    rsub-int/lit8 v6, v6, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v2}, Lcom/appsflyer/internal/AFf1oSDK;->a(BLjava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 31
    const-string v4, "Exception while collecting device brand and model."

    invoke-static {v4, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v4, "deviceTrackingDisabled"

    invoke-virtual {v2, v4, v0}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    sget v2, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    rem-int/lit8 v2, v2, 0x2

    const-string v5, "true"

    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p0, v4, v5}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    const/16 v2, 0x2f

    .line 35
    div-int/2addr v2, v0

    goto :goto_3

    .line 36
    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 37
    :cond_3
    :goto_3
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1lSDK;->l_(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFb1jSDK;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 38
    sget v3, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    add-int/lit8 v3, v3, 0x23

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 39
    iget-object v3, v2, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue:Ljava/lang/String;

    .line 40
    const-string v4, "amazon_aid"

    invoke-virtual {p0, v4, v3}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 41
    iget-object v2, v2, Lcom/appsflyer/internal/AFb1jSDK;->getCurrencyIso4217Code:Ljava/lang/Boolean;

    .line 42
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "amazon_aid_limit"

    invoke-virtual {p0, v3, v2}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 43
    :cond_4
    iget-object v2, v1, Lcom/appsflyer/internal/AFe1fSDK;->component1:Lcom/appsflyer/internal/AFf1eSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v2

    const-string v3, "devkey"

    invoke-virtual {p0, v3, v2}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 44
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    .line 45
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v3, "uid"

    invoke-virtual {p0, v3, v2}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 47
    const-string v2, "af_gcm_token"

    iget-object v3, v1, Lcom/appsflyer/internal/AFf1oSDK;->copydefault:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 48
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1sSDK;->component2:Lcom/appsflyer/internal/AFc1qSDK;

    const-string v3, "appsFlyerCount"

    invoke-interface {v2, v3, v0}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v0

    .line 49
    const-string v2, "launch_counter"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdk"

    invoke-virtual {p0, v2, v0}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 51
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1oSDK;->component3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 52
    const-string v1, "channel"

    invoke-virtual {p0, v1, v0}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 53
    sget p0, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    :cond_5
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_6
    const-string p0, "CustomerUserId not set, Tracking is disabled"

    invoke-static {p0, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CustomerUserId not set, register is not sent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Context is not provided, can\'t send register request"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private s_(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1oSDK;->n_()Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget p1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    .line 13
    .line 14
    add-int/lit8 v0, p1, 0x77

    .line 15
    .line 16
    rem-int/lit16 v2, v0, 0x80

    .line 17
    .line 18
    sput v2, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 19
    .line 20
    rem-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x47

    .line 25
    .line 26
    rem-int/lit16 p1, p1, 0x80

    .line 27
    .line 28
    sput p1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    throw v1

    .line 34
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget v0, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x5f

    .line 45
    .line 46
    rem-int/lit16 v2, v0, 0x80

    .line 47
    .line 48
    sput v2, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 49
    .line 50
    rem-int/lit8 v0, v0, 0x2

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_2
    throw v1
.end method


# virtual methods
.method public final AFAdRevenueData(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p1, v0, v1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const v1, 0x362d3aa8

    .line 15
    .line 16
    .line 17
    const v2, -0x362d3aa8

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v2, p1}, Lcom/appsflyer/internal/AFf1oSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final component1(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0xd

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1oSDK;->areAllFieldsValid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v1, 0x53

    .line 20
    .line 21
    div-int/lit8 v1, v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1oSDK;->hashCode:Lcom/appsflyer/internal/AFc1oSDK;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1oSDK;->areAllFieldsValid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :goto_0
    sget v1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x13

    .line 38
    .line 39
    rem-int/lit16 v1, v1, 0x80

    .line 40
    .line 41
    sput v1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 42
    .line 43
    const-string v1, "advertiserId"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 46
    .line 47
    .line 48
    sget p1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x27

    .line 51
    .line 52
    rem-int/lit16 p1, p1, 0x80

    .line 53
    .line 54
    sput p1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final copydefault()Z
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x57

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    add-int/lit8 v1, v1, 0x75

    .line 17
    .line 18
    rem-int/lit16 v1, v1, 0x80

    .line 19
    .line 20
    sput v1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 21
    .line 22
    return v0
.end method

.method public final getCurrencyIso4217Code()V
    .locals 4

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x31fe27d4

    const v3, -0x31fe27d3    # -5.4460704E8f

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFf1oSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 0

    .line 2
    sget p1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    return-void
.end method

.method public final getMediationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 0

    .line 10
    sget p1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 0

    .line 57
    sget p1, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    return-void
.end method

.method public final getRevenue(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 1

    .line 1
    sget p1, Lcom/appsflyer/internal/AFf1oSDK;->AFLogger:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x33

    .line 4
    .line 5
    rem-int/lit16 v0, p1, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFf1oSDK;->registerClient:I

    .line 8
    .line 9
    rem-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
