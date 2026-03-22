.class public abstract Lcom/facebook/ads/redexgen/X/Q8;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:I

.field public final A01:Landroid/graphics/Rect;

.field public final A02:Lcom/facebook/ads/redexgen/X/QO;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Q8;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QO;)V
    .locals 1

    .line 59035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59036
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:I

    .line 59037
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    .line 59038
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    .line 59039
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/gC;)V
    .locals 0

    .line 59040
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Q8;-><init>(Lcom/facebook/ads/redexgen/X/QO;)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gC;
    .locals 1

    .line 59041
    new-instance v0, Lcom/facebook/ads/redexgen/X/gC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gC;-><init>(Lcom/facebook/ads/redexgen/X/QO;)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gB;
    .locals 1

    .line 59042
    new-instance v0, Lcom/facebook/ads/redexgen/X/gB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gB;-><init>(Lcom/facebook/ads/redexgen/X/QO;)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/QO;I)Lcom/facebook/ads/redexgen/X/Q8;
    .locals 1

    .line 59043
    packed-switch p1, :pswitch_data_0

    .line 59044
    const/4 p1, 0x0

    const/16 p0, 0x13

    const/16 v0, 0x13

    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/Q8;->A03(III)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59045
    :pswitch_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Q8;->A01(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gB;

    move-result-object v0

    return-object v0

    .line 59046
    :pswitch_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Q8;->A00(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gC;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q8;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Q8;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        -0x1t
        0x7t
        -0xet
        -0x3t
        -0x6t
        -0xbt
        -0x4ft
        0x0t
        0x3t
        -0x6t
        -0xat
        -0x1t
        0x5t
        -0xet
        0x5t
        -0x6t
        0x0t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public final A05()I
    .locals 2

    .line 59047
    const/high16 v1, -0x80000000

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Q8;->A0B()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public abstract A06()I
.end method

.method public abstract A07()I
.end method

.method public abstract A08()I
.end method

.method public abstract A09()I
.end method

.method public abstract A0A()I
.end method

.method public abstract A0B()I
.end method

.method public abstract A0C(Landroid/view/View;)I
.end method

.method public abstract A0D(Landroid/view/View;)I
.end method

.method public abstract A0E(Landroid/view/View;)I
.end method

.method public abstract A0F(Landroid/view/View;)I
.end method

.method public abstract A0G(Landroid/view/View;)I
.end method

.method public abstract A0H(Landroid/view/View;)I
.end method

.method public final A0I()V
    .locals 1

    .line 59048
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Q8;->A0B()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:I

    .line 59049
    return-void
.end method

.method public abstract A0J(I)V
.end method
