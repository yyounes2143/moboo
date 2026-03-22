.class public Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Autofill"
.end annotation


# instance fields
.field public final editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

.field public final hintText:Ljava/lang/String;

.field public final hints:[Ljava/lang/String;

.field public final uniqueIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hints:[Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hintText:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 11
    .line 12
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;
    .locals 6
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    const-string v0, "uniqueIdentifier"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "hints"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "hintText"

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    const-string v3, "editingValue"

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    new-array v3, v3, [Ljava/lang/String;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ge v4, v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->translateAutofillHint(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v3, v4

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    .line 60
    .line 61
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v1, v0, v3, v2, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method private static translateAutofillHint(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "postalCode"

    .line 4
    .line 5
    const-string v2, "postalAddress"

    .line 6
    .line 7
    const-string v3, "password"

    .line 8
    .line 9
    const-string v4, "newUsername"

    .line 10
    .line 11
    const-string v5, "username"

    .line 12
    .line 13
    const-string v6, "creditCardExpirationYear"

    .line 14
    .line 15
    const-string v7, "creditCardExpirationDate"

    .line 16
    .line 17
    const-string v8, "creditCardNumber"

    .line 18
    .line 19
    const-string v9, "gender"

    .line 20
    .line 21
    const-string v10, "creditCardExpirationDay"

    .line 22
    .line 23
    const-string v11, "creditCardSecurityCode"

    .line 24
    .line 25
    const-string v12, "newPassword"

    .line 26
    .line 27
    const-string v13, "creditCardExpirationMonth"

    .line 28
    .line 29
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v15, 0x1a

    .line 32
    .line 33
    if-ge v14, v15, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v16

    .line 43
    sparse-switch v16, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 v15, -0x1

    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_0
    const-string v15, "birthdayDay"

    .line 50
    .line 51
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v15

    .line 55
    if-nez v15, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v15, 0x23

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    if-nez v15, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/16 v15, 0x22

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :sswitch_2
    const-string v15, "postalAddressExtended"

    .line 74
    .line 75
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    if-nez v15, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const/16 v15, 0x21

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    if-nez v15, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/16 v15, 0x20

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :sswitch_4
    const-string v15, "givenName"

    .line 98
    .line 99
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v15

    .line 103
    if-nez v15, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    const/16 v15, 0x1f

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    if-nez v15, :cond_6

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    const/16 v15, 0x1e

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :sswitch_6
    const-string v15, "birthday"

    .line 122
    .line 123
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    if-nez v15, :cond_7

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    const/16 v15, 0x1d

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :sswitch_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    if-nez v15, :cond_8

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    const/16 v15, 0x1c

    .line 142
    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    :sswitch_8
    const-string v15, "telephoneNumber"

    .line 146
    .line 147
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    if-nez v15, :cond_9

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_9
    const/16 v15, 0x1b

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :sswitch_9
    const-string v14, "familyName"

    .line 159
    .line 160
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    if-nez v14, :cond_24

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :sswitch_a
    const-string v14, "birthdayMonth"

    .line 168
    .line 169
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-nez v14, :cond_a

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_a
    const/16 v15, 0x19

    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :sswitch_b
    const-string v14, "addressState"

    .line 182
    .line 183
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-nez v14, :cond_b

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_b
    const/16 v15, 0x18

    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :sswitch_c
    const-string v14, "email"

    .line 196
    .line 197
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    if-nez v14, :cond_c

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_c
    const/16 v15, 0x17

    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :sswitch_d
    const-string v14, "name"

    .line 210
    .line 211
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    if-nez v14, :cond_d

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_d
    const/16 v15, 0x16

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :sswitch_e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v14

    .line 227
    if-nez v14, :cond_e

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_e
    const/16 v15, 0x15

    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :sswitch_f
    const-string v14, "telephoneNumberCountryCode"

    .line 236
    .line 237
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    if-nez v14, :cond_f

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_f
    const/16 v15, 0x14

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :sswitch_10
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v14

    .line 253
    if-nez v14, :cond_10

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_10
    const/16 v15, 0x13

    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :sswitch_11
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    if-nez v14, :cond_11

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_11
    const/16 v15, 0x12

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :sswitch_12
    const-string v14, "nameSuffix"

    .line 274
    .line 275
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v14

    .line 279
    if-nez v14, :cond_12

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_12
    const/16 v15, 0x11

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :sswitch_13
    const-string v14, "middleName"

    .line 288
    .line 289
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v14

    .line 293
    if-nez v14, :cond_13

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_13
    const/16 v15, 0x10

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :sswitch_14
    const-string v14, "namePrefix"

    .line 302
    .line 303
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-nez v14, :cond_14

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_14
    const/16 v15, 0xf

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :sswitch_15
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    if-nez v14, :cond_15

    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :cond_15
    const/16 v15, 0xe

    .line 324
    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :sswitch_16
    const-string v14, "postalAddressExtendedPostalCode"

    .line 328
    .line 329
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v14

    .line 333
    if-nez v14, :cond_16

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_16
    const/16 v15, 0xd

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :sswitch_17
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    if-nez v14, :cond_17

    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_17
    const/16 v15, 0xc

    .line 350
    .line 351
    goto/16 :goto_1

    .line 352
    .line 353
    :sswitch_18
    const-string v14, "addressCity"

    .line 354
    .line 355
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v14

    .line 359
    if-nez v14, :cond_18

    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_18
    const/16 v15, 0xb

    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :sswitch_19
    const-string v14, "middleInitial"

    .line 368
    .line 369
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v14

    .line 373
    if-nez v14, :cond_19

    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :cond_19
    const/16 v15, 0xa

    .line 378
    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :sswitch_1a
    const-string v14, "countryName"

    .line 382
    .line 383
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v14

    .line 387
    if-nez v14, :cond_1a

    .line 388
    .line 389
    goto/16 :goto_0

    .line 390
    .line 391
    :cond_1a
    const/16 v15, 0x9

    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :sswitch_1b
    const-string v14, "telephoneNumberDevice"

    .line 396
    .line 397
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v14

    .line 401
    if-nez v14, :cond_1b

    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :cond_1b
    const/16 v15, 0x8

    .line 406
    .line 407
    goto :goto_1

    .line 408
    :sswitch_1c
    const-string v14, "fullStreetAddress"

    .line 409
    .line 410
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v14

    .line 414
    if-nez v14, :cond_1c

    .line 415
    .line 416
    goto/16 :goto_0

    .line 417
    .line 418
    :cond_1c
    const/4 v15, 0x7

    .line 419
    goto :goto_1

    .line 420
    :sswitch_1d
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v14

    .line 424
    if-nez v14, :cond_1d

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :cond_1d
    const/4 v15, 0x6

    .line 429
    goto :goto_1

    .line 430
    :sswitch_1e
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v14

    .line 434
    if-nez v14, :cond_1e

    .line 435
    .line 436
    goto/16 :goto_0

    .line 437
    .line 438
    :cond_1e
    const/4 v15, 0x5

    .line 439
    goto :goto_1

    .line 440
    :sswitch_1f
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v14

    .line 444
    if-nez v14, :cond_1f

    .line 445
    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :cond_1f
    const/4 v15, 0x4

    .line 449
    goto :goto_1

    .line 450
    :sswitch_20
    const-string v14, "telephoneNumberNational"

    .line 451
    .line 452
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v14

    .line 456
    if-nez v14, :cond_20

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_20
    const/4 v15, 0x3

    .line 461
    goto :goto_1

    .line 462
    :sswitch_21
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v14

    .line 466
    if-nez v14, :cond_21

    .line 467
    .line 468
    goto/16 :goto_0

    .line 469
    .line 470
    :cond_21
    const/4 v15, 0x2

    .line 471
    goto :goto_1

    .line 472
    :sswitch_22
    const-string v14, "oneTimeCode"

    .line 473
    .line 474
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v14

    .line 478
    if-nez v14, :cond_22

    .line 479
    .line 480
    goto/16 :goto_0

    .line 481
    .line 482
    :cond_22
    const/4 v15, 0x1

    .line 483
    goto :goto_1

    .line 484
    :sswitch_23
    const-string v14, "birthdayYear"

    .line 485
    .line 486
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v14

    .line 490
    if-nez v14, :cond_23

    .line 491
    .line 492
    goto/16 :goto_0

    .line 493
    .line 494
    :cond_23
    const/4 v15, 0x0

    .line 495
    :cond_24
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 496
    .line 497
    .line 498
    return-object v0

    .line 499
    :pswitch_0
    const-string v0, "birthDateDay"

    .line 500
    .line 501
    return-object v0

    .line 502
    :pswitch_1
    return-object v1

    .line 503
    :pswitch_2
    const-string v0, "extendedAddress"

    .line 504
    .line 505
    return-object v0

    .line 506
    :pswitch_3
    return-object v2

    .line 507
    :pswitch_4
    const-string v0, "personGivenName"

    .line 508
    .line 509
    return-object v0

    .line 510
    :pswitch_5
    return-object v3

    .line 511
    :pswitch_6
    const-string v0, "birthDateFull"

    .line 512
    .line 513
    return-object v0

    .line 514
    :pswitch_7
    return-object v4

    .line 515
    :pswitch_8
    const-string v0, "phoneNumber"

    .line 516
    .line 517
    return-object v0

    .line 518
    :pswitch_9
    const-string v0, "personFamilyName"

    .line 519
    .line 520
    return-object v0

    .line 521
    :pswitch_a
    const-string v0, "birthDateMonth"

    .line 522
    .line 523
    return-object v0

    .line 524
    :pswitch_b
    const-string v0, "addressRegion"

    .line 525
    .line 526
    return-object v0

    .line 527
    :pswitch_c
    const-string v0, "emailAddress"

    .line 528
    .line 529
    return-object v0

    .line 530
    :pswitch_d
    const-string v0, "personName"

    .line 531
    .line 532
    return-object v0

    .line 533
    :pswitch_e
    return-object v5

    .line 534
    :pswitch_f
    const-string v0, "phoneCountryCode"

    .line 535
    .line 536
    return-object v0

    .line 537
    :pswitch_10
    return-object v6

    .line 538
    :pswitch_11
    return-object v7

    .line 539
    :pswitch_12
    const-string v0, "personNameSuffix"

    .line 540
    .line 541
    return-object v0

    .line 542
    :pswitch_13
    const-string v0, "personMiddleName"

    .line 543
    .line 544
    return-object v0

    .line 545
    :pswitch_14
    const-string v0, "personNamePrefix"

    .line 546
    .line 547
    return-object v0

    .line 548
    :pswitch_15
    return-object v8

    .line 549
    :pswitch_16
    const-string v0, "extendedPostalCode"

    .line 550
    .line 551
    return-object v0

    .line 552
    :pswitch_17
    return-object v9

    .line 553
    :pswitch_18
    const-string v0, "addressLocality"

    .line 554
    .line 555
    return-object v0

    .line 556
    :pswitch_19
    const-string v0, "personMiddleInitial"

    .line 557
    .line 558
    return-object v0

    .line 559
    :pswitch_1a
    const-string v0, "addressCountry"

    .line 560
    .line 561
    return-object v0

    .line 562
    :pswitch_1b
    const-string v0, "phoneNumberDevice"

    .line 563
    .line 564
    return-object v0

    .line 565
    :pswitch_1c
    const-string v0, "streetAddress"

    .line 566
    .line 567
    return-object v0

    .line 568
    :pswitch_1d
    return-object v10

    .line 569
    :pswitch_1e
    return-object v11

    .line 570
    :pswitch_1f
    return-object v12

    .line 571
    :pswitch_20
    const-string v0, "phoneNational"

    .line 572
    .line 573
    return-object v0

    .line 574
    :pswitch_21
    return-object v13

    .line 575
    :pswitch_22
    const-string v0, "smsOTPCode"

    .line 576
    .line 577
    return-object v0

    .line 578
    :pswitch_23
    const-string v0, "birthDateYear"

    .line 579
    .line 580
    return-object v0

    .line 581
    :sswitch_data_0
    .sparse-switch
        -0x7ab827a6 -> :sswitch_23
        -0x72476d20 -> :sswitch_22
        -0x6df5a7d8 -> :sswitch_21
        -0x6cd04ac1 -> :sswitch_20
        -0x6c8dd7a5 -> :sswitch_1f
        -0x68c2726a -> :sswitch_1e
        -0x6446fcbc -> :sswitch_1d
        -0x62e1a7de -> :sswitch_1c
        -0x5d6852dd -> :sswitch_1b
        -0x580574bf -> :sswitch_1a
        -0x5443ec11 -> :sswitch_19
        -0x521f7081 -> :sswitch_18
        -0x4a7a0d3f -> :sswitch_17
        -0x46b1d806 -> :sswitch_16
        -0x449b65ae -> :sswitch_15
        -0x31d43b03 -> :sswitch_14
        -0x30c50a40 -> :sswitch_13
        -0x2c8af644 -> :sswitch_12
        -0x24989afa -> :sswitch_11
        -0x248f026b -> :sswitch_10
        -0x20bc980a -> :sswitch_f
        -0xfd6772a -> :sswitch_e
        0x337a8b -> :sswitch_d
        0x5c24b9c -> :sswitch_c
        0xf1790fd -> :sswitch_b
        0x230ed603 -> :sswitch_a
        0x2f98f80f -> :sswitch_9
        0x352e686d -> :sswitch_8
        0x3b11f696 -> :sswitch_7
        0x3fbd627d -> :sswitch_6
        0x4889ba9b -> :sswitch_5
        0x578fdfa8 -> :sswitch_4
        0x631a4ca9 -> :sswitch_3
        0x728d6502 -> :sswitch_2
        0x77dfc158 -> :sswitch_1
        0x77e93bdf -> :sswitch_0
    .end sparse-switch

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
