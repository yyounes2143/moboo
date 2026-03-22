.class Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PigeonCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->INSTANCE:Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :pswitch_0
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_1
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :pswitch_2
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_3
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :pswitch_4
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :pswitch_5
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :pswitch_6
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :pswitch_7
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :pswitch_8
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :pswitch_9
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :pswitch_a
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    return-object p1

    .line 130
    :pswitch_b
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :pswitch_c
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :pswitch_d
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :pswitch_e
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1

    .line 174
    :pswitch_f
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    return-object p1

    .line 185
    :pswitch_10
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1

    .line 196
    :pswitch_11
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    return-object p1

    .line 207
    :pswitch_12
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    :pswitch_13
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    return-object p1

    .line 229
    :pswitch_14
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    return-object p1

    .line 240
    :pswitch_15
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    return-object p1

    .line 251
    :pswitch_16
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    return-object p1

    .line 262
    :pswitch_17
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    return-object p1

    .line 273
    :pswitch_18
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    return-object p1

    .line 284
    :pswitch_19
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    return-object p1

    .line 295
    :pswitch_1a
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast p1, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-static {p1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;->fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    return-object p1

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch -0x7f
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

.method public writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/io/ByteArrayOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x81

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 8
    .line 9
    .line 10
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;->toList()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x82

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 27
    .line 28
    .line 29
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;->toList()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const/16 v0, 0x83

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const/16 v0, 0x84

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    .line 66
    .line 67
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->toList()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    const/16 v0, 0x85

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    .line 85
    .line 86
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    const/16 v0, 0x86

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    .line 104
    .line 105
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    const/16 v0, 0x87

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    .line 123
    .line 124
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_6
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    const/16 v0, 0x88

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
    .line 142
    .line 143
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_7
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;

    .line 154
    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    const/16 v0, 0x89

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    .line 161
    .line 162
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;

    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;->toList()Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_8
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;

    .line 173
    .line 174
    if-eqz v0, :cond_9

    .line 175
    .line 176
    const/16 v0, 0x8a

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 179
    .line 180
    .line 181
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;

    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_9
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;

    .line 192
    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    const/16 v0, 0x8b

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 198
    .line 199
    .line 200
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;

    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_a
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;

    .line 211
    .line 212
    if-eqz v0, :cond_b

    .line 213
    .line 214
    const/16 v0, 0x8c

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 217
    .line 218
    .line 219
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;

    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_b
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 230
    .line 231
    if-eqz v0, :cond_c

    .line 232
    .line 233
    const/16 v0, 0x8d

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 236
    .line 237
    .line 238
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 239
    .line 240
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->toList()Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_c
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;

    .line 249
    .line 250
    if-eqz v0, :cond_d

    .line 251
    .line 252
    const/16 v0, 0x8e

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 255
    .line 256
    .line 257
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;

    .line 258
    .line 259
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;->toList()Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_d
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;

    .line 268
    .line 269
    if-eqz v0, :cond_e

    .line 270
    .line 271
    const/16 v0, 0x8f

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 274
    .line 275
    .line 276
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;

    .line 277
    .line 278
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;->toList()Ljava/util/ArrayList;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_e
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 287
    .line 288
    if-eqz v0, :cond_f

    .line 289
    .line 290
    const/16 v0, 0x90

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 293
    .line 294
    .line 295
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;

    .line 296
    .line 297
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;->toList()Ljava/util/ArrayList;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :cond_f
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 306
    .line 307
    if-eqz v0, :cond_10

    .line 308
    .line 309
    const/16 v0, 0x91

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    .line 313
    .line 314
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;

    .line 315
    .line 316
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;->toList()Ljava/util/ArrayList;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_10
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 325
    .line 326
    if-eqz v0, :cond_11

    .line 327
    .line 328
    const/16 v0, 0x92

    .line 329
    .line 330
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 331
    .line 332
    .line 333
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;

    .line 334
    .line 335
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;->toList()Ljava/util/ArrayList;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_11
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;

    .line 344
    .line 345
    if-eqz v0, :cond_12

    .line 346
    .line 347
    const/16 v0, 0x93

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    .line 351
    .line 352
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;

    .line 353
    .line 354
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;->toList()Ljava/util/ArrayList;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :cond_12
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;

    .line 363
    .line 364
    if-eqz v0, :cond_13

    .line 365
    .line 366
    const/16 v0, 0x94

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 369
    .line 370
    .line 371
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;

    .line 372
    .line 373
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;->toList()Ljava/util/ArrayList;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_13
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 382
    .line 383
    if-eqz v0, :cond_14

    .line 384
    .line 385
    const/16 v0, 0x95

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 388
    .line 389
    .line 390
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;

    .line 391
    .line 392
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;->toList()Ljava/util/ArrayList;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :cond_14
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;

    .line 401
    .line 402
    if-eqz v0, :cond_15

    .line 403
    .line 404
    const/16 v0, 0x96

    .line 405
    .line 406
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 407
    .line 408
    .line 409
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;

    .line 410
    .line 411
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;->toList()Ljava/util/ArrayList;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :cond_15
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 420
    .line 421
    if-eqz v0, :cond_16

    .line 422
    .line 423
    const/16 v0, 0x97

    .line 424
    .line 425
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    .line 427
    .line 428
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 429
    .line 430
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->toList()Ljava/util/ArrayList;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_16
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;

    .line 439
    .line 440
    if-eqz v0, :cond_17

    .line 441
    .line 442
    const/16 v0, 0x98

    .line 443
    .line 444
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    .line 446
    .line 447
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;

    .line 448
    .line 449
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;->toList()Ljava/util/ArrayList;

    .line 450
    .line 451
    .line 452
    move-result-object p2

    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    return-void

    .line 457
    :cond_17
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;

    .line 458
    .line 459
    if-eqz v0, :cond_18

    .line 460
    .line 461
    const/16 v0, 0x99

    .line 462
    .line 463
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 464
    .line 465
    .line 466
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;

    .line 467
    .line 468
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;->toList()Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    return-void

    .line 476
    :cond_18
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;

    .line 477
    .line 478
    if-eqz v0, :cond_19

    .line 479
    .line 480
    const/16 v0, 0x9a

    .line 481
    .line 482
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 483
    .line 484
    .line 485
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;

    .line 486
    .line 487
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    return-void

    .line 495
    :cond_19
    instance-of v0, p2, Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;

    .line 496
    .line 497
    if-eqz v0, :cond_1a

    .line 498
    .line 499
    const/16 v0, 0x9b

    .line 500
    .line 501
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 502
    .line 503
    .line 504
    check-cast p2, Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;

    .line 505
    .line 506
    invoke-virtual {p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;->toList()Ljava/util/ArrayList;

    .line 507
    .line 508
    .line 509
    move-result-object p2

    .line 510
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/vod/flutter/messages/FtxMessages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :catchall_0
    move-exception p1

    .line 515
    throw p1

    .line 516
    :cond_1a
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    return-void
.end method
