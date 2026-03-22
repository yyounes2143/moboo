.class public final Lcom/facebook/ads/redexgen/X/Jr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle$RubyType;,
        Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle$OptionalBoolean;,
        Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle$FontSizeUnit;,
        Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:Landroid/text/Layout$Alignment;

.field public A0D:Landroid/text/Layout$Alignment;

.field public A0E:Lcom/facebook/ads/redexgen/X/Jg;

.field public A0F:Ljava/lang/String;

.field public A0G:Ljava/lang/String;

.field public A0H:Z

.field public A0I:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 858
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Usxox1Jpg4zI1D26A46628IJoKVIfDOb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DJj4Y7Lf5wmbgFbmipnyENDrbENW0zBu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xAirbBVx6sN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JUHzrsF6PskbrsOcxUQeRZ6EJgAR84BH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "g21uR390"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sct5cBRRGNi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fSzYgZjiZ3zjw2rk03FKz0970uetzuqd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YzsQQs1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jr;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46511
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A07:I

    .line 46512
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0B:I

    .line 46513
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A03:I

    .line 46514
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A06:I

    .line 46515
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A05:I

    .line 46516
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A09:I

    .line 46517
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A08:I

    .line 46518
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0A:I

    .line 46519
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A01:F

    .line 46520
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Jr;Z)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 5

    .line 46521
    if-eqz p1, :cond_10

    .line 46522
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0I:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0I:Z

    if-eqz v0, :cond_0

    .line 46523
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A04:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0H(I)Lcom/facebook/ads/redexgen/X/Jr;

    .line 46524
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A03:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 46525
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A03:I

    .line 46526
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A06:I

    if-ne v0, v3, :cond_2

    .line 46527
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A06:I

    .line 46528
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0F:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0F:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const-string v1, "cxifAUO6W4n"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Va8L5s638mc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 46529
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0F:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0F:Ljava/lang/String;

    .line 46530
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A07:I

    if-ne v0, v3, :cond_5

    .line 46531
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A07:I

    .line 46532
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0B:I

    if-ne v0, v3, :cond_6

    .line 46533
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0B:I

    .line 46534
    :cond_6
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Jr;->A08:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const-string v1, "rpCcf5jyKzMEHl3XckJI6ROuZzizfKVN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_8

    .line 46535
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A08:I

    .line 46536
    :cond_8
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0D:Landroid/text/Layout$Alignment;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const-string v1, "iHkaK3PGLb6DAQNakyilLZ3b8fweVD8f"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v4, :cond_9

    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0D:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_9

    .line 46537
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0D:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0D:Landroid/text/Layout$Alignment;

    .line 46538
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0C:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0C:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_a

    .line 46539
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0C:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0C:Landroid/text/Layout$Alignment;

    .line 46540
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0A:I

    if-ne v0, v3, :cond_b

    .line 46541
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0A:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0A:I

    .line 46542
    :cond_b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A05:I

    if-ne v0, v3, :cond_c

    .line 46543
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A05:I

    .line 46544
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A00:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:F

    .line 46545
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0E:Lcom/facebook/ads/redexgen/X/Jg;

    if-nez v0, :cond_d

    .line 46546
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0E:Lcom/facebook/ads/redexgen/X/Jg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0E:Lcom/facebook/ads/redexgen/X/Jg;

    .line 46547
    :cond_d
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A01:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v1, v0

    if-nez v0, :cond_e

    .line 46548
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A01:F

    .line 46549
    :cond_e
    if-eqz p2, :cond_f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0H:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A0H:Z

    if-eqz v0, :cond_f

    .line 46550
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A02:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0G(I)Lcom/facebook/ads/redexgen/X/Jr;

    .line 46551
    :cond_f
    if-eqz p2, :cond_10

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A09:I

    if-ne v0, v3, :cond_10

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A09:I

    if-eq v0, v3, :cond_10

    .line 46552
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Jr;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A09:I

    .line 46553
    :cond_10
    return-object p0

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const-string v1, "IvRWfCdmbtpyZ5Utg7SC4PH3AC5nND0h"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v4, :cond_9

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jr;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A0J:[B

    return-void

    :array_0
    .array-data 1
        -0x18t
        0x7t
        0x9t
        0x11t
        0xdt
        0x18t
        0x15t
        0x1bt
        0x14t
        0xat
        -0x3at
        0x9t
        0x15t
        0x12t
        0x15t
        0x18t
        -0x3at
        0xet
        0x7t
        0x19t
        -0x3at
        0x14t
        0x15t
        0x1at
        -0x3at
        0x8t
        0xbt
        0xbt
        0x14t
        -0x3at
        0xat
        0xbt
        0xct
        0xft
        0x14t
        0xbt
        0xat
        -0x2ct
        -0x1bt
        0xet
        0xdt
        0x13t
        -0x41t
        0x2t
        0xet
        0xbt
        0xet
        0x11t
        -0x41t
        0x7t
        0x0t
        0x12t
        -0x41t
        0xdt
        0xet
        0x13t
        -0x41t
        0x1t
        0x4t
        0x4t
        0xdt
        -0x41t
        0x3t
        0x4t
        0x5t
        0x8t
        0xdt
        0x4t
        0x3t
        -0x33t
    .end array-data
.end method


# virtual methods
.method public final A03()F
    .locals 1

    .line 46554
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:F

    return v0
.end method

.method public final A04()F
    .locals 1

    .line 46555
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A01:F

    return v0
.end method

.method public final A05()I
    .locals 3

    .line 46556
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0H:Z

    if-eqz v0, :cond_0

    .line 46557
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A02:I

    return v0

    .line 46558
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()I
    .locals 3

    .line 46559
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0I:Z

    if-eqz v0, :cond_0

    .line 46560
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A04:I

    return v0

    .line 46561
    :cond_0
    const/16 v2, 0x26

    const/16 v1, 0x20

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A07()I
    .locals 1

    .line 46562
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A05:I

    return v0
.end method

.method public final A08()I
    .locals 1

    .line 46563
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A08:I

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 46564
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A09:I

    return v0
.end method

.method public final A0A()I
    .locals 4

    .line 46565
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A03:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A06:I

    if-ne v0, v1, :cond_0

    .line 46566
    return v1

    .line 46567
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A03:I

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A06:I

    if-ne v0, v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    or-int/2addr v3, v2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A0K:[Ljava/lang/String;

    const-string v1, "pc7acbLDMjB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "xuQHQFUerHu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final A0B()Landroid/text/Layout$Alignment;
    .locals 1

    .line 46568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0C:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final A0C()Landroid/text/Layout$Alignment;
    .locals 1

    .line 46569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0D:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/Jg;
    .locals 1

    .line 46570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0E:Lcom/facebook/ads/redexgen/X/Jg;

    return-object v0
.end method

.method public final A0E(F)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46571
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:F

    .line 46572
    return-object p0
.end method

.method public final A0F(F)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46573
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A01:F

    .line 46574
    return-object p0
.end method

.method public final A0G(I)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 1

    .line 46575
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A02:I

    .line 46576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0H:Z

    .line 46577
    return-object p0
.end method

.method public final A0H(I)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 1

    .line 46578
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A04:I

    .line 46579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0I:Z

    .line 46580
    return-object p0
.end method

.method public final A0I(I)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46581
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A05:I

    .line 46582
    return-object p0
.end method

.method public final A0J(I)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46583
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A08:I

    .line 46584
    return-object p0
.end method

.method public final A0K(I)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46585
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A09:I

    .line 46586
    return-object p0
.end method

.method public final A0L(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46587
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0C:Landroid/text/Layout$Alignment;

    .line 46588
    return-object p0
.end method

.method public final A0M(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46589
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0D:Landroid/text/Layout$Alignment;

    .line 46590
    return-object p0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/Jg;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46591
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0E:Lcom/facebook/ads/redexgen/X/Jg;

    .line 46592
    return-object p0
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 1

    .line 46593
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A00(Lcom/facebook/ads/redexgen/X/Jr;Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    return-object v0
.end method

.method public final A0P(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46594
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0F:Ljava/lang/String;

    .line 46595
    return-object p0
.end method

.method public final A0Q(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46596
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0G:Ljava/lang/String;

    .line 46597
    return-object p0
.end method

.method public final A0R(Z)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46598
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A03:I

    .line 46599
    return-object p0
.end method

.method public final A0S(Z)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46600
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A06:I

    .line 46601
    return-object p0
.end method

.method public final A0T(Z)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46602
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A07:I

    .line 46603
    return-object p0
.end method

.method public final A0U(Z)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46604
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0A:I

    .line 46605
    return-object p0
.end method

.method public final A0V(Z)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 46606
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0B:I

    .line 46607
    return-object p0
.end method

.method public final A0W()Ljava/lang/String;
    .locals 1

    .line 46608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0F:Ljava/lang/String;

    return-object v0
.end method

.method public final A0X()Ljava/lang/String;
    .locals 1

    .line 46609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0G:Ljava/lang/String;

    return-object v0
.end method

.method public final A0Y()Z
    .locals 2

    .line 46610
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0A:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Z()Z
    .locals 1

    .line 46611
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0H:Z

    return v0
.end method

.method public final A0a()Z
    .locals 1

    .line 46612
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0I:Z

    return v0
.end method

.method public final A0b()Z
    .locals 2

    .line 46613
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A07:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0c()Z
    .locals 2

    .line 46614
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A0B:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
