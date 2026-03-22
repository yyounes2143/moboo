.class public abstract Lcom/facebook/ads/redexgen/X/Qb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QZ;,
        Lcom/facebook/ads/redexgen/X/Qa;
    }
.end annotation


# static fields
.field public static A07:[B


# instance fields
.field public A00:I

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/QO;

.field public A03:Lcom/facebook/ads/redexgen/X/6g;

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/QZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qb;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60179
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:I

    .line 60180
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    .line 60181
    return-void
.end method

.method private final A00(Landroid/view/View;)I
    .locals 1

    .line 60182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->A1B(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private final A01(I)Landroid/view/View;
    .locals 1

    .line 60183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A1o(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qb;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x56

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qb;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x4dt
        0x55t
        0x42t
        0x4ft
        0x4at
        0x47t
        0x3t
        0x57t
        0x42t
        0x51t
        0x44t
        0x46t
        0x57t
        0x3t
        0x53t
        0x4ct
        0x50t
        0x4at
        0x57t
        0x4at
        0x4ct
        0x4dt
        0x5t
        0x34t
        0x26t
        0x26t
        0x30t
        0x31t
        0x75t
        0x3at
        0x23t
        0x30t
        0x27t
        0x75t
        0x21t
        0x34t
        0x27t
        0x32t
        0x30t
        0x21t
        0x75t
        0x25t
        0x3at
        0x26t
        0x3ct
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x75t
        0x22t
        0x3dt
        0x3ct
        0x39t
        0x30t
        0x75t
        0x26t
        0x38t
        0x3at
        0x3at
        0x21t
        0x3dt
        0x75t
        0x26t
        0x36t
        0x27t
        0x3at
        0x39t
        0x39t
        0x3ct
        0x3bt
        0x32t
        0x7bt
        0x7bt
        0x4ct
        0x4at
        0x50t
        0x4at
        0x45t
        0x4ct
        0x5bt
        0x7ft
        0x40t
        0x4ct
        0x5et
    .end array-data
.end method

.method private A04(II)V
    .locals 5

    .line 60184
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 60185
    .local v0, "recyclerView":Lcom/facebook/ads/redexgen/X/6g;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A05:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    if-nez v4, :cond_1

    .line 60186
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Qb;->A09()V

    .line 60187
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A04:Z

    .line 60188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A01:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 60189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A01:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A00(Landroid/view/View;)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:I

    if-ne v1, v0, :cond_5

    .line 60190
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Qb;->A01:Landroid/view/View;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 60191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/QZ;->A05(Lcom/facebook/ads/redexgen/X/6g;)V

    .line 60192
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Qb;->A09()V

    .line 60193
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A05:Z

    if-eqz v0, :cond_3

    .line 60194
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0H(IILcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 60195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A06()Z

    move-result v1

    .line 60196
    .local v1, "hadJumpTarget":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/QZ;->A05(Lcom/facebook/ads/redexgen/X/6g;)V

    .line 60197
    if-eqz v1, :cond_3

    .line 60198
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A05:Z

    if-eqz v0, :cond_4

    .line 60199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A04:Z

    .line 60200
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/6g;->A08:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A07()V

    .line 60201
    .end local v1    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 60202
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Qb;->A09()V

    goto :goto_1

    .line 60203
    :cond_5
    const/16 v2, 0x4a

    const/16 v1, 0xc

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0x33

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A01:Landroid/view/View;

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Qb;II)V
    .locals 0

    .line 60205
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Qb;->A04(II)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 60206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 1

    .line 60207
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:I

    return v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/QO;
    .locals 1

    .line 60208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A02:Lcom/facebook/ads/redexgen/X/QO;

    return-object v0
.end method

.method public final A09()V
    .locals 2

    .line 60209
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A05:Z

    if-nez v0, :cond_0

    .line 60210
    return-void

    .line 60211
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Qb;->A0G()V

    .line 60212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qd;->A00(Lcom/facebook/ads/redexgen/X/Qd;I)I

    .line 60213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A01:Landroid/view/View;

    .line 60214
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:I

    .line 60215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A04:Z

    .line 60216
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A05:Z

    .line 60217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/QO;->A0K(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/Qb;)V

    .line 60218
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A02:Lcom/facebook/ads/redexgen/X/QO;

    .line 60219
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 60220
    return-void
.end method

.method public final A0A(I)V
    .locals 0

    .line 60221
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:I

    .line 60222
    return-void
.end method

.method public final A0B(Landroid/graphics/PointF;)V
    .locals 4

    .line 60223
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 60224
    .local v0, "magnitude":F
    iget v0, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 60225
    iget v0, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 60226
    return-void
.end method

.method public final A0C(Landroid/view/View;)V
    .locals 2

    .line 60227
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Qb;->A00(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Qb;->A07()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 60228
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A01:Landroid/view/View;

    .line 60229
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/QO;)V
    .locals 3

    .line 60230
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 60231
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Qb;->A02:Lcom/facebook/ads/redexgen/X/QO;

    .line 60232
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 60233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qd;->A00(Lcom/facebook/ads/redexgen/X/Qd;I)I

    .line 60234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A05:Z

    .line 60235
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A04:Z

    .line 60236
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Qb;->A07()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A01(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A01:Landroid/view/View;

    .line 60237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A08:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A07()V

    .line 60238
    return-void

    .line 60239
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0E()Z
    .locals 1

    .line 60240
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A04:Z

    return v0
.end method

.method public final A0F()Z
    .locals 1

    .line 60241
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A05:Z

    return v0
.end method

.method public abstract A0G()V
.end method

.method public abstract A0H(IILcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/QZ;)V
.end method

.method public abstract A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/QZ;)V
.end method
