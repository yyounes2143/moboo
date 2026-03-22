.class Lcom/applovin/impl/b2$c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/impl/f2;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAd;

.field private final b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private final c:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private final d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private final e:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field final synthetic f:Lcom/applovin/impl/b2;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/b2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/applovin/impl/b2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    .line 4
    iput-object p5, p0, Lcom/applovin/impl/b2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 5
    iput-object p6, p0, Lcom/applovin/impl/b2$c;->c:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 6
    iput-object p4, p0, Lcom/applovin/impl/b2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 7
    iput-object p3, p0, Lcom/applovin/impl/b2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/applovin/impl/b2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/b2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/b2$c;-><init>(Lcom/applovin/impl/b2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "IncentivizedAdController"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "Finishing direct ad..."

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/applovin/impl/b2;->b(Lcom/applovin/impl/b2;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_9

    .line 48
    .line 49
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "Invalid reward state - result: "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, " and wasFullyEngaged: "

    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/applovin/impl/b2;->b(Lcom/applovin/impl/b2;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v2, v1, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v2, "Cancelling any incoming reward requests for this ad"

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->d()V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/applovin/impl/b2;->b(Lcom/applovin/impl/b2;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v2, "User closed the ad after fully watching but reward validation task did not return on time"

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    const-string v0, "network_timeout"

    .line 168
    .line 169
    const/16 v2, -0x1f4

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->F()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->F()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    goto :goto_0

    .line 183
    :cond_6
    const-string v0, "unknown_early_dismissal_source"

    .line 184
    .line 185
    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 186
    .line 187
    iget-object v2, v2, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    iget-object v2, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 199
    .line 200
    iget-object v2, v2, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v4, "Ad closed prematurely from source: "

    .line 212
    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_7
    const/16 v2, -0x258

    .line 227
    .line 228
    :goto_1
    invoke-static {v0}, Lcom/applovin/impl/b4;->a(Ljava/lang/String;)Lcom/applovin/impl/b4;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {p1, v3}, Lcom/applovin/impl/sdk/ad/b;->a(Lcom/applovin/impl/b4;)V

    .line 233
    .line 234
    .line 235
    iget-object v3, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 236
    .line 237
    iget-object v3, v3, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 238
    .line 239
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 240
    .line 241
    .line 242
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_8

    .line 247
    .line 248
    iget-object v3, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 249
    .line 250
    iget-object v3, v3, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 251
    .line 252
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    const-string v4, "Notifying listener of reward validation failure"

    .line 257
    .line 258
    invoke-virtual {v3, v1, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_8
    iget-object v3, p0, Lcom/applovin/impl/b2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 262
    .line 263
    invoke-static {v3, p1, v2}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    .line 264
    .line 265
    .line 266
    iget-object v2, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 267
    .line 268
    invoke-static {v2}, Lcom/applovin/impl/b2;->c(Lcom/applovin/impl/b2;)D

    .line 269
    .line 270
    .line 271
    move-result-wide v2

    .line 272
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    const-string v3, "details"

    .line 277
    .line 278
    invoke-static {v3, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    const-string v3, "source"

    .line 283
    .line 284
    invoke-static {v3, v0, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 288
    .line 289
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sget-object v3, Lcom/applovin/impl/y1;->w:Lcom/applovin/impl/y1;

    .line 296
    .line 297
    invoke-virtual {v0, v3, p1, v2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/y1;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 298
    .line 299
    .line 300
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->N0()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const/4 v2, 0x1

    .line 305
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_b

    .line 310
    .line 311
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 316
    .line 317
    .line 318
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_a

    .line 323
    .line 324
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    const-string v2, "Scheduling report rewarded ad..."

    .line 333
    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_a
    new-instance v0, Lcom/applovin/impl/a6;

    .line 338
    .line 339
    iget-object v1, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 340
    .line 341
    iget-object v1, v1, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 342
    .line 343
    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/a6;-><init>(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/k;)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 347
    .line 348
    iget-object p1, p1, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    sget-object v1, Lcom/applovin/impl/r5$b;->e:Lcom/applovin/impl/r5$b;

    .line 355
    .line 356
    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 357
    .line 358
    .line 359
    :cond_b
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->c:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/applovin/impl/sdk/ad/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->f()Lcom/applovin/sdk/AppLovinAd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, p1

    .line 14
    :goto_0
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/b;

    .line 15
    .line 16
    const-string v2, "IncentivizedAdController"

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lcom/applovin/impl/sdk/ad/b;

    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/applovin/impl/b2$c;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    const-string v1, "null/expired ad"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "invalid ad of type: "

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_1
    iget-object v3, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    iget-object v3, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v5, "Received `adHidden` callback for "

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v3, v2, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 91
    .line 92
    invoke-static {v1, v0}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;Lcom/applovin/sdk/AppLovinAd;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "Notifying listener of rewarded ad dismissal"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 122
    .line 123
    invoke-static {v0, p1}, Lcom/applovin/impl/l2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public onAdDisplayFailed(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/applovin/impl/sdk/ad/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->f()Lcom/applovin/sdk/AppLovinAd;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/b2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 14
    .line 15
    instance-of v1, v1, Lcom/applovin/impl/f2;

    .line 16
    .line 17
    instance-of v2, v0, Lcom/applovin/impl/sdk/ad/b;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Lcom/applovin/impl/sdk/ad/b;

    .line 23
    .line 24
    invoke-direct {p0, v2}, Lcom/applovin/impl/b2$c;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    const-string v2, "null/expired ad"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "invalid ad of type: "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    iget-object v3, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v5, "Received `"

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    const-string v5, "adDisplayFailed"

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const-string v5, "adHidden"

    .line 87
    .line 88
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v5, "` callback for "

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v4, "IncentivizedAdController"

    .line 104
    .line 105
    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 109
    .line 110
    invoke-static {v2, v0}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;Lcom/applovin/sdk/AppLovinAd;)V

    .line 111
    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 116
    .line 117
    invoke-static {v0, p1}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/b2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    .line 124
    .line 125
    invoke-static {p1, v0}, Lcom/applovin/impl/l2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 2
    .line 3
    const-string v1, "quota_exceeded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/l2;->b(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    const-string p2, "error_message"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/applovin/impl/y1;->v:Lcom/applovin/impl/y1;

    .line 28
    .line 29
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/y1;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 2
    .line 3
    const-string v1, "rejected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    const-string p2, "error_message"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/applovin/impl/y1;->v:Lcom/applovin/impl/y1;

    .line 28
    .line 29
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/y1;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 2
    .line 3
    const-string v1, "accepted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/l2;->c(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 2
    .line 3
    const-string v1, "network_timeout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    .line 11
    .line 12
    .line 13
    const-string p2, "error_message"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/applovin/impl/b2;->b:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/applovin/impl/y1;->v:Lcom/applovin/impl/y1;

    .line 28
    .line 29
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/y1;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 7
    .line 8
    invoke-static {p1, p2, p3}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;D)D

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/applovin/impl/b2$c;->f:Lcom/applovin/impl/b2;

    .line 12
    .line 13
    invoke-static {p1, p4}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/b2;Z)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
