.class public final Lcom/facebook/ads/redexgen/X/9q;
.super Lcom/facebook/ads/redexgen/X/oU;
.source ""


# static fields
.field public static A01:[B

.field public static final A02:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/9q;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 576
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9q;->A03()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9q;->A03:Ljava/lang/String;

    .line 577
    new-instance v0, Lcom/facebook/ads/redexgen/X/of;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/of;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9q;->A02:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28642
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oU;-><init>()V

    .line 28643
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:F

    .line 28644
    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    .line 28645
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oU;-><init>()V

    .line 28646
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x28

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9q;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/3M;->A09(ZLjava/lang/Object;)V

    .line 28647
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:F

    .line 28648
    return-void

    .line 28649
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9q;
    .locals 2

    .line 28650
    sget-object v1, Lcom/facebook/ads/redexgen/X/oU;->A02:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 28651
    sget-object v1, Lcom/facebook/ads/redexgen/X/9q;->A03:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 28652
    .local v0, "percent":F
    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9q;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9q;-><init>(F)V

    goto :goto_1

    .line 28653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9q;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9q;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9q;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9q;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4b

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

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9q;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x16t
        0x3t
        0x14t
        0x5t
        0x3t
        0x8t
        0x12t
        0x46t
        0xbt
        0x13t
        0x15t
        0x12t
        0x46t
        0x4t
        0x3t
        0x46t
        0xft
        0x8t
        0x46t
        0x12t
        0xet
        0x3t
        0x46t
        0x14t
        0x7t
        0x8t
        0x1t
        0x3t
        0x46t
        0x9t
        0x0t
        0x46t
        0x3dt
        0x56t
        0x4at
        0x46t
        0x57t
        0x56t
        0x56t
        0x3bt
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 28654
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9q;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 28655
    return v2

    .line 28656
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:F

    check-cast p1, Lcom/facebook/ads/redexgen/X/9q;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9q;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 28657
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BX;->A00([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
