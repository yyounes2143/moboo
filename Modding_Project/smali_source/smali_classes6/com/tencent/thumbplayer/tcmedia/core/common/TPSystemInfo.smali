.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;
.super Ljava/lang/Object;


# static fields
.field public static final CHIP_ARM_AARCH64:I = 0x7

.field public static final CHIP_ARM_LATER:I = 0x32

.field public static final CHIP_ARM_V5:I = 0x3

.field public static final CHIP_ARM_V6:I = 0x4

.field public static final CHIP_ARM_V7_NENO:I = 0x6

.field public static final CHIP_ARM_V7_NO_NENO:I = 0x5

.field public static final CHIP_MIPS:I = 0x2

.field public static final CHIP_UNKNOW:I = 0x0

.field public static final CHIP_X86:I = 0x1

.field public static final CPU_HW_HISI:I = 0x2

.field public static final CPU_HW_MTK:I = 0x1

.field public static final CPU_HW_OTHER:I = -0x1

.field public static final CPU_HW_QUALCOMM:I = 0x0

.field public static final CPU_HW_SAMSUNG:I = 0x3

.field public static final KEY_PROPERTY_BOARD:Ljava/lang/String; = "ro.product.board"

.field public static final KEY_PROPERTY_DEVICE:Ljava/lang/String; = "ro.product.device"

.field public static final KEY_PROPERTY_MANUFACTURER:Ljava/lang/String; = "ro.product.manufacturer"

.field public static final KEY_PROPERTY_MODEL:Ljava/lang/String; = "ro.product.model"

.field public static final KEY_PROPERTY_VERSION_RELEASE:Ljava/lang/String; = "ro.build.version.release"

.field public static final SDK_INT:I

.field private static sAppInstallTime:J = 0x0L

.field private static sAudioBestFramesPerBust:I = 0x0

.field private static sAudioBestSampleRate:I = 0x0

.field private static sCpuArch:I = 0x0

.field private static sCpuArchitecture:I = 0x0

.field private static sCpuHWProductIdx:I = -0x1

.field private static sCpuHWProducter:I = -0x1

.field private static sCpuHardware:Ljava/lang/String; = ""

.field private static final sCpuPerfList:[[Ljava/lang/String;

.field private static sCurrentCpuFreq:J = 0x0L

.field private static sDeviceManufacturer:Ljava/lang/String; = ""

.field private static sDeviceName:Ljava/lang/String; = ""

.field private static sFeature:Ljava/lang/String; = ""

.field private static sMaxCpuFreq:J = 0x0L

.field private static sNumOfCores:I = 0x0

.field private static sOSVersion:Ljava/lang/String; = ""

.field private static sOpenGLVersion:I = 0x0

.field private static sProcessorName:Ljava/lang/String; = "N/A"

.field private static sProductBoard:Ljava/lang/String; = ""

.field private static sProductDevice:Ljava/lang/String; = ""

.field public static sScreenHeight:I

.field public static sScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 67

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [[Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "MSM7227"

    .line 5
    .line 6
    const-string v2, "MSM7627"

    .line 7
    .line 8
    const-string v3, "MSM7227T"

    .line 9
    .line 10
    const-string v4, "MSM7627T"

    .line 11
    .line 12
    const-string v5, "MSM7227A"

    .line 13
    .line 14
    const-string v6, "MSM7627A"

    .line 15
    .line 16
    const-string v7, "QSD8250"

    .line 17
    .line 18
    const-string v8, "QSD8650"

    .line 19
    .line 20
    const-string v9, "MSM7230"

    .line 21
    .line 22
    const-string v10, "MSM7630"

    .line 23
    .line 24
    const-string v11, "APQ8055"

    .line 25
    .line 26
    const-string v12, "MSM8255"

    .line 27
    .line 28
    const-string v13, "MSM8655"

    .line 29
    .line 30
    const-string v14, "MSM8255T"

    .line 31
    .line 32
    const-string v15, "MSM8655T"

    .line 33
    .line 34
    const-string v16, "MSM8225"

    .line 35
    .line 36
    const-string v17, "MSM8625"

    .line 37
    .line 38
    const-string v18, "MSM8260"

    .line 39
    .line 40
    const-string v19, "MSM8660"

    .line 41
    .line 42
    const-string v20, "MSM8x25Q"

    .line 43
    .line 44
    const-string v21, "MSM8x26"

    .line 45
    .line 46
    const-string v22, "MSM8x10"

    .line 47
    .line 48
    const-string v23, "MSM8x12"

    .line 49
    .line 50
    const-string v24, "MSM8x30"

    .line 51
    .line 52
    const-string v25, "MSM8260A"

    .line 53
    .line 54
    const-string v26, "MSM8660A"

    .line 55
    .line 56
    const-string v27, "MSM8960"

    .line 57
    .line 58
    const-string v28, "MSM8208"

    .line 59
    .line 60
    const-string v29, "MSM8916"

    .line 61
    .line 62
    const-string v30, "MSM8960T"

    .line 63
    .line 64
    const-string v31, "MSM8909"

    .line 65
    .line 66
    const-string v32, "MSM8916v2"

    .line 67
    .line 68
    const-string v33, "MSM8936"

    .line 69
    .line 70
    const-string v34, "MSM8909v2"

    .line 71
    .line 72
    const-string v35, "MSM8917"

    .line 73
    .line 74
    const-string v36, "APQ8064"

    .line 75
    .line 76
    const-string v37, "APQ8064T"

    .line 77
    .line 78
    const-string v38, "MSM8920"

    .line 79
    .line 80
    const-string v39, "MSM8939"

    .line 81
    .line 82
    const-string v40, "MSM8937"

    .line 83
    .line 84
    const-string v41, "MSM8939v2"

    .line 85
    .line 86
    const-string v42, "MSM8940"

    .line 87
    .line 88
    const-string v43, "MSM8952"

    .line 89
    .line 90
    const-string v44, "MSM8974"

    .line 91
    .line 92
    const-string v45, "MSM8x74AA"

    .line 93
    .line 94
    const-string v46, "MSM8x74AB"

    .line 95
    .line 96
    const-string v47, "MSM8x74AC"

    .line 97
    .line 98
    const-string v48, "MSM8953"

    .line 99
    .line 100
    const-string v49, "APQ8084"

    .line 101
    .line 102
    const-string v50, "MSM8953Pro"

    .line 103
    .line 104
    const-string v51, "MSM8992"

    .line 105
    .line 106
    const-string v52, "MSM8956"

    .line 107
    .line 108
    const-string v53, "MSM8976"

    .line 109
    .line 110
    const-string v54, "MSM8976Pro"

    .line 111
    .line 112
    const-string v55, "MSM8994"

    .line 113
    .line 114
    const-string v56, "MSM8996"

    .line 115
    .line 116
    const-string v57, "MSM8996Pro"

    .line 117
    .line 118
    const-string v58, "MSM8998"

    .line 119
    .line 120
    const-string v59, "SDM845"

    .line 121
    .line 122
    const-string v60, "SM8150"

    .line 123
    .line 124
    const-string v61, "SM8250"

    .line 125
    .line 126
    const-string v62, "SM8250-AB"

    .line 127
    .line 128
    const-string v63, "SM8250-AC"

    .line 129
    .line 130
    const-string v64, "SM8350"

    .line 131
    .line 132
    const-string v65, "SM8350-AC"

    .line 133
    .line 134
    const-string v66, "SM8450"

    .line 135
    .line 136
    filled-new-array/range {v1 .. v66}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const/4 v2, 0x0

    .line 141
    aput-object v1, v0, v2

    .line 142
    .line 143
    const-string v3, "MT6516"

    .line 144
    .line 145
    const-string v4, "MT6513"

    .line 146
    .line 147
    const-string v5, "MT6573"

    .line 148
    .line 149
    const-string v6, "MT6515M"

    .line 150
    .line 151
    const-string v7, "MT6515"

    .line 152
    .line 153
    const-string v8, "MT6575"

    .line 154
    .line 155
    const-string v9, "MT6572"

    .line 156
    .line 157
    const-string v10, "MT6577"

    .line 158
    .line 159
    const-string v11, "MT6589"

    .line 160
    .line 161
    const-string v12, "MT6582"

    .line 162
    .line 163
    const-string v13, "MT6592"

    .line 164
    .line 165
    const-string v14, "MT6595"

    .line 166
    .line 167
    const-string v15, "MT6735"

    .line 168
    .line 169
    const-string v16, "MT6750"

    .line 170
    .line 171
    const-string v17, "MT6753"

    .line 172
    .line 173
    const-string v18, "MT6752"

    .line 174
    .line 175
    const-string v19, "MT6755"

    .line 176
    .line 177
    const-string v20, "MT6755"

    .line 178
    .line 179
    const-string v21, "MT6755T"

    .line 180
    .line 181
    const-string v22, "MT6795"

    .line 182
    .line 183
    const-string v23, "MT6757"

    .line 184
    .line 185
    const-string v24, "MT675x"

    .line 186
    .line 187
    const-string v25, "MT6797"

    .line 188
    .line 189
    const-string v26, "MT6797T"

    .line 190
    .line 191
    const-string v27, "MT6797X"

    .line 192
    .line 193
    const-string v28, "MT6771V"

    .line 194
    .line 195
    const-string v29, "MT6799"

    .line 196
    .line 197
    const-string v30, "MT6769Z"

    .line 198
    .line 199
    const-string v31, "MT6785T"

    .line 200
    .line 201
    const-string v32, "MT6853V"

    .line 202
    .line 203
    const-string v33, "MT6853V"

    .line 204
    .line 205
    const-string v34, "MT6873"

    .line 206
    .line 207
    const-string v35, "MT6874"

    .line 208
    .line 209
    const-string v36, "MT6875"

    .line 210
    .line 211
    const-string v37, "MT6877"

    .line 212
    .line 213
    const-string v38, "MT6885"

    .line 214
    .line 215
    const-string v39, "MT6889V"

    .line 216
    .line 217
    const-string v40, "MT6889Z"

    .line 218
    .line 219
    const-string v41, "MT6891Z"

    .line 220
    .line 221
    const-string v42, "MT6893"

    .line 222
    .line 223
    const-string v43, "MT6983"

    .line 224
    .line 225
    filled-new-array/range {v3 .. v43}, [Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const/4 v3, 0x1

    .line 230
    aput-object v1, v0, v3

    .line 231
    .line 232
    const-string v4, "K3V2"

    .line 233
    .line 234
    const-string v5, "K3V2E"

    .line 235
    .line 236
    const-string v6, "K3V2+"

    .line 237
    .line 238
    const-string v7, "Kirin910"

    .line 239
    .line 240
    const-string v8, "Kirin920"

    .line 241
    .line 242
    const-string v9, "Kirin925"

    .line 243
    .line 244
    const-string v10, "Kirin928"

    .line 245
    .line 246
    const-string v11, "Kirin620"

    .line 247
    .line 248
    const-string v12, "Kirin650"

    .line 249
    .line 250
    const-string v13, "Kirin655"

    .line 251
    .line 252
    const-string v14, "Kirin930"

    .line 253
    .line 254
    const-string v15, "Kirin935"

    .line 255
    .line 256
    const-string v16, "Kirin950"

    .line 257
    .line 258
    const-string v17, "Kirin955"

    .line 259
    .line 260
    const-string v18, "Kirin960"

    .line 261
    .line 262
    const-string v19, "Kirin970"

    .line 263
    .line 264
    const-string v20, "Kirin810"

    .line 265
    .line 266
    const-string v21, "Kirin980"

    .line 267
    .line 268
    const-string v22, "Kirin820"

    .line 269
    .line 270
    const-string v23, "Kirin985"

    .line 271
    .line 272
    const-string v24, "Kirin990"

    .line 273
    .line 274
    const-string v25, "Kirin9000E"

    .line 275
    .line 276
    const-string v26, "Kirin9000"

    .line 277
    .line 278
    filled-new-array/range {v4 .. v26}, [Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    const/4 v3, 0x2

    .line 283
    aput-object v1, v0, v3

    .line 284
    .line 285
    const-string v4, "S5L8900"

    .line 286
    .line 287
    const-string v5, "S5PC100"

    .line 288
    .line 289
    const-string v6, "Exynos3110"

    .line 290
    .line 291
    const-string v7, "Exynos3475"

    .line 292
    .line 293
    const-string v8, "Exynos4210"

    .line 294
    .line 295
    const-string v9, "Exynos4212"

    .line 296
    .line 297
    const-string v10, "SMDK4x12"

    .line 298
    .line 299
    const-string v11, "Exynos4412"

    .line 300
    .line 301
    const-string v12, "Exynos5250"

    .line 302
    .line 303
    const-string v13, "Exynos5260"

    .line 304
    .line 305
    const-string v14, "Exynos5410"

    .line 306
    .line 307
    const-string v15, "Exynos5420"

    .line 308
    .line 309
    const-string v16, "Exynos5422"

    .line 310
    .line 311
    const-string v17, "Exynos5430"

    .line 312
    .line 313
    const-string v18, "Exynos5800"

    .line 314
    .line 315
    const-string v19, "Exynos5433"

    .line 316
    .line 317
    const-string v20, "Exynos7580"

    .line 318
    .line 319
    const-string v21, "Exynos7870"

    .line 320
    .line 321
    const-string v22, "Exynos7870"

    .line 322
    .line 323
    const-string v23, "Exynos7420"

    .line 324
    .line 325
    const-string v24, "Exynos8890"

    .line 326
    .line 327
    const-string v25, "Exynos890"

    .line 328
    .line 329
    const-string v26, "Exynos8895"

    .line 330
    .line 331
    const-string v27, "Exynos9810"

    .line 332
    .line 333
    const-string v28, "Exynos9820"

    .line 334
    .line 335
    const-string v29, "Exynos9825"

    .line 336
    .line 337
    const-string v30, "Exynos990"

    .line 338
    .line 339
    const-string v31, "Exynos1080"

    .line 340
    .line 341
    const-string v32, "Exynos2100"

    .line 342
    .line 343
    const-string v33, "Exynos2200"

    .line 344
    .line 345
    filled-new-array/range {v4 .. v33}, [Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    const/4 v3, 0x3

    .line 350
    aput-object v1, v0, v3

    .line 351
    .line 352
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuPerfList:[[Ljava/lang/String;

    .line 353
    .line 354
    const-wide/16 v0, -0x1

    .line 355
    .line 356
    sput-wide v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sMaxCpuFreq:J

    .line 357
    .line 358
    sput-wide v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCurrentCpuFreq:J

    .line 359
    .line 360
    const/4 v0, -0x1

    .line 361
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sNumOfCores:I

    .line 362
    .line 363
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 364
    .line 365
    sput v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOpenGLVersion:I

    .line 366
    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 368
    .line 369
    const/16 v1, 0x19

    .line 370
    .line 371
    if-ne v0, v1, :cond_0

    .line 372
    .line 373
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 374
    .line 375
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-nez v3, :cond_0

    .line 380
    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    const/16 v2, 0x4f

    .line 386
    .line 387
    if-ne v1, v2, :cond_0

    .line 388
    .line 389
    const/16 v0, 0x1a

    .line 390
    .line 391
    :cond_0
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->SDK_INT:I

    .line 392
    .line 393
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getApiLevel()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    return v0
.end method

.method public static getBestAudioFramesPerBust()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sAudioBestFramesPerBust:I

    .line 2
    .line 3
    return v0
.end method

.method public static getBestAudioSampleRate()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sAudioBestSampleRate:I

    .line 2
    .line 3
    return v0
.end method

.method public static getCpuArchFromId(I)I
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_0
    const/4 p0, 0x6

    .line 11
    return p0

    .line 12
    :pswitch_1
    const/4 p0, 0x4

    .line 13
    return p0

    .line 14
    :pswitch_2
    const/4 p0, 0x3

    .line 15
    return p0

    .line 16
    :cond_0
    :pswitch_3
    const/4 p0, 0x7

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getCpuArchitecture()I
    .locals 4

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v1, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "getCpuArchitecture Build.CPU_ABI: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-static {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "arm64-v8a"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, 0x7

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sput v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 37
    .line 38
    return v3

    .line 39
    :cond_1
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const-string v0, "x86"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string v0, "X86"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    :cond_2
    const/4 v0, 0x1

    .line 58
    :goto_0
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_3
    if-eqz v1, :cond_5

    .line 63
    .line 64
    const-string v0, "mips"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    const-string v0, "Mips"

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    :cond_4
    sput v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_5
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I

    .line 85
    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getCpuInfo()V

    .line 89
    .line 90
    .line 91
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "getCpuArchitecture mCpuArchitecture:"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHardware:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_7

    .line 117
    .line 118
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHardware:Ljava/lang/String;

    .line 119
    .line 120
    const-string v1, "MSM8994"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    sput v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 129
    .line 130
    return v3

    .line 131
    :cond_7
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->isARMV5Whitelist()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    const/4 v0, 0x3

    .line 138
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 139
    .line 140
    return v0

    .line 141
    :cond_8
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProcessorName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/4 v1, 0x4

    .line 148
    if-nez v0, :cond_9

    .line 149
    .line 150
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProcessorName:Ljava/lang/String;

    .line 151
    .line 152
    const-string v2, "ARMv6"

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    sput v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 161
    .line 162
    return v1

    .line 163
    :cond_9
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProcessorName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_a

    .line 170
    .line 171
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProcessorName:Ljava/lang/String;

    .line 172
    .line 173
    const-string v2, "AArch64"

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_a

    .line 180
    .line 181
    sput v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 182
    .line 183
    return v3

    .line 184
    :cond_a
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I

    .line 185
    .line 186
    if-ne v0, v3, :cond_b

    .line 187
    .line 188
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sFeature:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_b

    .line 195
    .line 196
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sFeature:Ljava/lang/String;

    .line 197
    .line 198
    const-string v2, "neon"

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_b

    .line 205
    .line 206
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sFeature:Ljava/lang/String;

    .line 207
    .line 208
    const-string v2, "asimd"

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_b

    .line 215
    .line 216
    sput v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 217
    .line 218
    return v1

    .line 219
    :cond_b
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I

    .line 220
    .line 221
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getCpuArchFromId(I)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :goto_1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArch:I

    .line 228
    .line 229
    return v0
.end method

.method private static getCpuHWProducer(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "Exynos"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_7

    .line 16
    .line 17
    const-string v0, "SMDK"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_7

    .line 24
    .line 25
    const-string v0, "S5L8900"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_7

    .line 32
    .line 33
    const-string v0, "S5PC100"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const-string v0, "Kirin"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_6

    .line 49
    .line 50
    const-string v0, "K3V"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string v0, "MSM"

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    const-string v0, "APQ"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    const-string v0, "QSD"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    const-string v0, "SDM"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    const-string v0, "SM"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const-string v0, "MT6"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_4

    .line 107
    .line 108
    const/4 p0, 0x1

    .line 109
    return p0

    .line 110
    :cond_4
    return v1

    .line 111
    :cond_5
    :goto_0
    const/4 p0, 0x0

    .line 112
    return p0

    .line 113
    :cond_6
    :goto_1
    const/4 p0, 0x2

    .line 114
    return p0

    .line 115
    :cond_7
    :goto_2
    const/4 p0, 0x3

    .line 116
    return p0
.end method

.method public static getCpuHWProductIndex(ILjava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    if-ltz p0, :cond_3

    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuPerfList:[[Ljava/lang/String;

    array-length v2, v1

    if-lt p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    aget-object p0, v1, p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static getCpuHWProductIndex(Ljava/lang/String;)I
    .locals 6

    .line 2
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProducter:I

    if-gez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getCpuHWProducer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProducter:I

    :cond_0
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProducter:I

    if-ltz v0, :cond_4

    sget v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProductIdx:I

    if-gez v1, :cond_4

    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuPerfList:[[Ljava/lang/String;

    aget-object v0, v1, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_2

    :goto_1
    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sput v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProductIdx:I

    :cond_4
    sget p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProductIdx:I

    return p0
.end method

.method public static getCpuHWProducter(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProducter:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getCpuHWProducer(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProducter:I

    .line 10
    .line 11
    :cond_0
    sget p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHWProducter:I

    .line 12
    .line 13
    return p0
.end method

.method public static getCpuHarewareName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHardware:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getCpuInfo()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHardware:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public static getCpuInfo()V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    new-instance v3, Ljava/io/FileInputStream;

    .line 6
    .line 7
    const-string v4, "/proc/cpuinfo"

    .line 8
    .line 9
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "UTF-8"

    .line 13
    .line 14
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    .line 16
    .line 17
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->parseCpuInfoLine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    :goto_1
    move-object v1, v2

    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-object v3, v1

    .line 51
    goto :goto_1

    .line 52
    :catchall_2
    move-object v3, v1

    .line 53
    :goto_2
    :try_start_4
    const-string v2, "Unknown"

    .line 54
    .line 55
    sput-object v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHardware:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    sput v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 63
    .line 64
    .line 65
    :cond_1
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :catchall_3
    move-exception v2

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catch_1
    move-exception v1

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 83
    .line 84
    .line 85
    goto :goto_5

    .line 86
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_5
    throw v2
.end method

.method public static getCurrentCpuFreq()J
    .locals 10

    .line 1
    sget-wide v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCurrentCpuFreq:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x4

    .line 12
    const-wide/32 v4, 0xfa000

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 16
    .line 17
    new-instance v7, Ljava/io/InputStreamReader;

    .line 18
    .line 19
    new-instance v8, Ljava/io/FileInputStream;

    .line 20
    .line 21
    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v6, "UTF-8"

    .line 25
    .line 26
    invoke-direct {v7, v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 27
    .line 28
    .line 29
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    .line 30
    .line 31
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    .line 45
    .line 46
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    .line 51
    .line 52
    return-wide v2

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-wide v2

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :catch_1
    move-exception v0

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :catch_2
    move-exception v0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-lez v8, :cond_2

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    :cond_2
    sput-wide v4, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCurrentCpuFreq:J
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    .line 90
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    .line 95
    .line 96
    return-wide v4

    .line 97
    :catchall_2
    move-exception v6

    .line 98
    move-object v9, v6

    .line 99
    move-object v6, v0

    .line 100
    move-object v0, v9

    .line 101
    goto :goto_0

    .line 102
    :catch_3
    move-exception v6

    .line 103
    move-object v9, v6

    .line 104
    move-object v6, v0

    .line 105
    move-object v0, v9

    .line 106
    goto :goto_1

    .line 107
    :catch_4
    move-exception v6

    .line 108
    move-object v9, v6

    .line 109
    move-object v6, v0

    .line 110
    move-object v0, v9

    .line 111
    goto :goto_2

    .line 112
    :catch_5
    move-exception v6

    .line 113
    move-object v9, v6

    .line 114
    move-object v6, v0

    .line 115
    move-object v0, v9

    .line 116
    goto :goto_3

    .line 117
    :catchall_3
    move-exception v6

    .line 118
    move-object v7, v0

    .line 119
    move-object v0, v6

    .line 120
    move-object v6, v7

    .line 121
    goto :goto_0

    .line 122
    :catch_6
    move-exception v6

    .line 123
    move-object v7, v0

    .line 124
    move-object v0, v6

    .line 125
    move-object v6, v7

    .line 126
    goto :goto_1

    .line 127
    :catch_7
    move-exception v6

    .line 128
    move-object v7, v0

    .line 129
    move-object v0, v6

    .line 130
    move-object v6, v7

    .line 131
    goto :goto_2

    .line 132
    :catch_8
    move-exception v6

    .line 133
    move-object v7, v0

    .line 134
    move-object v0, v6

    .line 135
    move-object v6, v7

    .line 136
    goto :goto_3

    .line 137
    :goto_0
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 142
    .line 143
    .line 144
    if-eqz v7, :cond_3

    .line 145
    .line 146
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 147
    .line 148
    .line 149
    :cond_3
    if-eqz v6, :cond_7

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :catchall_4
    move-exception v0

    .line 156
    goto :goto_5

    .line 157
    :goto_1
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 162
    .line 163
    .line 164
    if-eqz v7, :cond_4

    .line 165
    .line 166
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 167
    .line 168
    .line 169
    :cond_4
    if-eqz v6, :cond_7

    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :goto_2
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 180
    .line 181
    .line 182
    if-eqz v7, :cond_5

    .line 183
    .line 184
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 185
    .line 186
    .line 187
    :cond_5
    if-eqz v6, :cond_7

    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :goto_3
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 198
    .line 199
    .line 200
    if-eqz v7, :cond_6

    .line 201
    .line 202
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 203
    .line 204
    .line 205
    :cond_6
    if-eqz v6, :cond_7

    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 208
    .line 209
    .line 210
    :cond_7
    :goto_4
    return-wide v4

    .line 211
    :goto_5
    if-eqz v7, :cond_8

    .line 212
    .line 213
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 214
    .line 215
    .line 216
    :cond_8
    if-eqz v6, :cond_9

    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 219
    .line 220
    .line 221
    :cond_9
    throw v0
.end method

.method public static getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceManufacturer:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceManufacturer:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceManufacturer:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static declared-synchronized getDeviceName()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceName:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v1
.end method

.method public static getMaxCpuFreq()J
    .locals 7

    .line 1
    sget-wide v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sMaxCpuFreq:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v2, v0

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x4

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    :try_start_0
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 15
    .line 16
    new-instance v5, Ljava/io/InputStreamReader;

    .line 17
    .line 18
    new-instance v6, Ljava/io/FileInputStream;

    .line 19
    .line 20
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "UTF-8"

    .line 24
    .line 25
    invoke-direct {v5, v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 26
    .line 27
    .line 28
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-wide v2

    .line 61
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-lez v6, :cond_2

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 79
    .line 80
    .line 81
    goto :goto_5

    .line 82
    :catch_1
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :catchall_0
    :goto_1
    move-object v0, v5

    .line 92
    goto :goto_3

    .line 93
    :catch_2
    :goto_2
    move-object v0, v5

    .line 94
    goto :goto_4

    .line 95
    :catchall_1
    move-object v4, v0

    .line 96
    goto :goto_1

    .line 97
    :catch_3
    move-object v4, v0

    .line 98
    goto :goto_2

    .line 99
    :catchall_2
    move-object v4, v0

    .line 100
    :goto_3
    if-eqz v0, :cond_3

    .line 101
    .line 102
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 103
    .line 104
    .line 105
    :cond_3
    if-eqz v4, :cond_5

    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :catch_4
    move-object v4, v0

    .line 112
    :goto_4
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 115
    .line 116
    .line 117
    :cond_4
    if-eqz v4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_5
    sput-wide v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sMaxCpuFreq:J

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "MaxCpuFreq "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-wide v4, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sMaxCpuFreq:J

    .line 132
    .line 133
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const/4 v1, 0x2

    .line 141
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-wide v2
.end method

.method public static getNumCores()I
    .locals 3

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sNumOfCores:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v1, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    const-string v2, "/sys/devices/system/cpu/"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo$1CpuFilter;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo$1CpuFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sNumOfCores:I

    .line 27
    .line 28
    return v0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    array-length v1, v1

    .line 32
    sput v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sNumOfCores:I

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "core num "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sNumOfCores:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x2

    .line 51
    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sNumOfCores:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    return v0

    .line 57
    :goto_0
    const/4 v2, 0x4

    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sNumOfCores:I

    .line 66
    .line 67
    return v0
.end method

.method public static getOpenGLSupportVersion(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOpenGLVersion:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "activity"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/ActivityManager;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    sget p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOpenGLVersion:I

    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 27
    .line 28
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOpenGLVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    sget p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOpenGLVersion:I

    .line 41
    .line 42
    return p0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOSVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOSVersion:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOSVersion:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getProductBoard()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProductBoard:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProductBoard:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProductBoard:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getProductDevice()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProductDevice:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProductDevice:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProductDevice:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sScreenHeight:I

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    return v1

    .line 10
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    .line 20
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sScreenHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sScreenHeight:I

    .line 24
    .line 25
    :goto_0
    sget p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sScreenHeight:I

    .line 26
    .line 27
    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sScreenWidth:I

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    return v1

    .line 10
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    .line 20
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sScreenWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sScreenWidth:I

    .line 24
    .line 25
    :goto_0
    sget p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sScreenWidth:I

    .line 26
    .line 27
    return p0
.end method

.method public static getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 1
    const-string v0, "\\s+"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getSystemIdleTime([Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getSystemUptime([Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getSystemIdleTime([Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getSystemUptime([Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const-wide/16 v8, 0x0

    .line 51
    .line 52
    cmp-long v0, v2, v8

    .line 53
    .line 54
    if-ltz v0, :cond_1

    .line 55
    .line 56
    cmp-long v0, v4, v8

    .line 57
    .line 58
    if-ltz v0, :cond_1

    .line 59
    .line 60
    cmp-long v0, v6, v8

    .line 61
    .line 62
    if-ltz v0, :cond_1

    .line 63
    .line 64
    cmp-long v0, p0, v8

    .line 65
    .line 66
    if-ltz v0, :cond_1

    .line 67
    .line 68
    add-long/2addr v6, p0

    .line 69
    add-long/2addr v2, v4

    .line 70
    cmp-long v0, v6, v2

    .line 71
    .line 72
    if-lez v0, :cond_1

    .line 73
    .line 74
    cmp-long v0, p0, v4

    .line 75
    .line 76
    if-ltz v0, :cond_1

    .line 77
    .line 78
    sub-long/2addr p0, v4

    .line 79
    long-to-float p0, p0

    .line 80
    sub-long/2addr v6, v2

    .line 81
    long-to-float p1, v6

    .line 82
    div-float/2addr p0, p1

    .line 83
    const/high16 p1, 0x42c80000    # 100.0f

    .line 84
    .line 85
    mul-float v1, p0, p1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    const/4 p1, 0x4

    .line 90
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    float-to-int p0, v1

    .line 98
    return p0

    .line 99
    :cond_2
    :goto_1
    const/4 p0, -0x1

    .line 100
    return p0
.end method

.method public static getSystemIdleTime([Ljava/lang/String;)J
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    aget-object p0, p0, v0

    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    return-wide v0

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    return-wide v0
.end method

.method public static getSystemUptime([Ljava/lang/String;)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    if-ge v2, v3, :cond_1

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    if-eq v3, v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    add-long/2addr v0, v3

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-wide v0
.end method

.method private static hasMarshmallow()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static declared-synchronized initAudioBestSettings(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    :try_start_0
    sget v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sAudioBestSampleRate:I

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "audio"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/media/AudioManager;

    .line 18
    .line 19
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sput v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sAudioBestSampleRate:I

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sAudioBestFramesPerBust:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 v1, 0x4

    .line 53
    invoke-static {v1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_1
    monitor-exit v0

    .line 61
    return-void
.end method

.method public static isARMV5Whitelist()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "XT882"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "ME860"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "MB860"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "Lenovo P70"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "Lenovo A60"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "Lenovo A366t"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    return v0

    .line 76
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 77
    return v0
.end method

.method private static parseCpuInfoLine(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "aarch64"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "AArch64"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/16 v0, 0x40

    .line 18
    .line 19
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I

    .line 20
    .line 21
    :cond_1
    const-string v0, "Processor"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x3a

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-le v0, v2, :cond_6

    .line 37
    .line 38
    add-int/2addr v0, v2

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProcessorName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProcessorName:Ljava/lang/String;

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-string v0, "CPU architecture"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v3, 0x2

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I

    .line 66
    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-le v0, v2, :cond_6

    .line 74
    .line 75
    add-int/2addr v0, v2

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-lez v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-ge v0, v3, :cond_3

    .line 99
    .line 100
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    long-to-int p0, v0

    .line 105
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I

    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-le v0, v2, :cond_6

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    long-to-int p0, v0

    .line 124
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuArchitecture:I

    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    const-string v0, "Features"

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-le v0, v2, :cond_6

    .line 140
    .line 141
    add-int/2addr v0, v2

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sFeature:Ljava/lang/String;

    .line 155
    .line 156
    return-void

    .line 157
    :cond_5
    const-string v0, "Hardware"

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-le v0, v2, :cond_6

    .line 170
    .line 171
    add-int/2addr v0, v2

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const-string v0, " "

    .line 185
    .line 186
    const-string v1, ""

    .line 187
    .line 188
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHardware:Ljava/lang/String;

    .line 193
    .line 194
    new-instance p0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v0, "hardware "

    .line 197
    .line 198
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHardware:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-static {v3, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sCpuHardware:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->getCpuHWProductIndex(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_6
    return-void
.end method

.method private static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 3
    .line 4
    new-instance v2, Ljava/io/FileReader;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/32 v4, 0x7fffffff

    .line 17
    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    .line 21
    if-gtz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    long-to-int v2, v2

    .line 28
    new-array v2, v2, [C

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    long-to-int p0, v3

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, v3, p0}, Ljava/io/BufferedReader;->read([CII)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-lez p0, :cond_0

    .line 41
    .line 42
    new-instance p0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    move-object v0, p0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    move-object v0, v1

    .line 53
    goto :goto_3

    .line 54
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_2
    move-exception p0

    .line 64
    move-object v1, v0

    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception p0

    .line 67
    goto :goto_3

    .line 68
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 69
    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_2
    return-object v0

    .line 77
    :catchall_3
    move-exception p0

    .line 78
    goto :goto_4

    .line 79
    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 80
    :catchall_4
    move-exception p0

    .line 81
    move-object v1, v0

    .line 82
    :goto_4
    if-eqz v1, :cond_2

    .line 83
    .line 84
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 85
    .line 86
    .line 87
    goto :goto_5

    .line 88
    :catchall_5
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_5
    throw p0
.end method

.method public static readSystemStat()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    const-string v3, "/proc/stat"

    .line 6
    .line 7
    const-string v4, "r"

    .line 8
    .line 9
    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v3

    .line 30
    goto :goto_0

    .line 31
    :catchall_2
    move-exception v3

    .line 32
    move-object v2, v1

    .line 33
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 34
    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_1
    return-object v1

    .line 42
    :catchall_3
    move-exception v1

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catchall_4
    move-exception v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_2
    throw v1
.end method

.method public static declared-synchronized setDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "ro.product.model"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sput-object p1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceName:Ljava/lang/String;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "ro.product.manufacturer"

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sput-object p1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sDeviceManufacturer:Ljava/lang/String;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string v0, "ro.build.version.release"

    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sput-object p1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sOSVersion:Ljava/lang/String;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    const-string v0, "ro.product.device"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sput-object p1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProductDevice:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    const-string v0, "ro.product.board"

    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    sput-object p1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPSystemInfo;->sProductBoard:Ljava/lang/String;

    .line 54
    .line 55
    :cond_4
    return-void
.end method

.method public static supportInDeviceDolbyAudioEffect()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    move v3, v0

    .line 8
    :goto_0
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    :try_start_1
    aget-object v4, v1, v0

    .line 11
    .line 12
    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    .line 13
    .line 14
    const-string v5, "Dolby Laboratories"

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    return v3

    .line 29
    :catch_1
    move-exception v1

    .line 30
    move v3, v0

    .line 31
    move-object v0, v1

    .line 32
    :goto_1
    const/4 v1, 0x4

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v3
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/io/FileWriter;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    const/4 p0, 0x0

    .line 36
    :catchall_1
    if-eqz p0, :cond_1

    .line 37
    .line 38
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method
