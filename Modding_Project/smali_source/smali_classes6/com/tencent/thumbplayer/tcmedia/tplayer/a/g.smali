.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPExtendReportController;
.implements Lcom/tencent/thumbplayer/tcmedia/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportInfoGetter;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;

.field private d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

.field private e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportChannelListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;

.field private i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

.field private j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->k:Ljava/util/Map;

    .line 7
    .line 8
    const/16 v1, 0x75

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xcc

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v2, 0x67

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x65

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const/16 v3, 0x66

    .line 52
    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v4, 0x2

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const/16 v2, 0x68

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v4, 0x4

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const/16 v2, 0x69

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v4, 0x5

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const/16 v2, 0x6b

    .line 102
    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const/16 v2, 0x6c

    .line 111
    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const/16 v2, 0x6a

    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/4 v4, 0x6

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const/16 v2, 0x6d

    .line 134
    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const/4 v4, 0x7

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    const/16 v2, 0x6e

    .line 148
    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const/16 v4, 0x8

    .line 154
    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    const/16 v2, 0x6f

    .line 163
    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const/16 v4, 0x9

    .line 169
    .line 170
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const/16 v2, 0x70

    .line 178
    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const/16 v4, 0xa

    .line 184
    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const/16 v2, 0x72

    .line 193
    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const/16 v4, 0xb

    .line 199
    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const/16 v2, 0x73

    .line 208
    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    const/16 v4, 0xc

    .line 214
    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const/16 v2, 0xc9

    .line 223
    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const/16 v4, 0x64

    .line 229
    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    const/16 v2, 0xca

    .line 238
    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    const/16 v1, 0xcb

    .line 247
    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    const/16 v1, 0x74

    .line 256
    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const/16 v2, 0xe

    .line 262
    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    const/16 v1, 0x71

    .line 271
    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    const/16 v2, 0xd

    .line 277
    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    const/16 v1, 0x76

    .line 286
    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    const/16 v2, 0xf

    .line 292
    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a:Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportInfoGetter;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b:Landroid/os/HandlerThread;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    .line 12
    .line 13
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->g:Landroid/content/Context;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->h:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;

    .line 23
    .line 24
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/Object;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->j:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->g:Landroid/content/Context;

    .line 43
    .line 44
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    const-string v1, "TPReportController"

    if-eqz v0, :cond_0

    const-string p1, "mITPReporter has been create, do not create again."

    :goto_0
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/k;->a(I)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initReporter("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") fail, mITPReporter is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    invoke-interface {v0, p1, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;->a(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a:Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportInfoGetter;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportInfoGetter;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->h:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportChannelListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportChannelListener;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 1

    .line 4
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->f(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :cond_3
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :cond_4
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->c(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method private b(ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 1

    .line 2
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->h(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->g(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method private b(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 3

    .line 3
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$g;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->b:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onGetConvertedDataSource time:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPReportController"

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b(ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method private c(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$u;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->a:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$u;->d()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->e:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$u;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->h:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$u;->f()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->f:I

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "onSetDataSource url:"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " isUseProxy:"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 60
    .line 61
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->h:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, " urlProtocol:"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 72
    .line 73
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->f:I

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "TPReportController"

    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private d(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;->a(I)V

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$p;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$p;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->c:J

    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->c()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->d:J

    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$p;->d()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->i:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method private e(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;->b(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "TPReportController"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "onPrepareEnd Current state is not match:"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;->a(I)V

    .line 40
    .line 41
    .line 42
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$o;

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$o;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$o;->e()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->b(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->g:I

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "onPrepareEnd durationMs:"

    .line 64
    .line 65
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$o;->d()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, " playType:"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 81
    .line 82
    iget v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->g:I

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$o;->d()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    const-wide/16 v2, 0x0

    .line 99
    .line 100
    cmp-long p1, v0, v2

    .line 101
    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    const/4 p1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(I)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private f(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;->b(I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;->a(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private g(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/h;->a(I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;->a()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    .line 16
    .line 17
    :cond_0
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    .line 23
    .line 24
    return-void
.end method

.method private h(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 4

    .line 1
    const-string p1, "TPReportController"

    .line 2
    .line 3
    const-string v0, "onControllerRelease"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->j:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b:Landroid/os/HandlerThread;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a()Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b:Landroid/os/HandlerThread;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a(Landroid/os/HandlerThread;Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b:Landroid/os/HandlerThread;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->j:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->j:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a()Lcom/tencent/thumbplayer/tcmedia/utils/o;

    move-result-object v0

    const-string v1, "TPReportController_Thread"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b:Landroid/os/HandlerThread;

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not need process"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPReportController"

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->h:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 8
    const-string v0, "reporting is needed:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPReportController"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->j:Ljava/lang/Boolean;

    return-void
.end method

.method public addReportChannelListener(Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportChannelListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    const-string v1, "TPReportController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "mReportChannelListenerList is null"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportChannelListener;

    .line 34
    .line 35
    if-ne v2, p1, :cond_1

    .line 36
    .line 37
    const-string p1, "mReportChannelListenerList has contain reportChannelListener"

    .line 38
    .line 39
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    const-string v0, "TPReportController"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;

    if-eqz v1, :cond_0

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->j:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "TPReportController"

    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setReportInfoGetter(Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportInfoGetter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a:Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPReportInfoGetter;

    .line 2
    .line 3
    return-void
.end method
