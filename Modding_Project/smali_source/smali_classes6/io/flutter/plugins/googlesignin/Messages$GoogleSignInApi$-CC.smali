.class public final synthetic Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V
    .locals 5
    .param p0    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.init"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v1, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    new-instance v3, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 61
    .line 62
    invoke-direct {v3, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 73
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.signInSilently"

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-direct {v1, p0, v3, v4}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 96
    .line 97
    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    new-instance v3, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 101
    .line 102
    invoke-direct {v3, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v4, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.signIn"

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-direct {v1, p0, v3, v4}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 136
    .line 137
    .line 138
    if-eqz p2, :cond_3

    .line 139
    .line 140
    new-instance v3, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 141
    .line 142
    invoke-direct {v3, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 150
    .line 151
    .line 152
    :goto_3
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v4, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.getAccessToken"

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-direct {v1, p0, v3, v4, v0}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    .line 176
    .line 177
    .line 178
    if-eqz p2, :cond_4

    .line 179
    .line 180
    new-instance v3, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 181
    .line 182
    invoke-direct {v3, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_4
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 190
    .line 191
    .line 192
    :goto_4
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 193
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v4, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.signOut"

    .line 200
    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-direct {v1, p0, v3, v4}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 216
    .line 217
    .line 218
    if-eqz p2, :cond_5

    .line 219
    .line 220
    new-instance v3, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 221
    .line 222
    invoke-direct {v3, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_5
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 230
    .line 231
    .line 232
    :goto_5
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 233
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v4, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.disconnect"

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-direct {v1, p0, v3, v4}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 256
    .line 257
    .line 258
    if-eqz p2, :cond_6

    .line 259
    .line 260
    new-instance v3, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwww;

    .line 261
    .line 262
    invoke-direct {v3, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_6
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 270
    .line 271
    .line 272
    :goto_6
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 273
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v4, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.isSignedIn"

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-direct {v1, p0, v3, v4}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 296
    .line 297
    .line 298
    if-eqz p2, :cond_7

    .line 299
    .line 300
    new-instance v3, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwww;

    .line 301
    .line 302
    invoke-direct {v3, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_7
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 310
    .line 311
    .line 312
    :goto_7
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 313
    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v4, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.clearAuthCache"

    .line 320
    .line 321
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-direct {v1, p0, v3, v4, v0}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    .line 336
    .line 337
    .line 338
    if-eqz p2, :cond_8

    .line 339
    .line 340
    new-instance v0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwww;

    .line 341
    .line 342
    invoke-direct {v0, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_8
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 350
    .line 351
    .line 352
    :goto_8
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 353
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    const-string v3, "dev.flutter.pigeon.google_sign_in_android.GoogleSignInApi.requestScopes"

    .line 360
    .line 361
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-static {}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-direct {v0, p0, p1, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 376
    .line 377
    .line 378
    if-eqz p2, :cond_9

    .line 379
    .line 380
    new-instance p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwww;

    .line 381
    .line 382
    invoke-direct {p0, p2}, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :cond_9
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 390
    .line 391
    .line 392
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V
    .locals 1
    .param p0    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$-CC;->Wwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$6;

    .line 16
    .line 17
    invoke-direct {v1, v0, p2}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$6;-><init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1, v1}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->requestScopes(Ljava/util/List;Lio/flutter/plugins/googlesignin/Messages$Result;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p0, p1}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->clearAuthCache(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {p0}, Lio/flutter/plugins/googlesignin/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p0}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->isSignedIn()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {p0}, Lio/flutter/plugins/googlesignin/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$5;-><init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->disconnect(Lio/flutter/plugins/googlesignin/Messages$VoidResult;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$4;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$4;-><init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->signOut(Lio/flutter/plugins/googlesignin/Messages$VoidResult;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    .line 21
    .line 22
    new-instance v2, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$3;

    .line 23
    .line 24
    invoke-direct {v2, v0, p2}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$3;-><init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v1, p1, v2}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->getAccessToken(Ljava/lang/String;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$2;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$2;-><init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->signIn(Lio/flutter/plugins/googlesignin/Messages$Result;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$1;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi$1;-><init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->signInSilently(Lio/flutter/plugins/googlesignin/Messages$Result;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p0, p1}, Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;->init(Lio/flutter/plugins/googlesignin/Messages$InitParams;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {p0}, Lio/flutter/plugins/googlesignin/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/googlesignin/Messages$PigeonCodec;->INSTANCE:Lio/flutter/plugins/googlesignin/Messages$PigeonCodec;

    .line 2
    .line 3
    return-object v0
.end method
