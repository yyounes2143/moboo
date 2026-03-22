.class public final Lcom/facebook/ads/redexgen/X/FV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FT;,
        Lcom/facebook/ads/redexgen/X/FU;,
        Lcom/facebook/ads/redexgen/X/FR;,
        Lcom/facebook/ads/redexgen/X/lW;,
        Lcom/facebook/ads/redexgen/X/lX;
    }
.end annotation


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:I

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Landroid/view/Surface;

.field public A0D:Z

.field public final A0E:Lcom/facebook/ads/redexgen/X/F9;

.field public final A0F:Lcom/facebook/ads/redexgen/X/FT;

.field public final A0G:Lcom/facebook/ads/redexgen/X/FU;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 693
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "El1apek5TdjhfhN6viIbzGI1k6A8fvYa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7lO0T01iPA0M2Tn6ez9XJF6fi3WcV0bl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BUJOgokLGuaRN3Jb1lPoBsNrm7KBSu3J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mjIihJQoirK71A6rZ4qRVtTe6TTtSgwc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PHElykquIwSutGmUMi14ryiOqojKYZje"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FFUtkd6qKeeUYHXUT7DV9hX7r9PAWeGY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aVKnabS1yBALevTpM7jFXLX0kSbTApQh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pYdHEl16nY3gI4cpQf6RN4y0bom4H0uh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FV;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FV;->A06()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36167
    new-instance v0, Lcom/facebook/ads/redexgen/X/F9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/F9;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    .line 36168
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/FV;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/FT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0F:Lcom/facebook/ads/redexgen/X/FT;

    .line 36169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0F:Lcom/facebook/ads/redexgen/X/FT;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FU;->A00()Lcom/facebook/ads/redexgen/X/FU;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0G:Lcom/facebook/ads/redexgen/X/FU;

    .line 36170
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0A:J

    .line 36171
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0B:J

    .line 36172
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    .line 36173
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A01:F

    .line 36174
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A04:I

    .line 36175
    return-void

    .line 36176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(JJJ)J
    .locals 5

    .line 36177
    sub-long v2, p0, p2

    div-long/2addr v2, p4

    .line 36178
    .local v0, "vsyncCount":J
    mul-long v0, p4, v2

    add-long/2addr p2, v0

    .line 36179
    .local v2, "snappedTimeNs":J
    cmp-long v0, p0, p2

    if-gtz v0, :cond_1

    .line 36180
    sub-long v3, p2, p4

    .line 36181
    .local v4, "snappedBeforeNs":J
    .local p1, "snappedAfterNs":J
    .restart local p1    # "snappedAfterNs":J
    :goto_0
    sub-long v1, p2, p0

    .line 36182
    .local p3, "snappedAfterDiff":J
    sub-long/2addr p0, v3

    .line 36183
    .local p5, "snappedBeforeDiff":J
    cmp-long v0, v1, p0

    if-gez v0, :cond_0

    :goto_1
    return-wide p2

    :cond_0
    move-wide p2, v3

    goto :goto_1

    .line 36184
    .end local v4    # "snappedBeforeNs":J
    .end local p1    # "snappedAfterNs":J
    :cond_1
    move-wide v3, p2

    .line 36185
    .restart local v4    # "snappedBeforeNs":J
    add-long/2addr p2, p4

    goto :goto_0
.end method

.method public static A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/FT;
    .locals 4

    .line 36186
    const/4 v3, 0x0

    .line 36187
    .local v0, "displayHelper":Lcom/facebook/ads/redexgen/X/FT;
    if-eqz p0, :cond_1

    .line 36188
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 36189
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 36190
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/lW;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/lW;

    move-result-object v3

    .line 36191
    :cond_0
    if-nez v3, :cond_1

    .line 36192
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/lX;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/lX;

    move-result-object v3

    .line 36193
    :cond_1
    return-object v3
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FV;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 5

    .line 36194
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0C:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FV;->A04:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A03:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 36195
    :cond_0
    return-void

    .line 36196
    :cond_1
    iput v4, p0, Lcom/facebook/ads/redexgen/X/FV;->A03:F

    .line 36197
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FV;->A0C:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/FV;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/FV;->A0I:[Ljava/lang/String;

    const-string v1, "PQOfzOqD2ukvp3odpMH5qIU7xJUCien7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/FR;->A02(Landroid/view/Surface;F)V

    .line 36198
    return-void
.end method

.method private A04()V
    .locals 2

    .line 36199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A05:J

    .line 36200
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A06:J

    .line 36201
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A08:J

    .line 36202
    return-void
.end method

.method private A05()V
    .locals 8

    .line 36203
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0C:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 36204
    .end local v0
    .end local v1
    :cond_0
    return-void

    .line 36205
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A06()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A00()F

    move-result v4

    .line 36206
    .local v0, "candidateFrameRate":F
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A02:F

    cmpl-float v0, v4, v0

    if-nez v0, :cond_3

    .line 36207
    return-void

    .line 36208
    :cond_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    goto :goto_0

    .line 36209
    :cond_3
    const/4 v7, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    cmpl-float v0, v4, v1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A02:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 36210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    .line 36211
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A06()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    .line 36212
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A03()J

    move-result-wide v5

    const-wide v1, 0x12a05f200L

    cmp-long v0, v5, v1

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    .line 36213
    .local v1, "candidateIsHighConfidence":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 36214
    const v1, 0x3ca3d70a    # 0.02f

    .line 36215
    .local v3, "minimumChangeForUpdate":F
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A02:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 36216
    .restart local v1    # "candidateIsHighConfidence":Z
    :goto_3
    if-eqz v7, :cond_4

    .line 36217
    iput v4, p0, Lcom/facebook/ads/redexgen/X/FV;->A02:F

    .line 36218
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/FV;->A09(Z)V

    .line 36219
    :cond_4
    return-void

    .line 36220
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 36221
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    .line 36222
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 36223
    .end local v1    # "candidateIsHighConfidence":Z
    :cond_8
    cmpl-float v0, v4, v1

    if-eqz v0, :cond_9

    .line 36224
    const/4 v7, 0x1

    .restart local v1    # "candidateIsHighConfidence":Z
    goto :goto_3

    .line 36225
    .end local v1    # "candidateIsHighConfidence":Z
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    .line 36226
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A01()I

    move-result v0

    if-lt v0, v2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FV;->A0H:[B

    return-void

    :array_0
    .array-data 1
        -0x3et
        -0x25t
        -0x32t
        -0x31t
        -0x27t
        -0x2et
        -0x73t
        -0x1ft
        -0x24t
        -0x73t
        -0x22t
        -0x1et
        -0x2et
        -0x21t
        -0x1at
        -0x73t
        -0x2ft
        -0x2at
        -0x20t
        -0x23t
        -0x27t
        -0x32t
        -0x1at
        -0x73t
        -0x21t
        -0x2et
        -0x2dt
        -0x21t
        -0x2et
        -0x20t
        -0x2bt
        -0x73t
        -0x21t
        -0x32t
        -0x1ft
        -0x2et
        -0x79t
        -0x66t
        -0x6bt
        -0x6at
        -0x60t
        0x77t
        -0x5dt
        -0x6et
        -0x62t
        -0x6at
        -0x7dt
        -0x6at
        -0x63t
        -0x6at
        -0x6et
        -0x5ct
        -0x6at
        0x79t
        -0x6at
        -0x63t
        -0x5ft
        -0x6at
        -0x5dt
    .end array-data
.end method

.method private A07(Landroid/view/Display;)V
    .locals 4

    .line 36227
    if-eqz p1, :cond_0

    .line 36228
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    .line 36229
    .local v0, "defaultDisplayRefreshRate":D
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0A:J

    .line 36230
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FV;->A0A:J

    const-wide/16 v0, 0x50

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/FV;->A0B:J

    .line 36231
    .end local v0    # "defaultDisplayRefreshRate":D
    :goto_0
    return-void

    .line 36232
    :cond_0
    const/16 v2, 0x24

    const/16 v1, 0x17

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FV;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 36233
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0A:J

    .line 36234
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0B:J

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/FV;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FV;->A07(Landroid/view/Display;)V

    return-void
.end method

.method private A09(Z)V
    .locals 3

    .line 36235
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0C:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FV;->A04:I

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_1

    .line 36236
    .end local v0
    :cond_0
    return-void

    .line 36237
    :cond_1
    const/4 v1, 0x0

    .line 36238
    .local v0, "surfacePlaybackFrameRate":F
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0D:Z

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/facebook/ads/redexgen/X/FV;->A02:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_2

    .line 36239
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FV;->A02:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A01:F

    mul-float/2addr v1, v0

    .line 36240
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A03:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 36241
    return-void

    .line 36242
    :cond_3
    iput v1, p0, Lcom/facebook/ads/redexgen/X/FV;->A03:F

    .line 36243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0C:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/FR;->A02(Landroid/view/Surface;F)V

    .line 36244
    return-void
.end method

.method public static A0A(JJ)Z
    .locals 1

    .line 36245
    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    const-wide/32 p0, 0x1312d00

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0B(J)J
    .locals 14

    .line 36246
    .local v0, "adjustedReleaseTimeNs":J
    move-wide v8, p1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/FV;->A06:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A02()J

    move-result-wide v6

    .line 36248
    .local v2, "frameDurationNs":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FV;->A07:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/FV;->A05:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A06:J

    sub-long/2addr v4, v0

    mul-long/2addr v4, v6

    long-to-float v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A01:F

    div-float/2addr v1, v0

    float-to-long v0, v1

    add-long/2addr v2, v0

    .line 36249
    .local v4, "candidateAdjustedReleaseTimeNs":J
    invoke-static {v8, v9, v2, v3}, Lcom/facebook/ads/redexgen/X/FV;->A0A(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36250
    move-wide v8, v2

    .line 36251
    .end local v2    # "frameDurationNs":J
    .end local v4    # "candidateAdjustedReleaseTimeNs":J
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A05:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A08:J

    .line 36252
    iput-wide v8, p0, Lcom/facebook/ads/redexgen/X/FV;->A09:J

    .line 36253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0G:Lcom/facebook/ads/redexgen/X/FU;

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/FV;->A0A:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 36254
    .end local v2
    .end local v4
    :cond_1
    return-wide v8

    .line 36255
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FV;->A04()V

    goto :goto_0

    .line 36256
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0G:Lcom/facebook/ads/redexgen/X/FU;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/FU;->A04:J

    .line 36257
    .local v2, "sampledVsyncTimeNs":J
    cmp-long v0, v10, v1

    if-nez v0, :cond_4

    .line 36258
    return-wide v8

    .line 36259
    :cond_4
    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/FV;->A0A:J

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/FV;->A00(JJJ)J

    move-result-wide v2

    .line 36260
    .local v4, "snappedTimeNs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0B:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final A0C()V
    .locals 0

    .line 36261
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FV;->A04()V

    .line 36262
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 36263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0D:Z

    .line 36264
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FV;->A04()V

    .line 36265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0F:Lcom/facebook/ads/redexgen/X/FT;

    if-eqz v0, :cond_0

    .line 36266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0G:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FU;->A06()V

    .line 36267
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FV;->A0F:Lcom/facebook/ads/redexgen/X/FT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/lY;-><init>(Lcom/facebook/ads/redexgen/X/FV;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FT;->AGn(Lcom/facebook/ads/redexgen/X/FS;)V

    .line 36268
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FV;->A09(Z)V

    .line 36269
    return-void
.end method

.method public final A0E()V
    .locals 1

    .line 36270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0D:Z

    .line 36271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0F:Lcom/facebook/ads/redexgen/X/FT;

    if-eqz v0, :cond_0

    .line 36272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0F:Lcom/facebook/ads/redexgen/X/FT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FT;->AJl()V

    .line 36273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0G:Lcom/facebook/ads/redexgen/X/FU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FU;->A07()V

    .line 36274
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FV;->A03()V

    .line 36275
    return-void
.end method

.method public final A0F(F)V
    .locals 1

    .line 36276
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FV;->A00:F

    .line 36277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A04()V

    .line 36278
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FV;->A05()V

    .line 36279
    return-void
.end method

.method public final A0G(J)V
    .locals 5

    .line 36280
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/FV;->A08:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 36281
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A08:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A06:J

    .line 36282
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A09:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FV;->A07:J

    .line 36283
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FV;->A05:J

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/FV;->A05:J

    .line 36284
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FV;->A0E:Lcom/facebook/ads/redexgen/X/F9;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/F9;->A05(J)V

    .line 36285
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FV;->A05()V

    .line 36286
    return-void
.end method
