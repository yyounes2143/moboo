.class public final Lcom/facebook/ads/redexgen/X/8w;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:[S

.field public A0B:[S

.field public A0C:[S

.field public final A0D:F

.field public final A0E:F

.field public final A0F:F

.field public final A0G:I

.field public final A0H:I

.field public final A0I:I

.field public final A0J:I

.field public final A0K:I

.field public final A0L:[S


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 496
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T7VAgrMlNjunoCY92EX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RGUT9owbnhx8phDbzrCYMg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CVNC8QX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fBdqcrRV46KfIZmPA23V4p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8FvZMHzhr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kMgSgwu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1eJdCrNjGcKHTUWf60z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EzFxZEW8JHF4ThmiFQVxs9z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIFFI)V
    .locals 2

    .line 24125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24126
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:I

    .line 24127
    iput p2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    .line 24128
    iput p3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:F

    .line 24129
    iput p4, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:F

    .line 24130
    int-to-float v1, p1

    int-to-float v0, p5

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:F

    .line 24131
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0K:I

    .line 24132
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0I:I

    .line 24133
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0I:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    .line 24134
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0L:[S

    .line 24135
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    .line 24136
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    .line 24137
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:[S

    .line 24138
    return-void
.end method

.method private A00(I)I
    .locals 2

    .line 24139
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 24140
    .local v0, "frameCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/8w;->A0D([SII)V

    .line 24141
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:I

    .line 24142
    return v1
.end method

.method private A01([SI)I
    .locals 7

    .line 24143
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:I

    const/4 v5, 0x1

    const/16 v0, 0xfa0

    if-le v1, v0, :cond_0

    iget v6, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:I

    div-int/2addr v6, v0

    .line 24144
    .local v0, "skip":I
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24145
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const-string v1, "ihqHcMR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v3, v5, :cond_4

    .line 24146
    if-ne v6, v5, :cond_4

    .line 24147
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0K:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0I:I

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A04([SIII)I

    move-result v3

    .line 24148
    .local v1, "period":I
    .end local v2
    .restart local v1    # "period":I
    :cond_2
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0F(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24149
    iget v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A08:I

    .line 24150
    .local v2, "retPeriod":I
    .restart local v2    # "retPeriod":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24151
    .end local v2    # "retPeriod":I
    :cond_3
    move v4, v3

    goto :goto_2

    .line 24152
    .end local v1    # "period":I
    :cond_4
    invoke-direct {p0, p1, p2, v6}, Lcom/facebook/ads/redexgen/X/8w;->A0E([SII)V

    .line 24153
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0L:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0K:I

    div-int/2addr v1, v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0I:I

    div-int/2addr v0, v6

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A04([SIII)I

    move-result v3

    .line 24154
    .local v2, "period":I
    if-eq v6, v5, :cond_2

    .line 24155
    mul-int/2addr v3, v6

    .line 24156
    mul-int/lit8 v0, v6, 0x4

    sub-int v2, v3, v0

    .line 24157
    .local v3, "minP":I
    mul-int/lit8 v1, v6, 0x4

    add-int/2addr v1, v3

    .line 24158
    .local v4, "maxP":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0K:I

    if-ge v2, v0, :cond_5

    .line 24159
    iget v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0K:I

    .line 24160
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0I:I

    if-le v1, v0, :cond_6

    .line 24161
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0I:I

    .line 24162
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    if-ne v0, v5, :cond_7

    .line 24163
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/8w;->A04([SIII)I

    move-result v3

    .end local v2    # "period":I
    .restart local v1    # "period":I
    goto :goto_1

    .line 24164
    .end local v1    # "period":I
    .restart local v2    # "period":I
    :cond_7
    invoke-direct {p0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/8w;->A0E([SII)V

    .line 24165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0L:[S

    invoke-direct {p0, v0, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/8w;->A04([SIII)I

    move-result v3

    .end local v2    # "period":I
    .restart local v1    # "period":I
    goto :goto_1

    .line 24166
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const-string v1, "cTOoGT7MMdDrVmklJ8r"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "keLDEQoIXNVpWb6w58r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A08:I

    .line 24167
    return v4
.end method

.method private A02([SIFI)I
    .locals 13

    .line 24168
    move/from16 v2, p4

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 24169
    int-to-float v0, v2

    mul-float v0, v0, p3

    sub-float v3, v3, p3

    div-float/2addr v0, v3

    float-to-int v5, v0

    .line 24170
    .local v0, "newFrameCount":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    add-int v0, v2, v5

    .line 24171
    invoke-direct {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    .line 24172
    iget v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    move v12, p2

    mul-int/2addr v4, v12

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v0, v2

    move-object v9, p1

    invoke-static {v9, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24173
    iget v6, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v8, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    add-int/2addr v8, v2

    add-int v10, v12, v2

    move-object v11, v9

    invoke-static/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/8w;->A0C(II[SI[SI[SI)V

    .line 24174
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24175
    return v5

    .line 24176
    .end local v0    # "newFrameCount":I
    :cond_0
    move v5, v2

    .line 24177
    .restart local v0    # "newFrameCount":I
    int-to-float v1, v2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p3

    sub-float/2addr v0, v3

    mul-float/2addr v1, v0

    sub-float v3, v3, p3

    div-float/2addr v1, v3

    float-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:I

    goto :goto_0
.end method

.method private A03([SIFI)I
    .locals 10

    .line 24178
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, p3, v1

    if-ltz v0, :cond_0

    .line 24179
    int-to-float v0, p4

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int v2, v0

    .line 24180
    .local v0, "newFrameCount":I
    .end local v2
    .restart local v0    # "newFrameCount":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/8w;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    .line 24181
    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v5, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    move v7, p2

    add-int v9, v7, p4

    move-object v6, p1

    move-object v8, v6

    invoke-static/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/8w;->A0C(II[SI[SI[SI)V

    .line 24182
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24183
    return v2

    .line 24184
    .end local v0    # "newFrameCount":I
    .local v2, "newFrameCount":I
    :cond_0
    int-to-float v0, p4

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:I

    move v2, p4

    goto :goto_0
.end method

.method private A04([SIII)I
    .locals 8

    .line 24185
    const/4 v7, 0x0

    .line 24186
    .local v0, "bestPeriod":I
    const/16 v6, 0xff

    .line 24187
    .local v1, "worstPeriod":I
    const/4 v4, 0x1

    .line 24188
    .local v2, "minDiff":I
    const/4 v3, 0x0

    .line 24189
    .local v3, "maxDiff":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr p2, v0

    .line 24190
    .local v4, "period":I
    :goto_0
    if-gt p3, p4, :cond_3

    .line 24191
    const/4 v5, 0x0

    .line 24192
    .local v5, "diff":I
    const/4 v2, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 24193
    add-int v0, p2, v2

    aget-short v1, p1, v0

    .line 24194
    .local v7, "sVal":S
    add-int v0, p2, p3

    add-int/2addr v0, v2

    aget-short v0, p1, v0

    .line 24195
    .local p0, "pVal":S
    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 24196
    .end local v7    # "sVal":S
    .end local p0    # "pVal":S
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24197
    .end local v6    # "i":I
    :cond_0
    mul-int v1, v5, v7

    mul-int v0, v4, p3

    if-ge v1, v0, :cond_1

    .line 24198
    move v4, v5

    .line 24199
    move v7, p3

    .line 24200
    :cond_1
    mul-int v1, v5, v6

    mul-int v0, v3, p3

    if-le v1, v0, :cond_2

    .line 24201
    move v3, v5

    .line 24202
    move v6, p3

    .line 24203
    .end local v5    # "diff":I
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 24204
    .end local v4    # "period":I
    :cond_3
    div-int/2addr v4, v7

    iput v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A02:I

    .line 24205
    div-int/2addr v3, v6

    iput v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:I

    .line 24206
    return v7
.end method

.method private A05([SIII)S
    .locals 6

    .line 24207
    aget-short v5, p1, p2

    .line 24208
    .local v0, "left":S
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    add-int/2addr v0, p2

    aget-short v4, p1, v0

    .line 24209
    .local v1, "right":S
    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:I

    mul-int/2addr v3, p3

    .line 24210
    .local v2, "position":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:I

    mul-int/2addr v1, p4

    .line 24211
    .local v3, "leftPosition":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:I

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p4

    .line 24212
    .local v4, "rightPosition":I
    sub-int v0, v2, v3

    .line 24213
    .local v5, "ratio":I
    sub-int/2addr v2, v1

    .line 24214
    .local p0, "width":I
    mul-int v1, v0, v5

    sub-int v0, v2, v0

    mul-int/2addr v0, v4

    add-int/2addr v1, v0

    div-int/2addr v1, v2

    int-to-short v0, v1

    return v0
.end method

.method private A06()V
    .locals 8

    .line 24215
    iget v6, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24216
    .local v0, "originalOutputFrameCount":I
    iget v7, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:F

    div-float/2addr v7, v0

    .line 24217
    .local v1, "s":F
    iget v5, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:F

    mul-float/2addr v5, v0

    .line 24218
    .local v2, "r":F
    float-to-double v3, v7

    const-wide v1, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v0, v3, v1

    if-gtz v0, :cond_0

    float-to-double v3, v7

    const-wide v1, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    .line 24219
    :cond_0
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/8w;->A07(F)V

    .line 24220
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_1

    .line 24221
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/8w;->A08(FI)V

    .line 24222
    :cond_1
    return-void

    .line 24223
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8w;->A0D([SII)V

    .line 24224
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    goto :goto_0
.end method

.method private A07(F)V
    .locals 8

    .line 24225
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    if-ge v1, v0, :cond_0

    .line 24226
    return-void

    .line 24227
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24228
    .local v0, "frameCount":I
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const-string v1, "1EAucAhfj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v5, 0x0

    .line 24229
    .local v1, "positionFrames":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:I

    if-lez v0, :cond_3

    .line 24230
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/8w;->A00(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 24231
    .end local v2
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    add-int/2addr v0, v5

    if-le v0, v3, :cond_2

    .line 24232
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/8w;->A0B(I)V

    .line 24233
    return-void

    .line 24234
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    invoke-direct {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/8w;->A01([SI)I

    move-result v4

    .line 24235
    .local v2, "period":I
    float-to-double v1, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v1, v6

    if-lez v0, :cond_4

    .line 24236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    invoke-direct {p0, v0, v5, p1, v4}, Lcom/facebook/ads/redexgen/X/8w;->A03([SIFI)I

    move-result v0

    add-int/2addr v0, v4

    add-int/2addr v5, v0

    goto :goto_0

    .line 24237
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    invoke-direct {p0, v0, v5, p1, v4}, Lcom/facebook/ads/redexgen/X/8w;->A02([SIFI)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    add-int/2addr v5, v4

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const-string v1, "LI3iTvxeiLHfC3eQqEyHhGd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "DQqtHf8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/2addr v5, v4

    goto :goto_0
.end method

.method private A08(FI)V
    .locals 9

    .line 24238
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    if-ne v0, p2, :cond_0

    .line 24239
    return-void

    .line 24240
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v4, v0

    .line 24241
    .local v0, "newSampleRate":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0H:I

    .line 24242
    .local v1, "oldSampleRate":I
    :goto_0
    const/16 v0, 0x4000

    if-gt v4, v0, :cond_1

    if-le v3, v0, :cond_3

    .line 24243
    :cond_1
    div-int/lit8 v4, v4, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_2

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24244
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const-string v1, "8yLWj9SnB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 24245
    :cond_3
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/8w;->A09(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    goto :goto_1

    .line 24246
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const-string v1, "6iwvuS4pXw8rJ8Q1q7RXek"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "P2j6LGlMYimVuvOXYheyMm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .local v2, "position":I
    :goto_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_9

    .line 24247
    :goto_3
    iget v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:I

    add-int/2addr v2, v5

    mul-int/2addr v2, v4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:I

    mul-int/2addr v1, v3

    if-le v2, v1, :cond_6

    .line 24248
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24249
    invoke-direct {p0, v2, v1, v5}, Lcom/facebook/ads/redexgen/X/8w;->A0G([SII)[S

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    .line 24250
    const/4 v8, 0x0

    .local v3, "i":I
    :goto_4
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    if-ge v8, v1, :cond_5

    .line 24251
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v6, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v8

    .line 24252
    invoke-direct {p0, v2, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/8w;->A05([SIII)S

    move-result v1

    aput-short v1, v7, v6

    .line 24253
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 24254
    .end local v3    # "i":I
    :cond_5
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:I

    .line 24255
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    goto :goto_3

    .line 24256
    :cond_6
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:I

    .line 24257
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:I

    if-ne v1, v3, :cond_7

    .line 24258
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:I

    .line 24259
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:I

    if-ne v1, v4, :cond_8

    :goto_5
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 24260
    iput v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:I

    .line 24261
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 24262
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 24263
    .end local v2    # "position":I
    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    sub-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0A(I)V

    .line 24264
    return-void
.end method

.method private A09(I)V
    .locals 6

    .line 24265
    iget v5, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    sub-int/2addr v5, p1

    .line 24266
    .local v0, "frameCount":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    invoke-direct {p0, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/8w;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:[S

    .line 24267
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v3, p1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v0, v5

    invoke-static {v4, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24268
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24269
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    .line 24270
    return-void
.end method

.method private A0A(I)V
    .locals 5

    .line 24271
    if-nez p1, :cond_0

    .line 24272
    return-void

    .line 24273
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v3, p1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0C:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    sub-int/2addr v1, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v4, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24274
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    .line 24275
    return-void
.end method

.method private A0B(I)V
    .locals 6

    .line 24276
    iget v5, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    sub-int/2addr v5, p1

    .line 24277
    .local v0, "remainingFrames":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v3, p1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v5

    const/4 v0, 0x0

    invoke-static {v4, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24278
    iput v5, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    .line 24279
    return-void
.end method

.method public static A0C(II[SI[SI[SI)V
    .locals 7

    .line 24280
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 24281
    mul-int v6, p3, p1

    add-int/2addr v6, v5

    .line 24282
    .local v1, "o":I
    mul-int v4, p7, p1

    add-int/2addr v4, v5

    .line 24283
    .local v2, "u":I
    mul-int v3, p5, p1

    add-int/2addr v3, v5

    .line 24284
    .local v3, "d":I
    const/4 v2, 0x0

    .local v4, "t":I
    :goto_1
    if-ge v2, p0, :cond_0

    .line 24285
    aget-short v1, p4, v3

    sub-int v0, p0, v2

    mul-int/2addr v1, v0

    aget-short v0, p6, v4

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    div-int/2addr v1, p0

    int-to-short v0, v1

    aput-short v0, p2, v6

    .line 24286
    add-int/2addr v6, p1

    .line 24287
    add-int/2addr v3, p1

    .line 24288
    add-int/2addr v4, p1

    .line 24289
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24290
    .end local v1    # "o":I
    .end local v2    # "u":I
    .end local v3    # "d":I
    .end local v4    # "t":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24291
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private A0D([SII)V
    .locals 4

    .line 24292
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/8w;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    .line 24293
    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v3, p2

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v0, p3

    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24294
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24295
    return-void
.end method

.method private A0E([SII)V
    .locals 7

    .line 24296
    iget v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    div-int/2addr v4, p3

    .line 24297
    .local v0, "frameCount":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v3, p3

    .line 24298
    .local v1, "samplesPerValue":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr p2, v0

    .line 24299
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 24300
    const/4 v6, 0x0

    .line 24301
    .local v3, "value":I
    const/4 v1, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 24302
    mul-int v0, v5, v3

    add-int/2addr v0, p2

    add-int/2addr v0, v1

    aget-short v0, p1, v0

    add-int/2addr v6, v0

    .line 24303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24304
    .end local v4    # "j":I
    :cond_0
    div-int/2addr v6, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24305
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A0M:[Ljava/lang/String;

    const-string v1, "fFYg0yxzP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0L:[S

    int-to-short v0, v6

    aput-short v0, v1, v5

    .line 24306
    .end local v3    # "value":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24307
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private A0F(II)Z
    .locals 3

    .line 24308
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A08:I

    if-nez v0, :cond_1

    .line 24309
    :cond_0
    return v2

    .line 24310
    :cond_1
    mul-int/lit8 v0, p1, 0x3

    if-le p2, v0, :cond_2

    .line 24311
    return v2

    .line 24312
    :cond_2
    mul-int/lit8 v1, p1, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:I

    mul-int/lit8 v0, v0, 0x3

    if-gt v1, v0, :cond_3

    .line 24313
    return v2

    .line 24314
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private A0G([SII)[S
    .locals 2

    .line 24315
    array-length v1, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    div-int/2addr v1, v0

    .line 24316
    .local v0, "currentCapacityFrames":I
    add-int/2addr p2, p3

    if-gt p2, v1, :cond_0

    .line 24317
    return-object p1

    .line 24318
    :cond_0
    mul-int/lit8 v0, v1, 0x3

    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 24319
    .local v1, "newCapacityFrames":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A0H()I
    .locals 2

    .line 24320
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    return v0
.end method

.method public final A0I()I
    .locals 2

    .line 24321
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    return v0
.end method

.method public final A0J()V
    .locals 1

    .line 24322
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    .line 24323
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24324
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    .line 24325
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:I

    .line 24326
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:I

    .line 24327
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:I

    .line 24328
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A08:I

    .line 24329
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A07:I

    .line 24330
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A02:I

    .line 24331
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:I

    .line 24332
    return-void
.end method

.method public final A0K()V
    .locals 6

    .line 24333
    iget v5, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    .line 24334
    .local v0, "remainingFrameCount":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0F:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:F

    div-float/2addr v3, v0

    .line 24335
    .local v1, "s":F
    iget v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0E:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0D:F

    mul-float/2addr v2, v0

    .line 24336
    .local v2, "r":F
    iget v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    int-to-float v1, v5

    div-float/2addr v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    add-int/2addr v4, v0

    .line 24337
    .local v3, "expectedOutputFrames":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    .line 24338
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    .line 24339
    const/4 v3, 0x0

    .local v4, "xSample":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    const/4 v2, 0x0

    if-ge v3, v1, :cond_0

    .line 24340
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v0, v5

    add-int/2addr v0, v3

    aput-short v2, v1, v0

    .line 24341
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24342
    .end local v4    # "xSample":I
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0J:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    .line 24343
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8w;->A06()V

    .line 24344
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    if-le v0, v4, :cond_1

    .line 24345
    iput v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24346
    :cond_1
    iput v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    .line 24347
    iput v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A09:I

    .line 24348
    iput v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A06:I

    .line 24349
    return-void
.end method

.method public final A0L(Ljava/nio/ShortBuffer;)V
    .locals 6

    .line 24350
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    div-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 24351
    .local v0, "framesToRead":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v0, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 24352
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    .line 24353
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v3, v2

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    invoke-static {v4, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24354
    return-void
.end method

.method public final A0M(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 24355
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    div-int/2addr v4, v0

    .line 24356
    .local v0, "framesToWrite":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v0, v4

    mul-int/lit8 v3, v0, 0x2

    .line 24357
    .local v1, "bytesToWrite":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    invoke-direct {p0, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/8w;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    .line 24358
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8w;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A0G:I

    mul-int/2addr v1, v0

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 24359
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    .line 24360
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8w;->A06()V

    .line 24361
    return-void
.end method
