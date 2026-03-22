.class public Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CustomSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static clamp(I)I
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x1f

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    and-int/2addr p0, v0

    .line 5
    add-int/lit16 p0, p0, -0xff

    .line 6
    .line 7
    shr-int/lit8 v0, p0, 0x1f

    .line 8
    .line 9
    and-int/2addr p0, v0

    .line 10
    add-int/lit16 p0, p0, 0xff

    .line 11
    .line 12
    return p0
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "set"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :try_start_0
    sget-object v4, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    aget v4, v4, v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    const/4 v6, 0x2

    .line 42
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    const-wide v9, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/high16 v11, 0x437f0000    # 255.0f

    .line 52
    .line 53
    packed-switch v4, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_0
    :try_start_1
    new-array p0, v1, [Ljava/lang/Class;

    .line 59
    .line 60
    aput-object v8, p0, v0

    .line 61
    .line 62
    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    aget p2, p2, v0

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object p2, v1, v0

    .line 75
    .line 76
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_1
    new-array p0, v1, [Ljava/lang/Class;

    .line 81
    .line 82
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 83
    .line 84
    aput-object v4, p0, v0

    .line 85
    .line 86
    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    aget p2, p2, v0

    .line 91
    .line 92
    const/high16 v2, 0x3f000000    # 0.5f

    .line 93
    .line 94
    cmpl-float p2, p2, v2

    .line 95
    .line 96
    if-lez p2, :cond_0

    .line 97
    .line 98
    move p2, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move p2, v0

    .line 101
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object p2, v1, v0

    .line 108
    .line 109
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v1, "unable to interpolate strings "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p2

    .line 140
    :pswitch_3
    new-array p0, v1, [Ljava/lang/Class;

    .line 141
    .line 142
    aput-object v7, p0, v0

    .line 143
    .line 144
    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    aget v2, p2, v0

    .line 149
    .line 150
    float-to-double v2, v2

    .line 151
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    double-to-float v2, v2

    .line 156
    mul-float/2addr v2, v11

    .line 157
    float-to-int v2, v2

    .line 158
    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    aget v3, p2, v1

    .line 163
    .line 164
    float-to-double v3, v3

    .line 165
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    double-to-float v3, v3

    .line 170
    mul-float/2addr v3, v11

    .line 171
    float-to-int v3, v3

    .line 172
    invoke-static {v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    aget v4, p2, v6

    .line 177
    .line 178
    float-to-double v6, v4

    .line 179
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 180
    .line 181
    .line 182
    move-result-wide v6

    .line 183
    double-to-float v4, v6

    .line 184
    mul-float/2addr v4, v11

    .line 185
    float-to-int v4, v4

    .line 186
    invoke-static {v4}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    aget p2, p2, v5

    .line 191
    .line 192
    mul-float/2addr p2, v11

    .line 193
    float-to-int p2, p2

    .line 194
    invoke-static {p2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    shl-int/lit8 p2, p2, 0x18

    .line 199
    .line 200
    shl-int/lit8 v2, v2, 0x10

    .line 201
    .line 202
    or-int/2addr p2, v2

    .line 203
    shl-int/lit8 v2, v3, 0x8

    .line 204
    .line 205
    or-int/2addr p2, v2

    .line 206
    or-int/2addr p2, v4

    .line 207
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    .line 213
    aput-object p2, v1, v0

    .line 214
    .line 215
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_4
    new-array p0, v1, [Ljava/lang/Class;

    .line 220
    .line 221
    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 222
    .line 223
    aput-object v4, p0, v0

    .line 224
    .line 225
    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    aget v2, p2, v0

    .line 230
    .line 231
    float-to-double v2, v2

    .line 232
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 233
    .line 234
    .line 235
    move-result-wide v2

    .line 236
    double-to-float v2, v2

    .line 237
    mul-float/2addr v2, v11

    .line 238
    float-to-int v2, v2

    .line 239
    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    aget v3, p2, v1

    .line 244
    .line 245
    float-to-double v3, v3

    .line 246
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 247
    .line 248
    .line 249
    move-result-wide v3

    .line 250
    double-to-float v3, v3

    .line 251
    mul-float/2addr v3, v11

    .line 252
    float-to-int v3, v3

    .line 253
    invoke-static {v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    aget v4, p2, v6

    .line 258
    .line 259
    float-to-double v6, v4

    .line 260
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 261
    .line 262
    .line 263
    move-result-wide v6

    .line 264
    double-to-float v4, v6

    .line 265
    mul-float/2addr v4, v11

    .line 266
    float-to-int v4, v4

    .line 267
    invoke-static {v4}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    aget p2, p2, v5

    .line 272
    .line 273
    mul-float/2addr p2, v11

    .line 274
    float-to-int p2, p2

    .line 275
    invoke-static {p2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 276
    .line 277
    .line 278
    move-result p2

    .line 279
    shl-int/lit8 p2, p2, 0x18

    .line 280
    .line 281
    shl-int/lit8 v2, v2, 0x10

    .line 282
    .line 283
    or-int/2addr p2, v2

    .line 284
    shl-int/lit8 v2, v3, 0x8

    .line 285
    .line 286
    or-int/2addr p2, v2

    .line 287
    or-int/2addr p2, v4

    .line 288
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 289
    .line 290
    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 294
    .line 295
    .line 296
    new-array p2, v1, [Ljava/lang/Object;

    .line 297
    .line 298
    aput-object v2, p2, v0

    .line 299
    .line 300
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :pswitch_5
    new-array p0, v1, [Ljava/lang/Class;

    .line 305
    .line 306
    aput-object v8, p0, v0

    .line 307
    .line 308
    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    aget p2, p2, v0

    .line 313
    .line 314
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    new-array v1, v1, [Ljava/lang/Object;

    .line 319
    .line 320
    aput-object p2, v1, v0

    .line 321
    .line 322
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :pswitch_6
    new-array p0, v1, [Ljava/lang/Class;

    .line 327
    .line 328
    aput-object v7, p0, v0

    .line 329
    .line 330
    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    aget p2, p2, v0

    .line 335
    .line 336
    float-to-int p2, p2

    .line 337
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    new-array v1, v1, [Ljava/lang/Object;

    .line 342
    .line 343
    aput-object p2, v1, v0

    .line 344
    .line 345
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :catch_0
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :catch_1
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    goto :goto_1

    .line 357
    :catch_2
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    :goto_1
    return-void

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
