.class public final Lcom/changdu/component/webviewcache/internal/m;
.super Ljava/lang/Object;
.source "Proguard"


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

.method public static a(Lcom/changdu/component/webviewcache/CDWebResourceResponse;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    const-string v2, "Content-Type"

    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v3, v1

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_5

    .line 38
    .line 39
    const-string v1, ";"

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    array-length v2, v1

    .line 46
    const/4 v3, 0x1

    .line 47
    if-lt v2, v3, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    aget-object v2, v1, v2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v2, v0

    .line 54
    :goto_1
    array-length v4, v1

    .line 55
    const/4 v5, 0x2

    .line 56
    if-lt v4, v5, :cond_4

    .line 57
    .line 58
    aget-object v1, v1, v3

    .line 59
    .line 60
    const-string v4, "="

    .line 61
    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    array-length v6, v4

    .line 67
    if-lt v6, v5, :cond_3

    .line 68
    .line 69
    aget-object v1, v4, v3

    .line 70
    .line 71
    :cond_3
    move-object v5, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move-object v5, v0

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    move-object v2, v0

    .line 76
    move-object v5, v2

    .line 77
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    move-object v4, v2

    .line 84
    goto :goto_3

    .line 85
    :cond_6
    move-object v4, p1

    .line 86
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_7
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getOriginBytes()[B

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_d

    .line 98
    .line 99
    array-length v1, p1

    .line 100
    if-gez v1, :cond_8

    .line 101
    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_8
    array-length v1, p1

    .line 105
    if-nez v1, :cond_9

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getResponseCode()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/16 v2, 0x130

    .line 112
    .line 113
    if-ne v1, v2, :cond_9

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_9
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 117
    .line 118
    invoke-direct {v9, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getResponseCode()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_c

    .line 134
    .line 135
    const/16 p1, 0x64

    .line 136
    .line 137
    if-eq v6, p1, :cond_b

    .line 138
    .line 139
    const/16 p1, 0x65

    .line 140
    .line 141
    if-eq v6, p1, :cond_a

    .line 142
    .line 143
    packed-switch v6, :pswitch_data_0

    .line 144
    .line 145
    .line 146
    packed-switch v6, :pswitch_data_1

    .line 147
    .line 148
    .line 149
    packed-switch v6, :pswitch_data_2

    .line 150
    .line 151
    .line 152
    packed-switch v6, :pswitch_data_3

    .line 153
    .line 154
    .line 155
    const-string p1, "unknown"

    .line 156
    .line 157
    goto/16 :goto_4

    .line 158
    .line 159
    :pswitch_0
    const-string p1, "HTTP Version not supported"

    .line 160
    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    :pswitch_1
    const-string p1, "Gateway Time-out"

    .line 164
    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :pswitch_2
    const-string p1, "Service Unavailable"

    .line 168
    .line 169
    goto/16 :goto_4

    .line 170
    .line 171
    :pswitch_3
    const-string p1, "Bad Gateway"

    .line 172
    .line 173
    goto/16 :goto_4

    .line 174
    .line 175
    :pswitch_4
    const-string p1, "Not Implemented"

    .line 176
    .line 177
    goto/16 :goto_4

    .line 178
    .line 179
    :pswitch_5
    const-string p1, "Internal Server Error"

    .line 180
    .line 181
    goto/16 :goto_4

    .line 182
    .line 183
    :pswitch_6
    const-string p1, "Expectation Failed"

    .line 184
    .line 185
    goto/16 :goto_4

    .line 186
    .line 187
    :pswitch_7
    const-string p1, "Requested range not satisfiable"

    .line 188
    .line 189
    goto/16 :goto_4

    .line 190
    .line 191
    :pswitch_8
    const-string p1, "Unsupported Media Type"

    .line 192
    .line 193
    goto/16 :goto_4

    .line 194
    .line 195
    :pswitch_9
    const-string p1, "Request-URI Too Large"

    .line 196
    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :pswitch_a
    const-string p1, "Request Entity Too Large"

    .line 200
    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :pswitch_b
    const-string p1, "Precondition Failed"

    .line 204
    .line 205
    goto/16 :goto_4

    .line 206
    .line 207
    :pswitch_c
    const-string p1, "Length Required"

    .line 208
    .line 209
    goto/16 :goto_4

    .line 210
    .line 211
    :pswitch_d
    const-string p1, "Gone"

    .line 212
    .line 213
    goto/16 :goto_4

    .line 214
    .line 215
    :pswitch_e
    const-string p1, "Conflict"

    .line 216
    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :pswitch_f
    const-string p1, "Request Time-out"

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :pswitch_10
    const-string p1, "Proxy Authentication Required"

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :pswitch_11
    const-string p1, "Not Acceptable"

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :pswitch_12
    const-string p1, "Method Not Allowed"

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :pswitch_13
    const-string p1, "Not Found"

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :pswitch_14
    const-string p1, "Forbidden"

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :pswitch_15
    const-string p1, "Payment Required"

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :pswitch_16
    const-string p1, "Unauthorized"

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :pswitch_17
    const-string p1, "Bad Request"

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :pswitch_18
    const-string p1, "Temporary Redirect"

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :pswitch_19
    const-string p1, "Unused"

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :pswitch_1a
    const-string p1, "Use Proxy"

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :pswitch_1b
    const-string p1, "Not Modified"

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :pswitch_1c
    const-string p1, "See Other"

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :pswitch_1d
    const-string p1, "Found"

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :pswitch_1e
    const-string p1, "Moved Permanently"

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :pswitch_1f
    const-string p1, "Multiple Choices"

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :pswitch_20
    const-string p1, "Partial Content"

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :pswitch_21
    const-string p1, "Reset Content"

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :pswitch_22
    const-string p1, "No Content"

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :pswitch_23
    const-string p1, "Non-Authoritative Information"

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :pswitch_24
    const-string p1, "Accepted"

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :pswitch_25
    const-string p1, "Created"

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :pswitch_26
    const-string p1, "OK"

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_a
    const-string p1, "Switching Protocols"

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_b
    const-string p1, "Continue"

    .line 295
    .line 296
    :cond_c
    :goto_4
    move-object v7, p1

    .line 297
    new-instance v3, Landroid/webkit/WebResourceResponse;

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 304
    .line 305
    .line 306
    return-object v3

    .line 307
    :cond_d
    :goto_5
    return-object v0

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_2
    .packed-switch 0x190
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
    .end packed-switch

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :pswitch_data_3
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
