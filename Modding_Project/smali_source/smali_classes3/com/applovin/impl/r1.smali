.class public abstract Lcom/applovin/impl/r1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/impl/c2$a;
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;
.implements Lcom/applovin/impl/adview/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/r1$f;,
        Lcom/applovin/impl/r1$g;
    }
.end annotation


# instance fields
.field protected A:I

.field protected B:Z

.field private C:Landroid/database/ContentObserver;

.field private D:Ljava/lang/Float;

.field protected E:Lcom/applovin/sdk/AppLovinAdClickListener;

.field protected F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field protected G:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field protected final H:Lcom/applovin/impl/c2;

.field protected I:Lcom/applovin/impl/t6;

.field protected J:Lcom/applovin/impl/t6;

.field protected K:Z

.field private final L:Lcom/applovin/impl/d0;

.field private M:Z

.field protected final a:Lcom/applovin/impl/sdk/ad/b;

.field protected final b:Lcom/applovin/impl/sdk/k;

.field protected final c:Lcom/applovin/impl/sdk/o;

.field protected d:Landroid/app/Activity;

.field private final e:I

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/applovin/impl/b;

.field private final h:Lcom/applovin/impl/sdk/i$a;

.field protected i:Lcom/applovin/adview/AppLovinAdView;

.field protected j:Lcom/applovin/impl/adview/k;

.field protected final k:Lcom/applovin/impl/adview/g;

.field protected final l:Lcom/applovin/impl/adview/g;

.field protected final m:J

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Z

.field protected q:J

.field protected r:J

.field private s:Z

.field protected t:Z

.field protected u:I

.field protected v:Z

.field private w:I

.field private final x:Ljava/util/ArrayList;

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/applovin/impl/r1;->f:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Lcom/applovin/impl/r1;->m:J

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/applovin/impl/r1;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/applovin/impl/r1;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    const-wide/16 v1, -0x1

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/applovin/impl/r1;->q:J

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/applovin/impl/r1;->w:I

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/applovin/impl/r1;->x:Ljava/util/ArrayList;

    .line 48
    .line 49
    iput v1, p0, Lcom/applovin/impl/r1;->y:I

    .line 50
    .line 51
    iput v1, p0, Lcom/applovin/impl/r1;->z:I

    .line 52
    .line 53
    sget v2, Lcom/applovin/impl/sdk/i;->h:I

    .line 54
    .line 55
    iput v2, p0, Lcom/applovin/impl/r1;->A:I

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/applovin/impl/r1;->M:Z

    .line 58
    .line 59
    iput-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 60
    .line 61
    iput-object p4, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 62
    .line 63
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iput-object v2, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 68
    .line 69
    iput-object p2, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->b0()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iput v2, p0, Lcom/applovin/impl/r1;->e:I

    .line 76
    .line 77
    iput-object p5, p0, Lcom/applovin/impl/r1;->E:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 78
    .line 79
    iput-object p6, p0, Lcom/applovin/impl/r1;->F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 80
    .line 81
    iput-object p7, p0, Lcom/applovin/impl/r1;->G:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 82
    .line 83
    new-instance p5, Lcom/applovin/impl/c2;

    .line 84
    .line 85
    invoke-direct {p5, p2, p4}, Lcom/applovin/impl/c2;-><init>(Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V

    .line 86
    .line 87
    .line 88
    iput-object p5, p0, Lcom/applovin/impl/r1;->H:Lcom/applovin/impl/c2;

    .line 89
    .line 90
    invoke-virtual {p5, p0}, Lcom/applovin/impl/c2;->a(Lcom/applovin/impl/c2$a;)V

    .line 91
    .line 92
    .line 93
    new-instance p5, Lcom/applovin/impl/d0;

    .line 94
    .line 95
    invoke-direct {p5, p4}, Lcom/applovin/impl/d0;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 96
    .line 97
    .line 98
    iput-object p5, p0, Lcom/applovin/impl/r1;->L:Lcom/applovin/impl/d0;

    .line 99
    .line 100
    new-instance p5, Lcom/applovin/impl/r1$g;

    .line 101
    .line 102
    const/4 p6, 0x0

    .line 103
    invoke-direct {p5, p0, p6}, Lcom/applovin/impl/r1$g;-><init>(Lcom/applovin/impl/r1;Lcom/applovin/impl/r1$a;)V

    .line 104
    .line 105
    .line 106
    sget-object p7, Lcom/applovin/impl/l4;->r2:Lcom/applovin/impl/l4;

    .line 107
    .line 108
    invoke-virtual {p4, p7}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p7

    .line 112
    check-cast p7, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result p7

    .line 118
    if-eqz p7, :cond_0

    .line 119
    .line 120
    new-instance p7, Landroid/content/IntentFilter;

    .line 121
    .line 122
    const-string v2, "com.applovin.render_process_gone"

    .line 123
    .line 124
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 128
    .line 129
    .line 130
    :cond_0
    sget-object p7, Lcom/applovin/impl/l4;->x2:Lcom/applovin/impl/l4;

    .line 131
    .line 132
    invoke-virtual {p4, p7}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p7

    .line 136
    check-cast p7, Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    .line 140
    .line 141
    move-result p7

    .line 142
    if-eqz p7, :cond_1

    .line 143
    .line 144
    new-instance p7, Landroid/content/IntentFilter;

    .line 145
    .line 146
    const-string v2, "com.applovin.al_onPoststitialShow_evaluation_error"

    .line 147
    .line 148
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 152
    .line 153
    .line 154
    :cond_1
    new-instance p7, Landroid/content/IntentFilter;

    .line 155
    .line 156
    const-string v2, "com.applovin.custom_tabs_shown"

    .line 157
    .line 158
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 162
    .line 163
    .line 164
    new-instance p7, Landroid/content/IntentFilter;

    .line 165
    .line 166
    const-string v2, "com.applovin.custom_tabs_hidden"

    .line 167
    .line 168
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 172
    .line 173
    .line 174
    new-instance p7, Landroid/content/IntentFilter;

    .line 175
    .line 176
    const-string v2, "com.applovin.custom_tabs_failure"

    .line 177
    .line 178
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 182
    .line 183
    .line 184
    new-instance p7, Landroid/content/IntentFilter;

    .line 185
    .line 186
    const-string v2, "com.applovin.external_redirect_success"

    .line 187
    .line 188
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 192
    .line 193
    .line 194
    new-instance p7, Landroid/content/IntentFilter;

    .line 195
    .line 196
    const-string v2, "com.applovin.external_redirect_failure"

    .line 197
    .line 198
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 202
    .line 203
    .line 204
    new-instance p7, Landroid/content/IntentFilter;

    .line 205
    .line 206
    const-string v2, "com.applovin.preload_success"

    .line 207
    .line 208
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 212
    .line 213
    .line 214
    new-instance p7, Landroid/content/IntentFilter;

    .line 215
    .line 216
    const-string v2, "com.applovin.preload_failure"

    .line 217
    .line 218
    invoke-direct {p7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p0, p7}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 222
    .line 223
    .line 224
    new-instance p7, Lcom/applovin/impl/p1;

    .line 225
    .line 226
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/k;->y0()Lcom/applovin/sdk/AppLovinSdk;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    .line 231
    .line 232
    invoke-direct {p7, v2, v3, p2}, Lcom/applovin/impl/p1;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    iput-object p7, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 236
    .line 237
    invoke-virtual {p7, p5}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object p7, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 241
    .line 242
    new-instance v2, Lcom/applovin/impl/r1$a;

    .line 243
    .line 244
    invoke-direct {v2, p0}, Lcom/applovin/impl/r1$a;-><init>(Lcom/applovin/impl/r1;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p7, v2}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->h()Landroid/os/Bundle;

    .line 251
    .line 252
    .line 253
    move-result-object p7

    .line 254
    iget-object v2, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 255
    .line 256
    invoke-static {v2}, Lcom/applovin/impl/q7;->a(Landroid/view/View;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const-string v3, "ad_view_address"

    .line 261
    .line 262
    invoke-virtual {p7, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object p7, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 266
    .line 267
    invoke-virtual {p7}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/a;

    .line 268
    .line 269
    .line 270
    move-result-object p7

    .line 271
    invoke-virtual {p7, p0}, Lcom/applovin/impl/adview/a;->a(Lcom/applovin/impl/adview/a$b;)V

    .line 272
    .line 273
    .line 274
    new-instance p7, Lcom/applovin/impl/x1;

    .line 275
    .line 276
    invoke-direct {p7, p3, p4}, Lcom/applovin/impl/x1;-><init>(Ljava/util/Map;Lcom/applovin/impl/sdk/k;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p7}, Lcom/applovin/impl/x1;->c()Z

    .line 280
    .line 281
    .line 282
    move-result p3

    .line 283
    if-eqz p3, :cond_2

    .line 284
    .line 285
    new-instance p3, Lcom/applovin/impl/adview/k;

    .line 286
    .line 287
    invoke-direct {p3, p7, p2}, Lcom/applovin/impl/adview/k;-><init>(Lcom/applovin/impl/x1;Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    iput-object p3, p0, Lcom/applovin/impl/r1;->j:Lcom/applovin/impl/adview/k;

    .line 291
    .line 292
    :cond_2
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 293
    .line 294
    .line 295
    move-result-object p3

    .line 296
    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lcom/applovin/impl/sdk/ad/b;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->P()Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 304
    .line 305
    .line 306
    move-result-wide v2

    .line 307
    const-wide/16 v4, 0x0

    .line 308
    .line 309
    cmp-long p7, v2, v4

    .line 310
    .line 311
    if-gez p7, :cond_4

    .line 312
    .line 313
    if-eqz p3, :cond_3

    .line 314
    .line 315
    goto :goto_0

    .line 316
    :cond_3
    iput-object p6, p0, Lcom/applovin/impl/r1;->k:Lcom/applovin/impl/adview/g;

    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_4
    :goto_0
    new-instance p3, Lcom/applovin/impl/adview/g;

    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->q()Lcom/applovin/impl/adview/e$a;

    .line 322
    .line 323
    .line 324
    move-result-object p7

    .line 325
    invoke-direct {p3, p7, p2}, Lcom/applovin/impl/adview/g;-><init>(Lcom/applovin/impl/adview/e$a;Landroid/app/Activity;)V

    .line 326
    .line 327
    .line 328
    iput-object p3, p0, Lcom/applovin/impl/r1;->k:Lcom/applovin/impl/adview/g;

    .line 329
    .line 330
    const/16 p7, 0x8

    .line 331
    .line 332
    invoke-virtual {p3, p7}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    .line 337
    .line 338
    :goto_1
    new-instance p3, Lcom/applovin/impl/adview/g;

    .line 339
    .line 340
    sget-object p5, Lcom/applovin/impl/adview/e$a;->c:Lcom/applovin/impl/adview/e$a;

    .line 341
    .line 342
    invoke-direct {p3, p5, p2}, Lcom/applovin/impl/adview/g;-><init>(Lcom/applovin/impl/adview/e$a;Landroid/app/Activity;)V

    .line 343
    .line 344
    .line 345
    iput-object p3, p0, Lcom/applovin/impl/r1;->l:Lcom/applovin/impl/adview/g;

    .line 346
    .line 347
    new-instance p5, Lcom/applovin/impl/Ssssssssss;

    .line 348
    .line 349
    invoke-direct {p5, p0}, Lcom/applovin/impl/Ssssssssss;-><init>(Lcom/applovin/impl/r1;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->e1()Z

    .line 356
    .line 357
    .line 358
    move-result p3

    .line 359
    if-eqz p3, :cond_5

    .line 360
    .line 361
    new-instance p3, Lcom/applovin/impl/r1$b;

    .line 362
    .line 363
    invoke-direct {p3, p0}, Lcom/applovin/impl/r1$b;-><init>(Lcom/applovin/impl/r1;)V

    .line 364
    .line 365
    .line 366
    iput-object p3, p0, Lcom/applovin/impl/r1;->h:Lcom/applovin/impl/sdk/i$a;

    .line 367
    .line 368
    goto :goto_2

    .line 369
    :cond_5
    iput-object p6, p0, Lcom/applovin/impl/r1;->h:Lcom/applovin/impl/sdk/i$a;

    .line 370
    .line 371
    :goto_2
    new-instance p3, Lcom/applovin/impl/r1$c;

    .line 372
    .line 373
    invoke-direct {p3, p0, p4}, Lcom/applovin/impl/r1$c;-><init>(Lcom/applovin/impl/r1;Lcom/applovin/impl/sdk/k;)V

    .line 374
    .line 375
    .line 376
    iput-object p3, p0, Lcom/applovin/impl/r1;->g:Lcom/applovin/impl/b;

    .line 377
    .line 378
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->d1()Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_6

    .line 383
    .line 384
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/k;->q()Lcom/applovin/impl/sdk/i;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->b()Ljava/lang/Float;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    iput-object p1, p0, Lcom/applovin/impl/r1;->D:Ljava/lang/Float;

    .line 393
    .line 394
    new-instance p1, Lcom/applovin/impl/r1$d;

    .line 395
    .line 396
    invoke-direct {p1, p0, v0, p4}, Lcom/applovin/impl/r1$d;-><init>(Lcom/applovin/impl/r1;Landroid/os/Handler;Lcom/applovin/impl/sdk/k;)V

    .line 397
    .line 398
    .line 399
    iput-object p1, p0, Lcom/applovin/impl/r1;->C:Landroid/database/ContentObserver;

    .line 400
    .line 401
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    sget-object p2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 406
    .line 407
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    const-string p3, "volume_music_speaker"

    .line 412
    .line 413
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 414
    .line 415
    .line 416
    move-result-object p2

    .line 417
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    iget-object p3, p0, Lcom/applovin/impl/r1;->C:Landroid/database/ContentObserver;

    .line 422
    .line 423
    invoke-virtual {p1, p2, v1, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 424
    .line 425
    .line 426
    :cond_6
    return-void
.end method

.method private A()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->c()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method private C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->h:Lcom/applovin/impl/sdk/i$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->q()Lcom/applovin/impl/sdk/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/applovin/impl/r1;->h:Lcom/applovin/impl/sdk/i$a;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/i$a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->g:Lcom/applovin/impl/b;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/applovin/impl/r1;->g:Lcom/applovin/impl/b;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/applovin/impl/c;->a(Lcom/applovin/impl/b;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/r1;Lcom/applovin/impl/b;Lcom/applovin/impl/g4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/r1;->a(Lcom/applovin/impl/b;Lcom/applovin/impl/g4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/r1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/r1;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/r1;->c(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/r1;ZLjava/lang/Void;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/r1;->a(ZLjava/lang/Void;Ljava/lang/Void;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/r1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/r1;->c(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/r1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/r1;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/r1;->b(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/r1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/r1;->b(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/r1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/r1;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/r1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/r1;->b(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/r1;->a(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(J)Lcom/applovin/impl/g4;
    .locals 5

    .line 14
    new-instance v0, Lcom/applovin/impl/g4;

    const-string v1, "bringAdActivityToFront"

    invoke-direct {v0, v1}, Lcom/applovin/impl/g4;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/applovin/impl/r1$e;

    invoke-direct {v1, p0, v0}, Lcom/applovin/impl/r1$e;-><init>(Lcom/applovin/impl/r1;Lcom/applovin/impl/g4;)V

    .line 16
    iget-object v2, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/impl/c;->a(Lcom/applovin/impl/b;)V

    .line 17
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    const-class v4, Lcom/applovin/adview/AppLovinFullscreenActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x20000

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    iget-object v3, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 20
    new-instance v2, Lcom/applovin/impl/Ssss;

    invoke-direct {v2, p0, v1, v0}, Lcom/applovin/impl/Ssss;-><init>(Lcom/applovin/impl/r1;Lcom/applovin/impl/b;Lcom/applovin/impl/g4;)V

    invoke-virtual {p0, v2, p1, p2}, Lcom/applovin/impl/r1;->a(Ljava/lang/Runnable;J)V

    return-object v0
.end method

.method public static synthetic a(Lcom/applovin/impl/r1;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/r1;->D:Ljava/lang/Float;

    return-object p1
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/l4;->M0:Lcom/applovin/impl/l4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/m;->c(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1}, Lcom/applovin/impl/a2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/a2;->a(Lcom/applovin/impl/sdk/ad/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/y1;->o0:Lcom/applovin/impl/y1;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/z1;->d(Lcom/applovin/impl/y1;Ljava/util/Map;)V

    .line 99
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/l4;->O5:Lcom/applovin/impl/l4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->y()V

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/l4;->K5:Lcom/applovin/impl/l4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    const-string p1, "black_view_auto_dismiss"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/l4;->L5:Lcom/applovin/impl/l4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/r1;->M:Z

    .line 104
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/l4;->M5:Lcom/applovin/impl/l4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->B()V

    :cond_3
    return-void
.end method

.method private static synthetic a(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 80
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/b;Lcom/applovin/impl/g4;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/c;->b(Lcom/applovin/impl/b;)V

    .line 22
    invoke-virtual {p2}, Lcom/applovin/impl/g4;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p2, p1}, Lcom/applovin/impl/g4;->a(Ljava/lang/Object;)Lcom/applovin/impl/g4;

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Landroid/app/Activity;Lcom/applovin/impl/r1$f;)V
    .locals 10

    move-object/from16 v8, p7

    .line 3
    instance-of v0, p0, Lcom/applovin/impl/a7;

    const-string v9, " and throwable: "

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lcom/applovin/impl/u1;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/u1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create FullscreenVastVideoAdPresenter with sdk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v0}, Lcom/applovin/impl/r1$f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    :try_start_1
    new-instance v0, Lcom/applovin/impl/v1;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/v1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create FullscreenVideoAdPresenter with sdk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v0}, Lcom/applovin/impl/r1$f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 9
    :cond_1
    :try_start_2
    new-instance v0, Lcom/applovin/impl/s1;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/s1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    :goto_0
    invoke-direct {v0}, Lcom/applovin/impl/r1;->C()V

    .line 11
    invoke-interface {v8, v0}, Lcom/applovin/impl/r1$f;->a(Lcom/applovin/impl/r1;)V

    return-void

    :catchall_2
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create FullscreenGraphicAdPresenter with sdk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v0}, Lcom/applovin/impl/r1$f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 106
    invoke-static {p1, p2}, Lcom/applovin/impl/a8;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/applovin/impl/r1;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(ZLjava/lang/Void;Ljava/lang/Void;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 13
    :cond_0
    const-string p1, "app_relaunch_bring_to_front_failed"

    invoke-direct {p0, p1}, Lcom/applovin/impl/r1;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/r1;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/r1;->A()Z

    move-result p0

    return p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 2
    const-string v0, "backup_close_button"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V
    .locals 3

    .line 11
    new-instance v0, Lcom/applovin/impl/Sssssssss;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/Sssssssss;-><init>(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x190

    invoke-static {p0, v1, v2, v0}, Lcom/applovin/impl/q7;->a(Landroid/view/View;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/r1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/r1;->e()V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->f()Lcom/applovin/impl/adview/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 12
    invoke-static {p1, p2}, Lcom/applovin/impl/a8;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/applovin/impl/r1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/applovin/impl/r1;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r1;->D:Ljava/lang/Float;

    return-object p0
.end method

.method private static synthetic c(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/applovin/impl/Ssssssss;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/Ssssssss;-><init>(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dismissing on-screen ad due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinFullscreenActivity"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    const-string v0, "Failed to dismiss ad."

    invoke-static {v1, v0, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 21
    invoke-static {p1, p2}, Lcom/applovin/impl/a8;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/applovin/impl/r1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/applovin/impl/r1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/applovin/impl/r1;->w:I

    return p0
.end method

.method public static synthetic e(Lcom/applovin/impl/r1;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/applovin/impl/r1;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/impl/r1;->w:I

    return v0
.end method

.method private e()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/applovin/impl/r1;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "App relaunch detected with launcher activity. Will attempt to re-show the ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/applovin/impl/r1;->p:Z

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v2, Lcom/applovin/impl/Sssss;

    invoke-direct {v2, p0}, Lcom/applovin/impl/Sssss;-><init>(Lcom/applovin/impl/r1;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/r1;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 7
    :cond_2
    const-string v0, "app_relaunch"

    invoke-direct {p0, v0}, Lcom/applovin/impl/r1;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/applovin/impl/r1;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r1;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/r1;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/applovin/impl/QQO;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/QQO;-><init>(Lcom/applovin/impl/r1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->b0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/applovin/impl/r1;->e:I

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/applovin/impl/d;->a(Landroid/app/Activity;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 28
    .line 29
    const-string v1, "AppLovinFullscreenActivity"

    .line 30
    .line 31
    const-string v2, "Ad reshow timed out. Will attempt to bring existing ad activity to front."

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/applovin/impl/r1;->p:Z

    .line 38
    .line 39
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->c()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    cmp-long v2, v0, v2

    .line 48
    .line 49
    if-lez v2, :cond_3

    .line 50
    .line 51
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/r1;->a(J)Lcom/applovin/impl/g4;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Lcom/applovin/impl/g4;->h:Ljava/util/concurrent/Executor;

    .line 56
    .line 57
    new-instance v2, Lcom/applovin/impl/Sssssssssss;

    .line 58
    .line 59
    invoke-direct {v2, p0}, Lcom/applovin/impl/Sssssssssss;-><init>(Lcom/applovin/impl/r1;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/g4;->a(Ljava/util/concurrent/Executor;Lcom/applovin/impl/g4$b;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    const-string v0, "app_relaunch_reshow_timed_out"

    .line 67
    .line 68
    invoke-direct {p0, v0}, Lcom/applovin/impl/r1;->f(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private synthetic l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->N0()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/applovin/impl/a6;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/a6;-><init>(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/k;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/applovin/impl/r5$b;->e:Lcom/applovin/impl/r5$b;

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract B()V
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown(int, KeyEvent) -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, p2, p1}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(IZZJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v5, p1

    .line 81
    iget-boolean v1, v0, Lcom/applovin/impl/r1;->p:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 82
    :cond_0
    iget-object v1, v0, Lcom/applovin/impl/r1;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, v0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hasVideoUrl()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/r1;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/applovin/impl/r1;->G:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v2, v0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    int-to-double v3, v5

    move/from16 v6, p3

    invoke-static {v1, v2, v3, v4, v6}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    .line 85
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/applovin/impl/r1;->m:J

    sub-long v7, v1, v3

    .line 86
    iget-object v1, v0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, v0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackVideoEnd(Lcom/applovin/impl/sdk/ad/b;JIZ)V

    .line 87
    iget-wide v1, v0, Lcom/applovin/impl/r1;->q:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    :goto_0
    move-wide v11, v3

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/applovin/impl/r1;->q:J

    sub-long v3, v1, v3

    goto :goto_0

    .line 88
    :goto_1
    iget-object v1, v0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v9

    iget-object v10, v0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    iget-object v13, v0, Lcom/applovin/impl/r1;->x:Ljava/util/ArrayList;

    iget-boolean v1, v0, Lcom/applovin/impl/r1;->B:Z

    iget v2, v0, Lcom/applovin/impl/r1;->A:I

    move-wide/from16 v14, p4

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackFullScreenAdClosed(Lcom/applovin/impl/sdk/ad/b;JLjava/util/List;JZI)V

    .line 89
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video ad ended at percent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%, elapsedTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, skipTimeMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p4

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, closeTimeMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLovinFullscreenActivity"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(Configuration) -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/view/ViewGroup;)V
.end method

.method public a(Lcom/applovin/impl/adview/a;)V
    .locals 2

    .line 90
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    const-string v0, "AppLovinFullscreenActivity"

    const-string v1, "Fully watched from ad web view..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/applovin/impl/r1;->K:Z

    return-void
.end method

.method public a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/l4;->U1:Lcom/applovin/impl/l4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/applovin/impl/QQOO;

    invoke-direct {v0, p1, p4}, Lcom/applovin/impl/QQOO;-><init>(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V

    .line 78
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/impl/t6;->a(JLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/t6;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/r1;->J:Lcom/applovin/impl/t6;

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/applovin/impl/r1;->f:Landroid/os/Handler;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;JLandroid/os/Handler;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/applovin/impl/r1;->s:Z

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/r1;->m:J

    sub-long/2addr v0, v2

    .line 49
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    const-string v3, "AppLovinFullscreenActivity"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dismissing ad after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds from source: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/s3;->f()V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/r1;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->G()I

    move-result v0

    int-to-long v4, v0

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    :goto_0
    const-string v0, "javascript:al_onPoststitialDismiss();"

    invoke-virtual {p0, v0, v4, v5}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;J)V

    .line 54
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/l4;->k6:Lcom/applovin/impl/l4;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/b;->a(Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->n()V

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->m()V

    .line 59
    iget-object p1, p0, Lcom/applovin/impl/r1;->L:Lcom/applovin/impl/d0;

    invoke-virtual {p1}, Lcom/applovin/impl/d0;->b()V

    .line 60
    iget-object p1, p0, Lcom/applovin/impl/r1;->h:Lcom/applovin/impl/sdk/i$a;

    if-eqz p1, :cond_5

    .line 61
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->q()Lcom/applovin/impl/sdk/i;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/r1;->h:Lcom/applovin/impl/sdk/i$a;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/i$a;)V

    .line 62
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/r1;->g:Lcom/applovin/impl/b;

    if-eqz p1, :cond_6

    .line 63
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/c;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/r1;->g:Lcom/applovin/impl/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/c;->b(Lcom/applovin/impl/b;)V

    .line 64
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/r1;->C:Landroid/database/ContentObserver;

    if-eqz p1, :cond_7

    .line 65
    iget-object p1, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/r1;->C:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 66
    iput-object v1, p0, Lcom/applovin/impl/r1;->C:Landroid/database/ContentObserver;

    .line 67
    :cond_7
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 68
    iget-object p1, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 69
    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string v0, "Fullscreen ad shown in container view dismissed, destroying the presenter."

    invoke-virtual {p1, v3, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_9
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->s()V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/applovin/impl/Sssssss;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/Sssssss;-><init>(Lcom/applovin/impl/r1;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/applovin/impl/r1;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public a(ZJ)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->T0()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 93
    const-string p1, "javascript:al_mute();"

    goto :goto_0

    :cond_0
    const-string p1, "javascript:al_unmute();"

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public a(Z)Z
    .locals 9

    .line 24
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    iget-object v1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    iget-object v2, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/z6;->a(ZLcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/k;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/l4;->r5:Lcom/applovin/impl/l4;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "details"

    const-string v3, "Missing ad resources: "

    const-string v4, "AppLovinFullscreenActivity"

    const-string v5, "missingCachedAdResources"

    const-string v6, "error_message"

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dismissing ad due to missing resources: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/l4;->u5:Lcom/applovin/impl/l4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Missing ad resources"

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/applovin/impl/r1;->F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v4, v0, Lcom/applovin/impl/f2;

    if-eqz v4, :cond_3

    .line 30
    invoke-static {v0, v1}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    iget-object v4, p0, Lcom/applovin/impl/r1;->F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    const/4 v7, 0x0

    invoke-static {v0, v4, v1, v7, v7}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/adview/AppLovinFullscreenActivity;)V

    .line 32
    :cond_3
    :goto_0
    const-string v0, "missing_ad_resources"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {v6, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 35
    const-string v1, "Failing ad display"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    iget-object v1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/y1;

    invoke-virtual {v1, v2, v5, v0}, Lcom/applovin/impl/z1;->a(Lcom/applovin/impl/y1;Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    const-string v0, "source"

    invoke-static {v0, v5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 38
    invoke-static {v6, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/y1;->s:Lcom/applovin/impl/y1;

    iget-object v2, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v1, v2, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/y1;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 40
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/l4;->t5:Lcom/applovin/impl/l4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 41
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Streaming ad due to missing ad resources: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->S0()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    const-string p1, "Streaming ad"

    invoke-static {v2, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    move-result-object p1

    sget-object v2, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/y1;

    invoke-virtual {p1, v2, v5, v0}, Lcom/applovin/impl/z1;->a(Lcom/applovin/impl/y1;Ljava/lang/String;Ljava/util/Map;)V

    return v1
.end method

.method public abstract b(J)V
.end method

.method public b(Z)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(boolean) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:al_onWindowFocusChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/r1;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/r1;->J:Lcom/applovin/impl/t6;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/applovin/impl/t6;->e()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/applovin/impl/t6;->d()V

    :cond_2
    return-void
.end method

.method public c()J
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 4

    .line 19
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling report reward in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    new-instance v1, Lcom/applovin/impl/Sss;

    invoke-direct {v1, p0}, Lcom/applovin/impl/Sss;-><init>(Lcom/applovin/impl/r1;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/t6;->a(JLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/t6;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/r1;->I:Lcom/applovin/impl/t6;

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/l4;->p2:Lcom/applovin/impl/l4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/r1;->a(ZJ)V

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->E0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/applovin/impl/r1;->F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1, v0}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->E0()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hasVideoUrl()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/r1;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/r1;->G:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1, v0}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 15
    :cond_2
    new-instance p1, Lcom/applovin/impl/a4;

    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/applovin/impl/a4;-><init>(Landroid/app/Activity;)V

    .line 16
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/a4;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 17
    iget-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->setHasShown(Z)V

    return-void
.end method

.method public d()I
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->u()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/l4;->o2:Lcom/applovin/impl/l4;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget v0, p0, Lcom/applovin/impl/r1;->u:I

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/applovin/impl/r1;->p:Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Handling al_onPoststitialShow evaluation error"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "Handling render process crash"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/applovin/impl/r1;->t:Z

    .line 18
    .line 19
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/r1;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/applovin/adview/AppLovinFullscreenActivity;

    .line 4
    .line 5
    return v0
.end method

.method public m()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/r1;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/r1;->F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/applovin/impl/l2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->I()Lcom/applovin/impl/sdk/n;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->F()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "source"

    .line 48
    .line 49
    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/applovin/impl/a2;->b(Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "details"

    .line 59
    .line 60
    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget-object v2, Lcom/applovin/impl/y1;->t:Lcom/applovin/impl/y1;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 72
    .line 73
    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/y1;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public abstract n()V
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->I:Lcom/applovin/impl/t6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/t6;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sparse-switch v1, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :sswitch_0
    const-string v1, "com.applovin.preload_failure"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    const/16 v0, 0x8

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :sswitch_1
    const-string v1, "com.applovin.preload_success"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x7

    .line 43
    goto :goto_0

    .line 44
    :sswitch_2
    const-string v1, "com.applovin.render_process_gone"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 v0, 0x6

    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string v1, "com.applovin.custom_tabs_shown"

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 v0, 0x5

    .line 65
    goto :goto_0

    .line 66
    :sswitch_4
    const-string v1, "com.applovin.custom_tabs_hidden"

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_5

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const/4 v0, 0x4

    .line 76
    goto :goto_0

    .line 77
    :sswitch_5
    const-string v1, "com.applovin.external_redirect_failure"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_6

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    const/4 v0, 0x3

    .line 87
    goto :goto_0

    .line 88
    :sswitch_6
    const-string v1, "com.applovin.custom_tabs_failure"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_7

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_7
    const/4 v0, 0x2

    .line 98
    goto :goto_0

    .line 99
    :sswitch_7
    const-string v1, "com.applovin.external_redirect_success"

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_8

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_8
    const/4 v0, 0x1

    .line 109
    goto :goto_0

    .line 110
    :sswitch_8
    const-string v1, "com.applovin.al_onPoststitialShow_evaluation_error"

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_9

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_9
    const/4 v0, 0x0

    .line 120
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/r1;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_1
    iget-boolean p1, p0, Lcom/applovin/impl/r1;->t:Z

    .line 129
    .line 130
    if-nez p1, :cond_a

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->g()V

    .line 133
    .line 134
    .line 135
    :cond_a
    :goto_1
    return-void

    .line 136
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/r1;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_4
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->f()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x6e708598 -> :sswitch_8
        -0x61a470d6 -> :sswitch_7
        -0x3340cd13 -> :sswitch_6
        -0x331d7f4f -> :sswitch_5
        -0x2f5b9c19 -> :sswitch_4
        -0x11707ccc -> :sswitch_3
        -0x10128472 -> :sswitch_2
        0x13a6fde3 -> :sswitch_1
        0x422def6a -> :sswitch_0
    .end sparse-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->I:Lcom/applovin/impl/t6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/t6;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->F0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->f()Lcom/applovin/impl/adview/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/r1;->L:Lcom/applovin/impl/d0;

    .line 28
    .line 29
    new-instance v2, Lcom/applovin/impl/Ssssss;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/applovin/impl/Ssssss;-><init>(Lcom/applovin/impl/r1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/d0;->a(Landroid/view/View;Lcom/applovin/impl/d0$c;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "onBackPressed()"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/r1;->M:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "back_button"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->a1()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v0, "javascript:onBackPressed();"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/applovin/impl/r1;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 16
    .line 17
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->j()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->n()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->m()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/applovin/impl/r1;->E:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/applovin/impl/r1;->F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/applovin/impl/r1;->G:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "onPause()"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, "javascript:al_onAppPaused();"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/applovin/impl/r1;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/applovin/impl/r1;->H:Lcom/applovin/impl/c2;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/c2;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/applovin/impl/r1;->H:Lcom/applovin/impl/c2;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/applovin/impl/c2;->a()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->o()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "onResume()"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, "javascript:al_onAppResumed();"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/applovin/impl/r1;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->p()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/applovin/impl/r1;->H:Lcom/applovin/impl/c2;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/applovin/impl/c2;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/applovin/impl/r1;->H:Lcom/applovin/impl/c2;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/applovin/impl/c2;->a()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "onStop()"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public abstract w()V
.end method

.method public abstract x()V
.end method

.method public y()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "Setting ad fully watched"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/applovin/impl/r1;->K:Z

    .line 18
    .line 19
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/r1;->p:Z

    .line 2
    .line 3
    return v0
.end method
