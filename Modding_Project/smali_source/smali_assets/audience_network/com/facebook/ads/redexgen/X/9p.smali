.class public final Lcom/facebook/ads/redexgen/X/9p;
.super Lcom/facebook/ads/redexgen/X/oU;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/9p;",
            ">;"
        }
    .end annotation
.end field

.field public static final A05:Ljava/lang/String;

.field public static final A06:Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 573
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ze0y2PQb31vngbi38k5mfZCC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jLmR5cr6Hwks3p4PsKfIxGU921nipvRD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Pp3qhBBlWU8bouyoK5QiOWA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ww40dK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "331B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UQZ2ltoBgBcCSgXWY09raSZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "C"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9p;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9p;->A03()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9p;->A05:Ljava/lang/String;

    .line 574
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9p;->A06:Ljava/lang/String;

    .line 575
    new-instance v0, Lcom/facebook/ads/redexgen/X/oT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oT;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9p;->A04:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 28615
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oU;-><init>()V

    .line 28616
    if-lez p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/3M;->A09(ZLjava/lang/Object;)V

    .line 28617
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9p;->A01:I

    .line 28618
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9p;->A00:F

    .line 28619
    return-void

    .line 28620
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 5

    .line 28621
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oU;-><init>()V

    .line 28622
    const/4 v3, 0x1

    if-lez p1, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/3M;->A09(ZLjava/lang/Object;)V

    .line 28623
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    int-to-float v0, p1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    :goto_1
    const/16 v2, 0x23

    const/16 v1, 0x28

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/3M;->A09(ZLjava/lang/Object;)V

    .line 28624
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9p;->A01:I

    .line 28625
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9p;->A00:F

    .line 28626
    return-void

    .line 28627
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 28628
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9p;
    .locals 3

    .line 28629
    sget-object v1, Lcom/facebook/ads/redexgen/X/oU;->A02:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 28630
    sget-object v1, Lcom/facebook/ads/redexgen/X/9p;->A05:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 28631
    .local v0, "maxStars":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/9p;->A06:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 28632
    .local v1, "starRating":F
    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 28633
    new-instance v0, Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/9p;-><init>(I)V

    .line 28634
    :goto_1
    return-object v0

    .line 28635
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/9p;-><init>(IF)V

    goto :goto_1

    .line 28636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9p;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9p;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9p;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9p;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9p;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9p;->A03:[Ljava/lang/String;

    const-string v1, "26ayShss4mhG1SZ6mAOlhU0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xd

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x4b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9p;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x6ct
        -0x78t
        -0x61t
        0x7at
        -0x65t
        -0x78t
        -0x67t
        -0x66t
        0x47t
        -0x6ct
        -0x64t
        -0x66t
        -0x65t
        0x47t
        -0x77t
        -0x74t
        0x47t
        -0x78t
        0x47t
        -0x69t
        -0x6at
        -0x66t
        -0x70t
        -0x65t
        -0x70t
        -0x63t
        -0x74t
        0x47t
        -0x70t
        -0x6bt
        -0x65t
        -0x74t
        -0x72t
        -0x74t
        -0x67t
        -0x44t
        -0x43t
        -0x56t
        -0x45t
        -0x65t
        -0x56t
        -0x43t
        -0x4et
        -0x49t
        -0x50t
        0x69t
        -0x4et
        -0x44t
        0x69t
        -0x48t
        -0x42t
        -0x43t
        0x69t
        -0x48t
        -0x51t
        0x69t
        -0x45t
        -0x56t
        -0x49t
        -0x50t
        -0x52t
        0x69t
        -0x5ct
        0x79t
        0x75t
        0x69t
        -0x4at
        -0x56t
        -0x3ft
        -0x64t
        -0x43t
        -0x56t
        -0x45t
        -0x44t
        -0x5at
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 28637
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9p;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 28638
    return v2

    .line 28639
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/9p;

    .line 28640
    .local v0, "other":Lcom/facebook/ads/redexgen/X/9p;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9p;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9p;->A01:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9p;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9p;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 28641
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9p;->A01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9p;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v1, v0

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BX;->A00([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
