.class public final Lcom/tencent/liteav/audio2/route/a;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio2/route/a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lcom/tencent/liteav/audio2/route/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/audio2/route/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 7
    .line 8
    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getIntentIntExtra "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AudioEventBroadcastReceiver"

    invoke-static {v0, p0, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    const-string p0, "unknown"

    return-object p0

    .line 2
    :pswitch_0
    const-string p0, "STATE_TURNING_OFF"

    return-object p0

    .line 3
    :pswitch_1
    const-string p0, "STATE_ON"

    return-object p0

    .line 4
    :pswitch_2
    const-string p0, "STATE_TURNING_ON"

    return-object p0

    .line 5
    :pswitch_3
    const-string p0, "STATE_OFF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    const/4 v5, 0x1

    .line 9
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    const-string v6, "AudioEventBroadcastReceiver"

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz p2, :cond_17

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_1
    const-string v8, "android.bluetooth.profile.extra.STATE"

    .line 30
    .line 31
    const/16 v9, 0xa

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    sparse-switch v10, :sswitch_data_0

    .line 38
    .line 39
    .line 40
    :goto_0
    move v10, v4

    .line 41
    goto :goto_1

    .line 42
    :sswitch_0
    const-string v10, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 43
    .line 44
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-nez v10, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v10, 0x6

    .line 52
    goto :goto_1

    .line 53
    :sswitch_1
    const-string v10, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 54
    .line 55
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v10, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v10, 0x5

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 65
    .line 66
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/4 v10, 0x4

    .line 74
    goto :goto_1

    .line 75
    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-nez v10, :cond_5

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    move v10, v0

    .line 83
    goto :goto_1

    .line 84
    :sswitch_4
    const-string v10, "android.intent.action.HEADSET_PLUG"

    .line 85
    .line 86
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_6

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    move v10, v2

    .line 94
    goto :goto_1

    .line 95
    :sswitch_5
    const-string v10, "android.media.VOLUME_CHANGED_ACTION"

    .line 96
    .line 97
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-nez v10, :cond_7

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    move v10, v5

    .line 105
    goto :goto_1

    .line 106
    :sswitch_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-nez v10, :cond_8

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_8
    move v10, v7

    .line 114
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 115
    .line 116
    .line 117
    const-string p2, "Ignore unknown Action:"

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-array p2, v7, [Ljava/lang/Object;

    .line 124
    .line 125
    invoke-static {v6, p1, p2}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_0
    invoke-static {p2, v8, v4}, Lcom/tencent/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_c

    .line 134
    .line 135
    if-eq p1, v5, :cond_b

    .line 136
    .line 137
    if-eq p1, v2, :cond_a

    .line 138
    .line 139
    if-eq p1, v0, :cond_9

    .line 140
    .line 141
    const-string p2, "unknown"

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_9
    const-string p2, "STATE_DISCONNECTING"

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_a
    const-string p2, "STATE_CONNECTED"

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_b
    const-string p2, "STATE_CONNECTING"

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_c
    const-string p2, "STATE_DISCONNECTED"

    .line 154
    .line 155
    :goto_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 156
    .line 157
    aput-object p2, v0, v7

    .line 158
    .line 159
    const-string p2, "Receive bluetooth headset connection state changed: %s"

    .line 160
    .line 161
    invoke-static {v6, p2, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    if-eqz p1, :cond_e

    .line 165
    .line 166
    if-eq p1, v2, :cond_d

    .line 167
    .line 168
    goto/16 :goto_5

    .line 169
    .line 170
    :cond_d
    iget-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 171
    .line 172
    invoke-interface {p1, v5}, Lcom/tencent/liteav/audio2/route/a$a;->onBluetoothConnectionChanged(Z)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_e
    iget-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 177
    .line 178
    invoke-interface {p1, v7}, Lcom/tencent/liteav/audio2/route/a$a;->onBluetoothConnectionChanged(Z)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_1
    invoke-static {p2, v8, v9}, Lcom/tencent/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    const/16 p2, 0xc

    .line 187
    .line 188
    if-ne p1, p2, :cond_f

    .line 189
    .line 190
    const-string p1, "Receive bluetooth audio state changed to STATE_AUDIO_CONNECTED"

    .line 191
    .line 192
    new-array p2, v7, [Ljava/lang/Object;

    .line 193
    .line 194
    invoke-static {v6, p1, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 198
    .line 199
    invoke-interface {p1, v5}, Lcom/tencent/liteav/audio2/route/a$a;->onBluetoothScoConnected(Z)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_f
    if-ne p1, v9, :cond_16

    .line 204
    .line 205
    const-string p1, "Receive bluetooth audio state changed to STATE_AUDIO_DISCONNECTED"

    .line 206
    .line 207
    new-array p2, v7, [Ljava/lang/Object;

    .line 208
    .line 209
    invoke-static {v6, p1, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 213
    .line 214
    invoke-interface {p1, v7}, Lcom/tencent/liteav/audio2/route/a$a;->onBluetoothScoConnected(Z)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 219
    .line 220
    invoke-static {p2, p1, v7}, Lcom/tencent/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 225
    .line 226
    invoke-static {p2, v0, v7}, Lcom/tencent/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v1, "Receive ACTION_STATE_CHANGED, EXTRA_STATE:"

    .line 233
    .line 234
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {p1}, Lcom/tencent/liteav/audio2/route/a;->a(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, " EXTRA_PREVIOUS_STATE: "

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-static {p2}, Lcom/tencent/liteav/audio2/route/a;->a(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    new-array v0, v7, [Ljava/lang/Object;

    .line 261
    .line 262
    invoke-static {v6, p2, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    if-ne p1, v9, :cond_16

    .line 266
    .line 267
    iget-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 268
    .line 269
    invoke-interface {p1, v7}, Lcom/tencent/liteav/audio2/route/a$a;->onBluetoothConnectionChanged(Z)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_3
    const-string p1, "state"

    .line 274
    .line 275
    invoke-static {p2, p1, v4}, Lcom/tencent/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    const-string p2, "Receive ACTION_HEADSET_PLUG, EXTRA_STATE:"

    .line 280
    .line 281
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    new-array v0, v7, [Ljava/lang/Object;

    .line 290
    .line 291
    invoke-static {v6, p2, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    if-ne p1, v4, :cond_10

    .line 295
    .line 296
    const-string p1, "Unknown headset state, ignore..."

    .line 297
    .line 298
    new-array p2, v7, [Ljava/lang/Object;

    .line 299
    .line 300
    invoke-static {v6, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_10
    iget-object p2, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 305
    .line 306
    if-eqz p1, :cond_11

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_11
    move v5, v7

    .line 310
    :goto_3
    invoke-interface {p2, v5}, Lcom/tencent/liteav/audio2/route/a$a;->onWiredHeadsetConnectionChanged(Z)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :pswitch_4
    iget-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 315
    .line 316
    if-eqz p1, :cond_16

    .line 317
    .line 318
    invoke-interface {p1}, Lcom/tencent/liteav/audio2/route/a$a;->onSystemVolumeChanged()V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :pswitch_5
    const-string p1, "device"

    .line 323
    .line 324
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 329
    .line 330
    if-eqz p1, :cond_16

    .line 331
    .line 332
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    const/16 v2, 0x15

    .line 337
    .line 338
    if-lt v0, v2, :cond_12

    .line 339
    .line 340
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v4, "Usb device attached "

    .line 347
    .line 348
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v4, " manufacture "

    .line 355
    .line 356
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    new-array v4, v7, [Ljava/lang/Object;

    .line 371
    .line 372
    invoke-static {v6, v2, v4}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    goto :goto_4

    .line 376
    :cond_12
    const-string v0, ""

    .line 377
    .line 378
    :goto_4
    invoke-static {p1}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->isUsbHeadsetDevice(Landroid/hardware/usb/UsbDevice;)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-nez p1, :cond_13

    .line 383
    .line 384
    const-string p1, "The attached usb device doesn\'t seem to support audio, ignore it"

    .line 385
    .line 386
    new-array p2, v7, [Ljava/lang/Object;

    .line 387
    .line 388
    invoke-static {v6, p1, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-eqz p1, :cond_14

    .line 401
    .line 402
    iget-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 403
    .line 404
    invoke-interface {p1, v0, v5}, Lcom/tencent/liteav/audio2/route/a$a;->onUsbConnectionChanged(Ljava/lang/String;Z)V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    if-eqz p1, :cond_15

    .line 417
    .line 418
    iget-object p1, p0, Lcom/tencent/liteav/audio2/route/a;->b:Lcom/tencent/liteav/audio2/route/a$a;

    .line 419
    .line 420
    invoke-interface {p1, v0, v7}, Lcom/tencent/liteav/audio2/route/a$a;->onUsbConnectionChanged(Ljava/lang/String;Z)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v0, "Unknown action, ignore it "

    .line 427
    .line 428
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    new-array p2, v7, [Ljava/lang/Object;

    .line 443
    .line 444
    invoke-static {v6, p1, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    :cond_16
    :goto_5
    return-void

    .line 448
    :cond_17
    :goto_6
    const-string p1, "Receive intent or context is null"

    .line 449
    .line 450
    new-array p2, v7, [Ljava/lang/Object;

    .line 451
    .line 452
    invoke-static {v6, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    nop

    .line 457
    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_6
        -0x73abbf83 -> :sswitch_5
        -0x63ecb970 -> :sswitch_4
        -0x5fdc9a67 -> :sswitch_3
        -0x5b36f014 -> :sswitch_2
        -0x5591500b -> :sswitch_1
        0x2083ec2d -> :sswitch_0
    .end sparse-switch

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
