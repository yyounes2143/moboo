.class public final Lcom/tencent/liteav/txcvodplayer/renderer/b;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->d:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->e:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 4
    .line 5
    return-void
.end method

.method public final b(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->h:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->i:I

    .line 4
    .line 5
    return-void
.end method

.method public final c(II)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a:I

    .line 2
    .line 3
    const/16 v1, 0x10e

    .line 4
    .line 5
    const/16 v2, 0x5a

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    move v7, p2

    .line 12
    move p2, p1

    .line 13
    move p1, v7

    .line 14
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 21
    .line 22
    invoke-static {v3, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->d:I

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    if-ne v4, v5, :cond_2

    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_2
    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 34
    .line 35
    if-lez v4, :cond_19

    .line 36
    .line 37
    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 38
    .line 39
    if-lez v4, :cond_19

    .line 40
    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    const/high16 v4, -0x80000000

    .line 58
    .line 59
    if-ne v0, v4, :cond_10

    .line 60
    .line 61
    if-ne v3, v4, :cond_10

    .line 62
    .line 63
    int-to-float v0, p1

    .line 64
    int-to-float v3, p2

    .line 65
    div-float/2addr v0, v3

    .line 66
    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->d:I

    .line 67
    .line 68
    const/4 v4, 0x5

    .line 69
    const/4 v5, 0x4

    .line 70
    if-eq v3, v5, :cond_6

    .line 71
    .line 72
    if-eq v3, v4, :cond_3

    .line 73
    .line 74
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 75
    .line 76
    int-to-float v1, v1

    .line 77
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 78
    .line 79
    int-to-float v2, v2

    .line 80
    div-float/2addr v1, v2

    .line 81
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->h:I

    .line 82
    .line 83
    if-lez v2, :cond_9

    .line 84
    .line 85
    iget v6, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->i:I

    .line 86
    .line 87
    if-lez v6, :cond_9

    .line 88
    .line 89
    int-to-float v2, v2

    .line 90
    mul-float/2addr v1, v2

    .line 91
    int-to-float v2, v6

    .line 92
    div-float/2addr v1, v2

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    iget v6, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a:I

    .line 95
    .line 96
    if-eq v6, v2, :cond_5

    .line 97
    .line 98
    if-ne v6, v1, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const v1, 0x3faaaaab

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    :goto_0
    const/high16 v1, 0x3f400000    # 0.75f

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    iget v6, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a:I

    .line 109
    .line 110
    if-eq v6, v2, :cond_8

    .line 111
    .line 112
    if-ne v6, v1, :cond_7

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    const v1, 0x3fe38e39

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_8
    :goto_1
    const/high16 v1, 0x3f100000    # 0.5625f

    .line 120
    .line 121
    :cond_9
    :goto_2
    cmpl-float v0, v1, v0

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    if-lez v0, :cond_a

    .line 125
    .line 126
    move v0, v2

    .line 127
    goto :goto_3

    .line 128
    :cond_a
    const/4 v0, 0x0

    .line 129
    :goto_3
    if-eqz v3, :cond_e

    .line 130
    .line 131
    if-eq v3, v2, :cond_c

    .line 132
    .line 133
    if-eq v3, v5, :cond_e

    .line 134
    .line 135
    if-eq v3, v4, :cond_e

    .line 136
    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    iget p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 140
    .line 141
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 146
    .line 147
    int-to-float p1, p1

    .line 148
    div-float/2addr p1, v1

    .line 149
    float-to-int p1, p1

    .line 150
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 151
    .line 152
    return-void

    .line 153
    :cond_b
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 154
    .line 155
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 160
    .line 161
    int-to-float p1, p1

    .line 162
    mul-float/2addr p1, v1

    .line 163
    float-to-int p1, p1

    .line 164
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 165
    .line 166
    return-void

    .line 167
    :cond_c
    if-eqz v0, :cond_d

    .line 168
    .line 169
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 170
    .line 171
    int-to-float p1, p2

    .line 172
    mul-float/2addr p1, v1

    .line 173
    float-to-int p1, p1

    .line 174
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 175
    .line 176
    return-void

    .line 177
    :cond_d
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 178
    .line 179
    int-to-float p1, p1

    .line 180
    div-float/2addr p1, v1

    .line 181
    float-to-int p1, p1

    .line 182
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 183
    .line 184
    return-void

    .line 185
    :cond_e
    if-eqz v0, :cond_f

    .line 186
    .line 187
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 188
    .line 189
    int-to-float p1, p1

    .line 190
    div-float/2addr p1, v1

    .line 191
    float-to-int p1, p1

    .line 192
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 193
    .line 194
    return-void

    .line 195
    :cond_f
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 196
    .line 197
    int-to-float p1, p2

    .line 198
    mul-float/2addr p1, v1

    .line 199
    float-to-int p1, p1

    .line 200
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 201
    .line 202
    return-void

    .line 203
    :cond_10
    const/high16 v1, 0x40000000    # 2.0f

    .line 204
    .line 205
    if-ne v0, v1, :cond_12

    .line 206
    .line 207
    if-ne v3, v1, :cond_12

    .line 208
    .line 209
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 210
    .line 211
    mul-int v1, v0, p2

    .line 212
    .line 213
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 214
    .line 215
    mul-int v3, p1, v2

    .line 216
    .line 217
    if-ge v1, v3, :cond_11

    .line 218
    .line 219
    mul-int/2addr v0, p2

    .line 220
    div-int p1, v0, v2

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_11
    mul-int v1, v0, p2

    .line 224
    .line 225
    mul-int v3, p1, v2

    .line 226
    .line 227
    if-le v1, v3, :cond_1a

    .line 228
    .line 229
    mul-int/2addr v2, p1

    .line 230
    div-int p2, v2, v0

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_12
    if-ne v0, v1, :cond_14

    .line 234
    .line 235
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 236
    .line 237
    mul-int/2addr v0, p1

    .line 238
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 239
    .line 240
    div-int/2addr v0, v1

    .line 241
    if-ne v3, v4, :cond_13

    .line 242
    .line 243
    if-le v0, p2, :cond_13

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_13
    move p2, v0

    .line 247
    goto :goto_5

    .line 248
    :cond_14
    if-ne v3, v1, :cond_16

    .line 249
    .line 250
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 251
    .line 252
    mul-int/2addr v1, p2

    .line 253
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 254
    .line 255
    div-int/2addr v1, v2

    .line 256
    if-ne v0, v4, :cond_15

    .line 257
    .line 258
    if-le v1, p1, :cond_15

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_15
    move p1, v1

    .line 262
    goto :goto_5

    .line 263
    :cond_16
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 264
    .line 265
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    .line 266
    .line 267
    if-ne v3, v4, :cond_17

    .line 268
    .line 269
    if-le v2, p2, :cond_17

    .line 270
    .line 271
    mul-int v3, p2, v1

    .line 272
    .line 273
    div-int/2addr v3, v2

    .line 274
    goto :goto_4

    .line 275
    :cond_17
    move v3, v1

    .line 276
    move p2, v2

    .line 277
    :goto_4
    if-ne v0, v4, :cond_18

    .line 278
    .line 279
    if-le v3, p1, :cond_18

    .line 280
    .line 281
    mul-int/2addr v2, p1

    .line 282
    div-int p2, v2, v1

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_18
    move p1, v3

    .line 286
    goto :goto_5

    .line 287
    :cond_19
    move p1, v0

    .line 288
    move p2, v3

    .line 289
    :cond_1a
    :goto_5
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 290
    .line 291
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 292
    .line 293
    return-void
.end method
