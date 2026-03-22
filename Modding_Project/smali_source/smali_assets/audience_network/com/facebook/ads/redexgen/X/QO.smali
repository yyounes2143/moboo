.class public abstract Lcom/facebook/ads/redexgen/X/QO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/facebook/ads/redexgen/X/QM;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Pm;

.field public A02:Lcom/facebook/ads/redexgen/X/Qb;

.field public A03:Lcom/facebook/ads/redexgen/X/6g;

.field public A04:Lcom/facebook/ads/redexgen/X/Ql;

.field public A05:Lcom/facebook/ads/redexgen/X/Ql;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/Qj;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Qj;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1520
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xyZ8yvYzp3wrHAf7Yx6bEToOMuLBTkeJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zRc0P2oS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sxpemPSbJ0zjH5L170Fpc8WIJnMfTOYM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JLvxwq6R3Maitb0M5MelMbaPMbiMlz5H"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qno0WD9sdyP92Tf9SwtsGsNlEh6m7cws"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "isTf1gingqqcw8OSNjwv80foOygzMJYI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cYtNYfyLYrQzxoivZChv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OeXF3cqFYKXlQ2ABbzPAkdUOYZHirWRh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QO;->A0A()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59164
    new-instance v0, Lcom/facebook/ads/redexgen/X/g6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/g6;-><init>(Lcom/facebook/ads/redexgen/X/QO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0G:Lcom/facebook/ads/redexgen/X/Qj;

    .line 59165
    new-instance v0, Lcom/facebook/ads/redexgen/X/g5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/g5;-><init>(Lcom/facebook/ads/redexgen/X/QO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0H:Lcom/facebook/ads/redexgen/X/Qj;

    .line 59166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A0G:Lcom/facebook/ads/redexgen/X/Qj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ql;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ql;-><init>(Lcom/facebook/ads/redexgen/X/Qj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A04:Lcom/facebook/ads/redexgen/X/Ql;

    .line 59167
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A0H:Lcom/facebook/ads/redexgen/X/Qj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ql;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ql;-><init>(Lcom/facebook/ads/redexgen/X/Qj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A05:Lcom/facebook/ads/redexgen/X/Ql;

    .line 59168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A09:Z

    .line 59169
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A07:Z

    .line 59170
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A06:Z

    .line 59171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0F:Z

    .line 59172
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0E:Z

    return-void
.end method

.method public static A02(III)I
    .locals 4

    .line 59173
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 59174
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 59175
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 59176
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 59177
    :sswitch_0
    return p0

    .line 59178
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "W1fJ2ceK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A03(IIIIZ)I
    .locals 4

    .line 59179
    const/4 v0, 0x0

    sub-int/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 59180
    .local v0, "size":I
    const/4 v3, 0x0

    .line 59181
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 59182
    .local v2, "resultMode":I
    const/4 v1, -0x2

    const/4 v0, -0x1

    if-eqz p4, :cond_3

    .line 59183
    if-ltz p3, :cond_1

    .line 59184
    move v3, p3

    .line 59185
    const/high16 v2, 0x40000000    # 2.0f

    .line 59186
    :cond_0
    :goto_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 59187
    :cond_1
    if-ne p3, v0, :cond_2

    .line 59188
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 59189
    :sswitch_0
    const/4 v3, 0x0

    .line 59190
    const/4 v2, 0x0

    goto :goto_0

    .line 59191
    :sswitch_1
    move v3, p0

    .line 59192
    move v2, p1

    .line 59193
    goto :goto_0

    .line 59194
    :cond_2
    if-ne p3, v1, :cond_0

    .line 59195
    const/4 v3, 0x0

    .line 59196
    const/4 v2, 0x0

    goto :goto_0

    .line 59197
    :cond_3
    if-ltz p3, :cond_4

    .line 59198
    move v3, p3

    .line 59199
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 59200
    :cond_4
    if-ne p3, v0, :cond_5

    .line 59201
    move v3, p0

    .line 59202
    move v2, p1

    goto :goto_0

    .line 59203
    :cond_5
    if-ne p3, v1, :cond_0

    .line 59204
    move v3, p0

    .line 59205
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_6

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_7

    .line 59206
    :cond_6
    const/high16 v2, -0x80000000

    goto :goto_0

    .line 59207
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private final A04(Landroid/view/View;)I
    .locals 1

    .line 59208
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QP;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private final A05(Landroid/view/View;)I
    .locals 1

    .line 59209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QP;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private final A06(Landroid/view/View;)I
    .locals 1

    .line 59210
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QP;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private final A07(Landroid/view/View;)I
    .locals 1

    .line 59211
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QP;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 59212
    const/4 v0, 0x0

    return v0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QO;->A0I:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        -0x7at
        -0x7at
        -0x79t
        -0x7at
        0x42t
        0x78t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x76t
        -0x7dt
        -0x6bt
        0x42t
        0x74t
        -0x79t
        -0x7bt
        -0x65t
        -0x7bt
        -0x72t
        -0x79t
        -0x6ct
        0x78t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x7dt
        -0x6bt
        0x42t
        -0x6et
        -0x7dt
        -0x6ct
        -0x79t
        -0x70t
        -0x6at
        0x42t
        -0x7ct
        -0x69t
        -0x6at
        0x42t
        -0x68t
        -0x75t
        -0x79t
        -0x67t
        0x42t
        -0x75t
        -0x6bt
        0x42t
        -0x70t
        -0x6ft
        -0x6at
        0x42t
        -0x7dt
        0x42t
        -0x6ct
        -0x79t
        -0x7dt
        -0x72t
        0x42t
        -0x7bt
        -0x76t
        -0x75t
        -0x72t
        -0x7at
        0x50t
        0x42t
        0x77t
        -0x70t
        -0x78t
        -0x75t
        -0x72t
        -0x6at
        -0x79t
        -0x6ct
        -0x79t
        -0x7at
        0x42t
        -0x75t
        -0x70t
        -0x7at
        -0x79t
        -0x66t
        0x5ct
        -0x58t
        -0x3at
        -0x2dt
        -0x2dt
        -0x2ct
        -0x27t
        -0x7bt
        -0x2et
        -0x2ct
        -0x25t
        -0x36t
        -0x7bt
        -0x3at
        -0x7bt
        -0x38t
        -0x33t
        -0x32t
        -0x2ft
        -0x37t
        -0x7bt
        -0x35t
        -0x29t
        -0x2ct
        -0x2et
        -0x7bt
        -0x2dt
        -0x2ct
        -0x2dt
        -0x6et
        -0x36t
        -0x23t
        -0x32t
        -0x28t
        -0x27t
        -0x32t
        -0x2dt
        -0x34t
        -0x7bt
        -0x32t
        -0x2dt
        -0x37t
        -0x36t
        -0x23t
        -0x61t
    .end array-data
.end method

.method private final A0B(I)V
    .locals 1

    .line 59213
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0E(ILandroid/view/View;)V

    .line 59214
    return-void
.end method

.method private final A0C(I)V
    .locals 1

    .line 59215
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 59216
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 59217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A0D(I)V

    .line 59218
    :cond_0
    return-void
.end method

.method private final A0D(II)V
    .locals 4

    .line 59219
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 59220
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 59221
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0B(I)V

    .line 59222
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/QO;->A0G(Landroid/view/View;I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59223
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "fev5lwy8caKDFGGcVLFTWETO5UF90dOq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EDoCIrgXqzBYQTf4WlngJinORtzJmrfl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 59224
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x2c

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 59225
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0E(ILandroid/view/View;)V
    .locals 1

    .line 59226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A0C(I)V

    .line 59227
    return-void
.end method

.method private final A0F(Landroid/view/View;)V
    .locals 1

    .line 59228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A0F(Landroid/view/View;)V

    .line 59229
    return-void
.end method

.method private final A0G(Landroid/view/View;I)V
    .locals 1

    .line 59230
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0H(Landroid/view/View;ILcom/facebook/ads/redexgen/X/QP;)V

    .line 59231
    return-void
.end method

.method private final A0H(Landroid/view/View;ILcom/facebook/ads/redexgen/X/QP;)V
    .locals 3

    .line 59232
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v2

    .line 59233
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0t:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Qo;->A09(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 59235
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 59236
    return-void

    .line 59237
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0t:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Qo;->A0A(Lcom/facebook/ads/redexgen/X/Qg;)V

    goto :goto_0
.end method

.method private A0I(Landroid/view/View;IZ)V
    .locals 8

    .line 59238
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v5

    .line 59239
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    if-nez p3, :cond_0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59240
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0t:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qo;->A09(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 59241
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/QP;

    .line 59242
    .local v1, "lp":Lcom/facebook/ads/redexgen/X/QP;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qg;->A0m()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qg;->A0h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59243
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qg;->A0h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59244
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qg;->A0Y()V

    .line 59245
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, v3}, Lcom/facebook/ads/redexgen/X/Pm;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 59246
    :cond_2
    :goto_2
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/QP;->A02:Z

    if-eqz v0, :cond_9

    .line 59247
    iget-object v5, v5, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59248
    :cond_3
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Qg;->A0U()V

    goto :goto_1

    .line 59249
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "uqKRxBtg59XPGVJDkfwEUsBOgdJYSppJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v7, v6, :cond_6

    .line 59250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A07(Landroid/view/View;)I

    move-result v2

    .line 59251
    .local v2, "currentIndex":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    .line 59252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A05()I

    move-result p2

    .line 59253
    :cond_5
    if-eq v2, v1, :cond_a

    .line 59254
    if-eq v2, p2, :cond_2

    .line 59255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/QO;

    invoke-direct {v0, v2, p2}, Lcom/facebook/ads/redexgen/X/QO;->A0D(II)V

    goto :goto_2

    .line 59256
    .end local v2    # "currentIndex":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/Pm;->A0I(Landroid/view/View;IZ)V

    .line 59257
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/QP;->A01:Z

    .line 59258
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "si9YLNjLFs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Qb;->A0C(Landroid/view/View;)V

    goto/16 :goto_2

    .line 59260
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0t:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qo;->A0A(Lcom/facebook/ads/redexgen/X/Qg;)V

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "bg493IDm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 59261
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/QP;->A02:Z

    .line 59262
    :cond_9
    return-void

    .line 59263
    .restart local v2    # "currentIndex":I
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x55

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 59264
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0J(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 59265
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/6g;->A0o(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 59266
    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/Qb;)V
    .locals 0

    .line 59267
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0O(Lcom/facebook/ads/redexgen/X/Qb;)V

    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/QW;ILandroid/view/View;)V
    .locals 5

    .line 59268
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v3

    .line 59269
    .local v0, "viewHolder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59270
    return-void

    .line 59271
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "wfzQKDpvqCerNRZHLtQvgaB031c5C1YU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KgFz3HBRwd8cETJWtdM1PF8pjKUjBKYl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    .line 59272
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0M()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59273
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/QO;->A0C(I)V

    .line 59274
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/QW;->A0X(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 59275
    :goto_0
    return-void

    .line 59276
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/QO;->A0B(I)V

    .line 59277
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/QW;->A0S(Landroid/view/View;)V

    .line 59278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0t:Lcom/facebook/ads/redexgen/X/Qo;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Qo;->A0C(Lcom/facebook/ads/redexgen/X/Qg;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0M(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 59279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 59280
    :cond_0
    return-void

    .line 59281
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/6g;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 59282
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 59283
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 59284
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/6g;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59285
    :cond_2
    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 59286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    if-eqz v0, :cond_3

    .line 59287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 59288
    :cond_3
    return-void

    .line 59289
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final A0N(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/PS;)V
    .locals 5

    .line 59290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;->canScrollVertically(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;->canScrollHorizontally(I)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "KDPDh71uiY9dw6lSrmH00w2HuhKAvOYl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "F84YzGx02ov8ufnexIEGkhiaGhnINbYS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    .line 59291
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/PS;->A0N(I)V

    .line 59292
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/PS;->A0R(Z)V

    .line 59293
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6g;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "8s5rDkFpP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6g;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59294
    :cond_2
    :goto_0
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/PS;->A0N(I)V

    .line 59295
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/PS;->A0R(Z)V

    .line 59296
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A0t(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v3

    .line 59297
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A0s(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v2

    .line 59298
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A0R(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Z

    move-result v1

    .line 59299
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A08(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    .line 59300
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PP;->A00(IIZI)Lcom/facebook/ads/redexgen/X/PP;

    move-result-object v0

    .line 59301
    .local v0, "collectionInfo":Lcom/facebook/ads/redexgen/X/PP;
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/PS;->A0P(Ljava/lang/Object;)V

    .line 59302
    return-void

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "3WqpoC752q4h2Wya5fT3BPHdY3ZkhgYP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "HauWKBzmz4VUJQZuXSWVI1MWGOc6zBYt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6g;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/Qb;)V
    .locals 1

    .line 59303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    if-ne v0, p1, :cond_0

    .line 59304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    .line 59305
    :cond_0
    return-void
.end method

.method private final A0P()Z
    .locals 1

    .line 59306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0Q(III)Z
    .locals 4

    .line 59307
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 59308
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 59309
    .local v1, "specSize":I
    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 59310
    return v1

    .line 59311
    :cond_0
    const/4 v0, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 59312
    return v1

    .line 59313
    :sswitch_0
    if-ne v2, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 59314
    :sswitch_1
    return v0

    .line 59315
    :sswitch_2
    if-lt v2, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private final A0R(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Z
    .locals 1

    .line 59316
    const/4 v0, 0x0

    return v0
.end method

.method private final A0S(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;ILandroid/os/Bundle;)Z
    .locals 6

    .line 59317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 59318
    return v5

    .line 59319
    :cond_0
    const/4 v2, 0x0

    .local v0, "vScroll":I
    const/4 v1, 0x0

    .line 59320
    .local v2, "hScroll":I
    const/4 v3, 0x1

    sparse-switch p3, :sswitch_data_0

    .line 59321
    :cond_1
    :goto_0
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 59322
    return v5

    .line 59323
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/6g;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59324
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    sub-int/2addr v2, v0

    neg-int v2, v2

    .line 59325
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/6g;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59326
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v1, v1

    goto :goto_0

    .line 59327
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6g;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59328
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    sub-int/2addr v2, v0

    .line 59329
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6g;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59330
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_0

    .line 59331
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/6g;->scrollBy(II)V

    .line 59332
    return v3

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method private final A0T(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 59333
    const/4 v0, 0x0

    return v0
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/6g;II)Z
    .locals 8

    .line 59334
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 59335
    .local v0, "focusedChild":Landroid/view/View;
    const/4 v6, 0x0

    if-nez v7, :cond_0

    .line 59336
    return v6

    .line 59337
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v5

    .line 59338
    .local v2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v4

    .line 59339
    .local v3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    sub-int/2addr v3, v0

    .line 59340
    .local v4, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    sub-int/2addr v2, v0

    .line 59341
    .local v5, "parentBottom":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0p:Landroid/graphics/Rect;

    .line 59342
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v7, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0J(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 59343
    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-ge v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    if-le v0, v5, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    if-gt v0, v4, :cond_2

    .line 59344
    :cond_1
    return v6

    .line 59345
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private final A0V(Lcom/facebook/ads/redexgen/X/6g;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59346
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->A1s()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0W(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 14

    .line 59347
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 59348
    .local v1, "out":[I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v13

    .line 59349
    .local v2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v12

    .line 59350
    .local v3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    sub-int/2addr v11, v0

    .line 59351
    .local v4, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    sub-int/2addr v10, v0

    .line 59352
    .local v5, "parentBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    move-object/from16 v1, p2

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr v9, v0

    .line 59353
    .local v6, "childLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v8, v0

    .line 59354
    .local v7, "childTop":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v9

    .line 59355
    .local v8, "childRight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v8

    .line 59356
    .local v9, "childBottom":I
    sub-int v0, v9, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 59357
    .local v10, "offScreenLeft":I
    sub-int v0, v8, v12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 59358
    .local v12, "offScreenTop":I
    sub-int v0, v6, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 59359
    .local v13, "offScreenRight":I
    sub-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 59360
    .local p0, "offScreenBottom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0c()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 59361
    if-eqz v3, :cond_1

    .line 59362
    .restart local p1    # null:Landroid/view/View;
    :goto_0
    if-eqz v4, :cond_0

    .line 59363
    .local v11, "dy":I
    :goto_1
    const/4 v0, 0x0

    aput v3, v7, v0

    .line 59364
    const/4 v0, 0x1

    aput v4, v7, v0

    .line 59365
    return-object v7

    .line 59366
    :cond_0
    sub-int/2addr v8, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 59367
    :cond_1
    sub-int/2addr v6, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 59368
    .end local p1    # null:Landroid/view/View;
    :cond_2
    if-eqz v5, :cond_3

    move v3, v5

    goto :goto_0

    .line 59369
    :cond_3
    sub-int/2addr v9, v13

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public final A0X()I
    .locals 1

    .line 59370
    const/4 v0, -0x1

    return v0
.end method

.method public final A0Y()I
    .locals 1

    .line 59371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A05()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Z()I
    .locals 1

    .line 59372
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0A:I

    return v0
.end method

.method public final A0a()I
    .locals 1

    .line 59373
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0B:I

    return v0
.end method

.method public final A0b()I
    .locals 4

    .line 59374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "NhHtbEzlhB3n2IblVpNcmlHtdyAdrFMd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6g;->getAdapter()Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v0

    .line 59375
    .local v0, "a":Lcom/facebook/ads/redexgen/X/QC;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 59376
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0c()I
    .locals 1

    .line 59377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P3;->A01(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0d()I
    .locals 1

    .line 59378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0e()I
    .locals 1

    .line 59379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P3;->A03(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0f()I
    .locals 1

    .line 59380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()I
    .locals 1

    .line 59381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()I
    .locals 1

    .line 59382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()I
    .locals 1

    .line 59383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0j()I
    .locals 1

    .line 59384
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0C:I

    return v0
.end method

.method public final A0k()I
    .locals 1

    .line 59385
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0D:I

    return v0
.end method

.method public final A0l(Landroid/view/View;)I
    .locals 2

    .line 59386
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A04(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0m(Landroid/view/View;)I
    .locals 2

    .line 59387
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A05(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0n(Landroid/view/View;)I
    .locals 3

    .line 59388
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/QP;->A03:Landroid/graphics/Rect;

    .line 59389
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0o(Landroid/view/View;)I
    .locals 3

    .line 59390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/QP;->A03:Landroid/graphics/Rect;

    .line 59391
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0p(Landroid/view/View;)I
    .locals 2

    .line 59392
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A06(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0q(Landroid/view/View;)I
    .locals 2

    .line 59393
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A07(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0r(Landroid/view/View;)I
    .locals 1

    .line 59394
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A00()I

    move-result v0

    return v0
.end method

.method public A0s(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 2

    .line 59395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    if-nez v0, :cond_1

    .line 59396
    :cond_0
    return v1

    .line 59397
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A22()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v1

    :cond_2
    return v1
.end method

.method public A0t(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 2

    .line 59398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    if-nez v0, :cond_1

    .line 59399
    :cond_0
    return v1

    .line 59400
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A23()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v1

    :cond_2
    return v1
.end method

.method public final A0u()Landroid/view/View;
    .locals 3

    .line 59401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 59402
    return-object v2

    .line 59403
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 59404
    .local v0, "focused":Landroid/view/View;
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pm;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59405
    :cond_1
    return-object v2

    .line 59406
    :cond_2
    return-object v1
.end method

.method public final A0v(I)Landroid/view/View;
    .locals 1

    .line 59407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A09(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0w(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 59408
    const/4 v0, 0x0

    return-object v0
.end method

.method public A0x(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/ads/redexgen/X/QP;
    .locals 1

    .line 59409
    new-instance v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/QP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public A0y(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/ads/redexgen/X/QP;
    .locals 1

    .line 59410
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/QP;

    if-eqz v0, :cond_0

    .line 59411
    check-cast p1, Lcom/facebook/ads/redexgen/X/QP;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;-><init>(Lcom/facebook/ads/redexgen/X/QP;)V

    return-object v0

    .line 59412
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 59413
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 59414
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final A0z()V
    .locals 1

    .line 59415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    if-eqz v0, :cond_0

    .line 59416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A09()V

    .line 59417
    :cond_0
    return-void
.end method

.method public final A10()V
    .locals 1

    .line 59418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    .line 59419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->requestLayout()V

    .line 59420
    :cond_0
    return-void
.end method

.method public final A11(I)V
    .locals 1

    .line 59421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    .line 59422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->A1V(I)V

    .line 59423
    :cond_0
    return-void
.end method

.method public final A12(I)V
    .locals 1

    .line 59424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    .line 59425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->A1W(I)V

    .line 59426
    :cond_0
    return-void
.end method

.method public final A13(II)V
    .locals 2

    .line 59427
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0C:I

    .line 59428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0D:I

    .line 59429
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0D:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/6g;->A1B:Z

    if-nez v0, :cond_0

    .line 59430
    iput v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A0C:I

    .line 59431
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0A:I

    .line 59432
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0B:I

    .line 59433
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0B:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/6g;->A1B:Z

    if-nez v0, :cond_1

    .line 59434
    iput v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A0A:I

    .line 59435
    :cond_1
    return-void
.end method

.method public final A14(II)V
    .locals 9

    .line 59436
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v8

    .line 59437
    .local v0, "count":I
    if-nez v8, :cond_1

    .line 59438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6g;->A1c(II)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59439
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "XwkGDyjU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 59440
    :cond_1
    const v6, 0x7fffffff

    .line 59441
    .local v1, "minX":I
    const v5, 0x7fffffff

    .line 59442
    .local v2, "minY":I
    const/high16 v4, -0x80000000

    .line 59443
    .local v3, "maxX":I
    const/high16 v3, -0x80000000

    .line 59444
    .local v4, "maxY":I
    const/4 v7, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 59445
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v2

    .line 59446
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0p:Landroid/graphics/Rect;

    .line 59447
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0J(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 59448
    iget v0, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v6, :cond_2

    .line 59449
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 59450
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_3

    .line 59451
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 59452
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v5, :cond_4

    .line 59453
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 59454
    :cond_4
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_5

    .line 59455
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 59456
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59457
    .end local v5    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0p:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 59458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A17(Landroid/graphics/Rect;II)V

    .line 59459
    return-void
.end method

.method public final A15(II)V
    .locals 1

    .line 59460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6g;->A0v(Lcom/facebook/ads/redexgen/X/6g;II)V

    .line 59461
    return-void
.end method

.method public final A16(ILcom/facebook/ads/redexgen/X/QW;)V
    .locals 1

    .line 59462
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 59463
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0C(I)V

    .line 59464
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/QW;->A0T(Landroid/view/View;)V

    .line 59465
    return-void
.end method

.method public A17(Landroid/graphics/Rect;II)V
    .locals 3

    .line 59466
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    add-int/2addr v1, v0

    .line 59467
    .local v0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    add-int/2addr v2, v0

    .line 59468
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0e()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A02(III)I

    move-result v1

    .line 59469
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0d()I

    move-result v0

    invoke-static {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A02(III)I

    move-result v0

    .line 59470
    .local p0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A15(II)V

    .line 59471
    return-void
.end method

.method public final A18(Landroid/view/View;)V
    .locals 1

    .line 59472
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1A(Landroid/view/View;I)V

    .line 59473
    return-void
.end method

.method public final A19(Landroid/view/View;)V
    .locals 1

    .line 59474
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1B(Landroid/view/View;I)V

    .line 59475
    return-void
.end method

.method public final A1A(Landroid/view/View;I)V
    .locals 1

    .line 59476
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0I(Landroid/view/View;IZ)V

    .line 59477
    return-void
.end method

.method public final A1B(Landroid/view/View;I)V
    .locals 1

    .line 59478
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0I(Landroid/view/View;IZ)V

    .line 59479
    return-void
.end method

.method public final A1C(Landroid/view/View;II)V
    .locals 7

    .line 59480
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/QP;

    .line 59481
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->A1D(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 59482
    .local v1, "insets":Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 59483
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 59484
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0k()I

    move-result v3

    .line 59485
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/QP;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/QP;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/QP;->width:I

    .line 59486
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A22()Z

    move-result v0

    .line 59487
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A03(IIIIZ)I

    move-result v5

    .line 59488
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0a()I

    move-result v3

    .line 59489
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/QP;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/QP;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p3

    iget v1, v6, Lcom/facebook/ads/redexgen/X/QP;->height:I

    .line 59490
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A23()Z

    move-result v0

    .line 59491
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A03(IIIIZ)I

    move-result v1

    .line 59492
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v5, v1, v6}, Lcom/facebook/ads/redexgen/X/QO;->A1Y(Landroid/view/View;IILcom/facebook/ads/redexgen/X/QP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59493
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 59494
    :cond_0
    return-void
.end method

.method public final A1D(Landroid/view/View;IIII)V
    .locals 5

    .line 59495
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/QP;

    .line 59496
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/QP;->A03:Landroid/graphics/Rect;

    .line 59497
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/QP;->leftMargin:I

    add-int/2addr v2, v0

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v0, v4, Lcom/facebook/ads/redexgen/X/QP;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/QP;->rightMargin:I

    sub-int/2addr p4, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/QP;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, v2, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 59498
    return-void
.end method

.method public final A1E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PS;)V
    .locals 5

    .line 59499
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v4

    .line 59500
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "uJMRqraa"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A0K(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0r:Lcom/facebook/ads/redexgen/X/QW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A1M(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Landroid/view/View;Lcom/facebook/ads/redexgen/X/PS;)V

    .line 59502
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 0

    .line 59503
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0F(Landroid/view/View;)V

    .line 59504
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/QW;->A0T(Landroid/view/View;)V

    .line 59505
    return-void
.end method

.method public final A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 8

    .line 59506
    if-eqz p2, :cond_0

    .line 59507
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/QP;->A03:Landroid/graphics/Rect;

    .line 59508
    .local v0, "insets":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->left:I

    neg-int v4, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    neg-int v3, v0

    .line 59509
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v0, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 59510
    invoke-virtual {p3, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 59511
    .end local v0    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59512
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "0LJ8GvUexdNG1AG11Ii0XfPOyD5lBlCr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "NwYNIOYDHD2wNBVOHxFlNgVOQtOI4Jp5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 59513
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 59514
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/6g;->A0q:Landroid/graphics/RectF;

    .line 59516
    .local v1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v7, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 59517
    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 59518
    iget v0, v7, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 59519
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 59520
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    float-to-double v1, v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0xf

    if-eq v3, v0, :cond_3

    .line 59521
    sget-object v6, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v3, "AxZOVdXnwoPa2hByvRQIxFpOdsFmpigD"

    const/4 v0, 0x0

    aput-object v3, v6, v0

    const-string v3, "eNbgBcin3tlOsNhY3b3xdMmObUbY1NrP"

    const/4 v0, 0x7

    aput-object v3, v6, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    .line 59522
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 59523
    invoke-virtual {p3, v5, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 59524
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v1    # "tempRectF":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 59525
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/PS;)V
    .locals 2

    .line 59526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0r:Lcom/facebook/ads/redexgen/X/QW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0N(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/PS;)V

    .line 59527
    return-void
.end method

.method public final A1I(Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 6

    .line 59528
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A0E()I

    move-result v5

    .line 59529
    .local v0, "scrapCount":I
    add-int/lit8 v4, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 59530
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/QW;->A0F(I)Landroid/view/View;

    move-result-object v3

    .line 59531
    .local v2, "scrap":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v2

    .line 59532
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59533
    .end local v2    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/Qg;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 59534
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0d(Z)V

    .line 59535
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/6g;->removeDetachedView(Landroid/view/View;Z)V

    .line 59537
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A05:Lcom/facebook/ads/redexgen/X/QK;

    if-eqz v0, :cond_2

    .line 59538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A05:Lcom/facebook/ads/redexgen/X/QK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QK;->A0L(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 59539
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0d(Z)V

    .line 59540
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/QW;->A0R(Landroid/view/View;)V

    goto :goto_1

    .line 59541
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A0L()V

    .line 59542
    if-lez v5, :cond_4

    .line 59543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->invalidate()V

    .line 59544
    :cond_4
    return-void
.end method

.method public final A1J(Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 2

    .line 59545
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    .line 59546
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 59547
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 59548
    .local p0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0L(Lcom/facebook/ads/redexgen/X/QW;ILandroid/view/View;)V

    .line 59549
    .end local p0    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59550
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final A1K(Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 2

    .line 59551
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 59552
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 59553
    .local v1, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59554
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/QO;->A16(ILcom/facebook/ads/redexgen/X/QW;)V

    .line 59555
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59556
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public A1L(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;II)V
    .locals 1

    .line 59557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/6g;->A1c(II)V

    .line 59558
    return-void
.end method

.method public A1M(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Landroid/view/View;Lcom/facebook/ads/redexgen/X/PS;)V
    .locals 7

    .line 59559
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A23()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v1

    .line 59560
    .local v2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A22()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v3

    .line 59561
    .local v4, "columnIndexGuess":I
    :goto_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/PQ;->A00(IIIIZZ)Lcom/facebook/ads/redexgen/X/PQ;

    move-result-object v0

    .line 59562
    .local v0, "itemInfo":Lcom/facebook/ads/redexgen/X/PQ;
    invoke-virtual {p4, v0}, Lcom/facebook/ads/redexgen/X/PS;->A0Q(Ljava/lang/Object;)V

    .line 59563
    return-void

    .line 59564
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 59565
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/Qb;)V
    .locals 4

    .line 59566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    .line 59567
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59568
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "jdqDA9lv9LoPYcF6nkiuFYbBQf2p3Jna"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qb;->A09()V

    .line 59569
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    .line 59570
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Qb;->A0D(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/QO;)V

    .line 59571
    return-void

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "CfhUeeIqQu1BzHSX9SgRD70OnW7YoiZA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "rBLjTriW7e2LTgD4knhZEnVORkWVeovT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qb;->A09()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1O(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 0

    .line 59572
    return-void
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 1

    .line 59573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A07:Z

    .line 59574
    return-void
.end method

.method public final A1Q(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 3

    .line 59575
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->getWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 59576
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 59577
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A13(II)V

    .line 59578
    return-void
.end method

.method public final A1R(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 1

    .line 59579
    if-nez p1, :cond_0

    .line 59580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 59581
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    .line 59582
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0C:I

    .line 59583
    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0A:I

    .line 59584
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0D:I

    .line 59585
    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0B:I

    .line 59586
    return-void

    .line 59587
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    .line 59588
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6g;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Lcom/facebook/ads/redexgen/X/Pm;

    .line 59589
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0C:I

    .line 59590
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0A:I

    goto :goto_0
.end method

.method public final A1S(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 1

    .line 59591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A07:Z

    .line 59592
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A1y(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/QW;)V

    .line 59593
    return-void
.end method

.method public final A1T(Z)V
    .locals 0

    .line 59594
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A06:Z

    .line 59595
    return-void
.end method

.method public final A1U()Z
    .locals 4

    .line 59596
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v3

    .line 59597
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 59598
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    .line 59599
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 59600
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v0, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_0

    .line 59601
    const/4 v0, 0x1

    return v0

    .line 59602
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59603
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "WAOKNqtGQ8ovYE750tJA7vys4k4qcWl2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1V()Z
    .locals 1

    .line 59604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1W()Z
    .locals 1

    .line 59605
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A0E:Z

    return v0
.end method

.method public final A1X(ILandroid/os/Bundle;)Z
    .locals 2

    .line 59606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0r:Lcom/facebook/ads/redexgen/X/QW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A0S(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final A1Y(Landroid/view/View;IILcom/facebook/ads/redexgen/X/QP;)Z
    .locals 4

    .line 59607
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/QO;->A0F:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/QO;->A0J:[Ljava/lang/String;

    const-string v1, "WuiXnf3Uz62WBJXd3E4QIRzbwyGUV3fL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 59608
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/QP;->width:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0Q(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59609
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/QP;->height:I

    invoke-static {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0Q(III)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 59610
    :goto_0
    return v0

    .line 59611
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1Z(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 59612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0r:Lcom/facebook/ads/redexgen/X/QW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    move-object v0, p0

    move-object v5, p3

    move v4, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/QO;->A0T(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public A1a(Lcom/facebook/ads/redexgen/X/QP;)Z
    .locals 1

    .line 59613
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1b(Lcom/facebook/ads/redexgen/X/6g;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 59614
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/QO;->A1c(Lcom/facebook/ads/redexgen/X/6g;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public final A1c(Lcom/facebook/ads/redexgen/X/6g;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .line 59615
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/QO;->A0W(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 59616
    .local v0, "scrollAmount":[I
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 59617
    .local v2, "dx":I
    const/4 v2, 0x1

    aget v1, v0, v2

    .line 59618
    .local v4, "dy":I
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0U(Lcom/facebook/ads/redexgen/X/6g;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59619
    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_3

    .line 59620
    :cond_1
    if-eqz p4, :cond_2

    .line 59621
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/6g;->scrollBy(II)V

    .line 59622
    :goto_0
    return v2

    .line 59623
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/6g;->A1e(II)V

    goto :goto_0

    .line 59624
    :cond_3
    return v4
.end method

.method public final A1d(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/Qd;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 59625
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/QO;->A0V(Lcom/facebook/ads/redexgen/X/6g;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final A1e(Lcom/facebook/ads/redexgen/X/6g;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6g;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 59626
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract A1f(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I
.end method

.method public abstract A1g(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I
.end method

.method public abstract A1h(Lcom/facebook/ads/redexgen/X/Qd;)I
.end method

.method public abstract A1i(Lcom/facebook/ads/redexgen/X/Qd;)I
.end method

.method public abstract A1j(Lcom/facebook/ads/redexgen/X/Qd;)I
.end method

.method public abstract A1k(Lcom/facebook/ads/redexgen/X/Qd;)I
.end method

.method public abstract A1l(Lcom/facebook/ads/redexgen/X/Qd;)I
.end method

.method public abstract A1m(Lcom/facebook/ads/redexgen/X/Qd;)I
.end method

.method public abstract A1n()Landroid/os/Parcelable;
.end method

.method public A1o(I)Landroid/view/View;
    .locals 5

    .line 59627
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v4

    .line 59628
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 59629
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v2

    .line 59630
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v1

    .line 59631
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    if-nez v1, :cond_1

    .line 59632
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59633
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    .line 59634
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59635
    :cond_2
    return-object v2

    .line 59636
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A1p(Landroid/view/View;ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;
.end method

.method public abstract A1q()Lcom/facebook/ads/redexgen/X/QP;
.end method

.method public abstract A1r(I)V
.end method

.method public abstract A1s(IILcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/QM;)V
.end method

.method public abstract A1t(ILcom/facebook/ads/redexgen/X/QM;)V
.end method

.method public abstract A1u(Landroid/os/Parcelable;)V
.end method

.method public A1v(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 59637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0r:Lcom/facebook/ads/redexgen/X/QW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0M(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 59638
    return-void
.end method

.method public abstract A1w(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)V
.end method

.method public A1x(Lcom/facebook/ads/redexgen/X/Qd;)V
    .locals 0

    .line 59639
    return-void
.end method

.method public A1y(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 0

    .line 59640
    return-void
.end method

.method public abstract A1z(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/Qd;I)V
.end method

.method public A20(Ljava/lang/String;)V
    .locals 1

    .line 59641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    .line 59642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->A1n(Ljava/lang/String;)V

    .line 59643
    :cond_0
    return-void
.end method

.method public abstract A21()Z
.end method

.method public abstract A22()Z
.end method

.method public abstract A23()Z
.end method

.method public abstract A24()Z
.end method
