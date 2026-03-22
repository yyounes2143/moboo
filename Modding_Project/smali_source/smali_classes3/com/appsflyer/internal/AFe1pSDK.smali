.class public final enum Lcom/appsflyer/internal/AFe1pSDK;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFe1pSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum areAllFieldsValid:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum component1:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum component2:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum component3:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum component4:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum copy:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum copydefault:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum d:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum equals:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum getMediationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum getMonetizationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum hashCode:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFe1pSDK;

.field public static final enum toString:Lcom/appsflyer/internal/AFe1pSDK;

.field private static final synthetic w:[Lcom/appsflyer/internal/AFe1pSDK;


# instance fields
.field public final unregisterClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    const-string v1, "RC_CDN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/appsflyer/internal/AFe1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 11
    .line 12
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 13
    .line 14
    const-string v4, "FETCH_ADVERTISING_ID"

    .line 15
    .line 16
    invoke-direct {v1, v4, v3, v3}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1pSDK;

    .line 20
    .line 21
    new-instance v4, Lcom/appsflyer/internal/AFe1pSDK;

    .line 22
    .line 23
    const-string v5, "LOAD_CACHE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v4, v5, v6, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lcom/appsflyer/internal/AFe1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

    .line 30
    .line 31
    new-instance v5, Lcom/appsflyer/internal/AFe1pSDK;

    .line 32
    .line 33
    const-string v7, "CACHED_EVENT"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/appsflyer/internal/AFe1pSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

    .line 40
    .line 41
    new-instance v7, Lcom/appsflyer/internal/AFe1pSDK;

    .line 42
    .line 43
    const-string v9, "CONVERSION"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 50
    .line 51
    new-instance v9, Lcom/appsflyer/internal/AFe1pSDK;

    .line 52
    .line 53
    const-string v11, "PLAY_INTEGRITY_API"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/appsflyer/internal/AFe1pSDK;->component3:Lcom/appsflyer/internal/AFe1pSDK;

    .line 60
    .line 61
    new-instance v11, Lcom/appsflyer/internal/AFe1pSDK;

    .line 62
    .line 63
    const-string v13, "REGISTER_TRIGGER"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/appsflyer/internal/AFe1pSDK;->component1:Lcom/appsflyer/internal/AFe1pSDK;

    .line 70
    .line 71
    new-instance v13, Lcom/appsflyer/internal/AFe1pSDK;

    .line 72
    .line 73
    const-string v15, "ONELINK"

    .line 74
    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v13, v15, v2, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lcom/appsflyer/internal/AFe1pSDK;->component4:Lcom/appsflyer/internal/AFe1pSDK;

    .line 82
    .line 83
    new-instance v15, Lcom/appsflyer/internal/AFe1pSDK;

    .line 84
    .line 85
    move/from16 v17, v2

    .line 86
    .line 87
    const-string v2, "DLSDK"

    .line 88
    .line 89
    move/from16 v18, v3

    .line 90
    .line 91
    const/16 v3, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v2, v3, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Lcom/appsflyer/internal/AFe1pSDK;->component2:Lcom/appsflyer/internal/AFe1pSDK;

    .line 97
    .line 98
    new-instance v2, Lcom/appsflyer/internal/AFe1pSDK;

    .line 99
    .line 100
    move/from16 v19, v3

    .line 101
    .line 102
    const-string v3, "RESOLVE_ESP"

    .line 103
    .line 104
    move/from16 v20, v12

    .line 105
    .line 106
    const/16 v12, 0x9

    .line 107
    .line 108
    invoke-direct {v2, v3, v12, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v2, Lcom/appsflyer/internal/AFe1pSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1pSDK;

    .line 112
    .line 113
    new-instance v3, Lcom/appsflyer/internal/AFe1pSDK;

    .line 114
    .line 115
    move/from16 v21, v12

    .line 116
    .line 117
    const-string v12, "ATTR"

    .line 118
    .line 119
    move/from16 v22, v14

    .line 120
    .line 121
    const/16 v14, 0xa

    .line 122
    .line 123
    invoke-direct {v3, v12, v14, v6}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    sput-object v3, Lcom/appsflyer/internal/AFe1pSDK;->hashCode:Lcom/appsflyer/internal/AFe1pSDK;

    .line 127
    .line 128
    new-instance v12, Lcom/appsflyer/internal/AFe1pSDK;

    .line 129
    .line 130
    move/from16 v23, v6

    .line 131
    .line 132
    const-string v6, "GCDSDK"

    .line 133
    .line 134
    move/from16 v24, v14

    .line 135
    .line 136
    const/16 v14, 0xb

    .line 137
    .line 138
    invoke-direct {v12, v6, v14, v8}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    sput-object v12, Lcom/appsflyer/internal/AFe1pSDK;->copydefault:Lcom/appsflyer/internal/AFe1pSDK;

    .line 142
    .line 143
    new-instance v6, Lcom/appsflyer/internal/AFe1pSDK;

    .line 144
    .line 145
    move/from16 v25, v8

    .line 146
    .line 147
    const-string v8, "REGISTER"

    .line 148
    .line 149
    move/from16 v26, v14

    .line 150
    .line 151
    const/16 v14, 0xc

    .line 152
    .line 153
    invoke-direct {v6, v8, v14, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v6, Lcom/appsflyer/internal/AFe1pSDK;->toString:Lcom/appsflyer/internal/AFe1pSDK;

    .line 157
    .line 158
    new-instance v8, Lcom/appsflyer/internal/AFe1pSDK;

    .line 159
    .line 160
    move/from16 v27, v14

    .line 161
    .line 162
    const-string v14, "LAUNCH"

    .line 163
    .line 164
    move-object/from16 v28, v0

    .line 165
    .line 166
    const/16 v0, 0xd

    .line 167
    .line 168
    invoke-direct {v8, v14, v0, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    sput-object v8, Lcom/appsflyer/internal/AFe1pSDK;->copy:Lcom/appsflyer/internal/AFe1pSDK;

    .line 172
    .line 173
    new-instance v14, Lcom/appsflyer/internal/AFe1pSDK;

    .line 174
    .line 175
    move/from16 v29, v0

    .line 176
    .line 177
    const-string v0, "INAPP"

    .line 178
    .line 179
    move-object/from16 v30, v1

    .line 180
    .line 181
    const/16 v1, 0xe

    .line 182
    .line 183
    invoke-direct {v14, v0, v1, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    sput-object v14, Lcom/appsflyer/internal/AFe1pSDK;->equals:Lcom/appsflyer/internal/AFe1pSDK;

    .line 187
    .line 188
    new-instance v0, Lcom/appsflyer/internal/AFe1pSDK;

    .line 189
    .line 190
    move/from16 v31, v1

    .line 191
    .line 192
    const-string v1, "MANUAL_PURCHASE_VALIDATION"

    .line 193
    .line 194
    move-object/from16 v32, v2

    .line 195
    .line 196
    const/16 v2, 0xf

    .line 197
    .line 198
    invoke-direct {v0, v1, v2, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 199
    .line 200
    .line 201
    sput-object v0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1pSDK;

    .line 202
    .line 203
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 204
    .line 205
    move/from16 v33, v2

    .line 206
    .line 207
    const-string v2, "PURCHASE_VALIDATE"

    .line 208
    .line 209
    move-object/from16 v34, v0

    .line 210
    .line 211
    const/16 v0, 0x10

    .line 212
    .line 213
    invoke-direct {v1, v2, v0, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 214
    .line 215
    .line 216
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1pSDK;

    .line 217
    .line 218
    new-instance v2, Lcom/appsflyer/internal/AFe1pSDK;

    .line 219
    .line 220
    move/from16 v35, v0

    .line 221
    .line 222
    const-string v0, "SDK_SERVICES"

    .line 223
    .line 224
    move-object/from16 v36, v1

    .line 225
    .line 226
    const/16 v1, 0x11

    .line 227
    .line 228
    invoke-direct {v2, v0, v1, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 229
    .line 230
    .line 231
    sput-object v2, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1pSDK;

    .line 232
    .line 233
    new-instance v0, Lcom/appsflyer/internal/AFe1pSDK;

    .line 234
    .line 235
    move/from16 v37, v1

    .line 236
    .line 237
    const-string v1, "IMPRESSIONS"

    .line 238
    .line 239
    move-object/from16 v38, v2

    .line 240
    .line 241
    const/16 v2, 0x12

    .line 242
    .line 243
    invoke-direct {v0, v1, v2, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 244
    .line 245
    .line 246
    sput-object v0, Lcom/appsflyer/internal/AFe1pSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    .line 247
    .line 248
    new-instance v1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 249
    .line 250
    move/from16 v39, v2

    .line 251
    .line 252
    const-string v2, "ARS_VALIDATE"

    .line 253
    .line 254
    move-object/from16 v40, v0

    .line 255
    .line 256
    const/16 v0, 0x13

    .line 257
    .line 258
    invoke-direct {v1, v2, v0, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 259
    .line 260
    .line 261
    sput-object v1, Lcom/appsflyer/internal/AFe1pSDK;->registerClient:Lcom/appsflyer/internal/AFe1pSDK;

    .line 262
    .line 263
    new-instance v2, Lcom/appsflyer/internal/AFe1pSDK;

    .line 264
    .line 265
    move/from16 v41, v0

    .line 266
    .line 267
    const-string v0, "ADREVENUE"

    .line 268
    .line 269
    move-object/from16 v42, v1

    .line 270
    .line 271
    const/16 v1, 0x14

    .line 272
    .line 273
    invoke-direct {v2, v0, v1, v10}, Lcom/appsflyer/internal/AFe1pSDK;-><init>(Ljava/lang/String;II)V

    .line 274
    .line 275
    .line 276
    sput-object v2, Lcom/appsflyer/internal/AFe1pSDK;->d:Lcom/appsflyer/internal/AFe1pSDK;

    .line 277
    .line 278
    const/16 v0, 0x15

    .line 279
    .line 280
    new-array v0, v0, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 281
    .line 282
    aput-object v28, v0, v16

    .line 283
    .line 284
    aput-object v30, v0, v18

    .line 285
    .line 286
    aput-object v4, v0, v23

    .line 287
    .line 288
    aput-object v5, v0, v25

    .line 289
    .line 290
    aput-object v7, v0, v10

    .line 291
    .line 292
    aput-object v9, v0, v20

    .line 293
    .line 294
    aput-object v11, v0, v22

    .line 295
    .line 296
    aput-object v13, v0, v17

    .line 297
    .line 298
    aput-object v15, v0, v19

    .line 299
    .line 300
    aput-object v32, v0, v21

    .line 301
    .line 302
    aput-object v3, v0, v24

    .line 303
    .line 304
    aput-object v12, v0, v26

    .line 305
    .line 306
    aput-object v6, v0, v27

    .line 307
    .line 308
    aput-object v8, v0, v29

    .line 309
    .line 310
    aput-object v14, v0, v31

    .line 311
    .line 312
    aput-object v34, v0, v33

    .line 313
    .line 314
    aput-object v36, v0, v35

    .line 315
    .line 316
    aput-object v38, v0, v37

    .line 317
    .line 318
    aput-object v40, v0, v39

    .line 319
    .line 320
    aput-object v42, v0, v41

    .line 321
    .line 322
    aput-object v2, v0, v1

    .line 323
    .line 324
    sput-object v0, Lcom/appsflyer/internal/AFe1pSDK;->w:[Lcom/appsflyer/internal/AFe1pSDK;

    .line 325
    .line 326
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/appsflyer/internal/AFe1pSDK;->unregisterClient:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1pSDK;
    .locals 1

    .line 1
    const-class v0, Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/appsflyer/internal/AFe1pSDK;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFe1pSDK;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFe1pSDK;->w:[Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFe1pSDK;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 8
    .line 9
    return-object v0
.end method
