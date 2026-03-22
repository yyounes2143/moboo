.class public final Lcom/facebook/ads/redexgen/X/OS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/Object;


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:[J

.field public A03:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1457
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3rdfmaS4Bvs6KD5DohCaazKJ5nPjrowZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nk5cgk6zHA99knZ4VIBWP6swe9j6XVxJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SR1GrmmGZb5WiV5DUpa8V4qNmvh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hXJT0tWkN7S4w3G0a7yWDauM9ZCHUr7o"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HR23fndUBIfy3sX8NPdMDAzNZ7ikzeu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Yza27yUTeZsQZywWns2Eqk9QSJgdTaNC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "To1PPTsvrqg0vOGGncKBfzj1ovx9xtsA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AHHllHZ2j6xopeQt7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OS;->A05()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OS;->A06:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55652
    .local p0, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;-><init>(I)V

    .line 55653
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 55654
    .local v2, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55655
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Z

    .line 55656
    if-nez p1, :cond_0

    .line 55657
    sget-object v0, Lcom/facebook/ads/redexgen/X/OR;->A02:[J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    .line 55658
    sget-object v0, Lcom/facebook/ads/redexgen/X/OR;->A03:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    .line 55659
    :goto_0
    iput v2, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    .line 55660
    return-void

    .line 55661
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/OR;->A00(I)I

    move-result v1

    .line 55662
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    .line 55663
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private final A00(I)J
    .locals 2

    .line 55664
    .local p1, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Z

    if-eqz v0, :cond_0

    .line 55665
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A04()V

    .line 55666
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/OS;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/OS<",
            "TE;>;"
        }
    .end annotation

    .line 55667
    .local p0, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 55668
    .local v0, "clone":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/OS;

    move-object v1, v0

    .line 55669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    .line 55670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55671
    :catch_0
    return-object v1
.end method

.method private final A02(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 55672
    .local v3, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    .local p1, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/OR;->A03([JIJ)I

    move-result v4

    .line 55673
    .local v0, "i":I
    if-ltz v4, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const-string v1, "jXlMUCcAItIj0GcupoJ3Otj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aget-object v1, v3, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/OS;->A06:Ljava/lang/Object;

    if-ne v1, v0, :cond_2

    .line 55674
    :cond_1
    return-object p3

    .line 55675
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    aget-object v0, v0, v4

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OS;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x68

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 8

    .line 55676
    .local p0, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget v7, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    .line 55677
    .local v0, "n":I
    const/4 v6, 0x0

    .line 55678
    .local v1, "o":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    .line 55679
    .local v2, "keys":[J
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    .line 55680
    .local v3, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 55681
    aget-object v2, v4, v3

    .line 55682
    .local v5, "val":Ljava/lang/Object;
    sget-object v0, Lcom/facebook/ads/redexgen/X/OS;->A06:Ljava/lang/Object;

    if-eq v2, v0, :cond_1

    .line 55683
    if-eq v3, v6, :cond_0

    .line 55684
    aget-wide v0, v5, v3

    aput-wide v0, v5, v6

    .line 55685
    aput-object v2, v4, v6

    .line 55686
    const/4 v0, 0x0

    aput-object v0, v4, v3

    .line 55687
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 55688
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55689
    .end local v4    # "i":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Z

    .line 55690
    iput v6, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    .line 55691
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OS;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x6bt
        0x37t
        0x2bt
        0x2at
        0x30t
        0x63t
        0xet
        0x22t
        0x33t
        0x6at
        0x4t
        0x8t
        0x19t
        0x1ft
    .end array-data
.end method


# virtual methods
.method public final A06()I
    .locals 4

    .line 55692
    .local v1, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Z

    if-eqz v0, :cond_0

    .line 55693
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A04()V

    .line 55694
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const-string v1, "ypCZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3
.end method

.method public final A07(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 55695
    .local p0, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Z

    if-eqz v0, :cond_0

    .line 55696
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A04()V

    .line 55697
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A08(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 55698
    .local p0, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/OS;->A02(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A09()V
    .locals 4

    .line 55699
    .local p0, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget v3, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    .line 55700
    .local v0, "n":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    .line 55701
    .local v1, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 55702
    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 55703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55704
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    .line 55705
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Z

    .line 55706
    return-void
.end method

.method public final A0A(I)V
    .locals 2

    .line 55707
    .local p0, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v0, Lcom/facebook/ads/redexgen/X/OS;->A06:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    .line 55708
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OS;->A06:Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 55709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Z

    .line 55710
    :cond_0
    return-void
.end method

.method public final A0B(JLjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 55711
    .local v7, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/OR;->A03([JIJ)I

    move-result v4

    .line 55712
    .local v0, "i":I
    if-ltz v4, :cond_0

    .line 55713
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const-string v1, "zIN2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-object p3, v3, v4

    .line 55714
    :goto_0
    return-void

    .line 55715
    :cond_0
    not-int v3, v4

    .line 55716
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    aget-object v1, v0, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/OS;->A06:Ljava/lang/Object;

    if-ne v1, v0, :cond_1

    .line 55717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    aput-wide p1, v0, v3

    .line 55718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    aput-object p3, v0, v3

    .line 55719
    return-void

    .line 55720
    :cond_1
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const-string v1, "5FIvphvUgQVU1M732kCMD6tquLVSGC6u"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    array-length v0, v0

    if-lt v1, v0, :cond_2

    .line 55721
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A04()V

    .line 55722
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/OR;->A03([JIJ)I

    move-result v0

    not-int v3, v0

    .line 55723
    :cond_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const-string v1, "2a9UU1wdCLKEgsYJNRrqpR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const-string v1, "rLvHDd51XfoeTGgnr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    array-length v0, v0

    if-lt v4, v0, :cond_7

    .line 55724
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OR;->A00(I)I

    move-result v0

    .line 55725
    .local v1, "n":I
    new-array v5, v0, [J

    .line 55726
    .local v2, "nkeys":[J
    new-array v4, v0, [Ljava/lang/Object;

    .line 55727
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    array-length v6, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const-string v1, "L48OP70swgk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v2, 0x0

    invoke-static {v7, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55728
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55729
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    .line 55730
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    .line 55731
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_7
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    sub-int/2addr v0, v3

    if-eqz v0, :cond_8

    .line 55732
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    add-int/lit8 v1, v3, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    sub-int/2addr v0, v3

    invoke-static {v4, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55733
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    add-int/lit8 v1, v3, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    sub-int/2addr v0, v3

    invoke-static {v4, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55734
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:[J

    aput-wide p1, v0, v3

    .line 55735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:[Ljava/lang/Object;

    aput-object p3, v0, v3

    .line 55736
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    goto/16 :goto_0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 55737
    .local p0, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A01()Lcom/facebook/ads/redexgen/X/OS;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 55738
    .local p1, "this":Lcom/facebook/ads/redexgen/X/OS;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OS;->A06()I

    move-result v0

    if-gtz v0, :cond_1

    .line 55739
    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A03(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A05:[Ljava/lang/String;

    const-string v1, "Skpu9y55M8HCr5nD5qLEIrlUv7DMUr8f"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "83PSjIhGPkyHWD5a17BzKCZMIovhzHLb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 55740
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55741
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55742
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:I

    if-ge v4, v0, :cond_4

    .line 55743
    if-lez v4, :cond_2

    .line 55744
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55745
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/OS;->A00(I)J

    move-result-wide v0

    .line 55746
    .local v2, "key":J
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55747
    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55748
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/OS;->A07(I)Ljava/lang/Object;

    move-result-object v0

    .line 55749
    .local v4, "value":Ljava/lang/Object;
    if-eq v0, p0, :cond_3

    .line 55750
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55751
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55752
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 55753
    .end local v1    # "i":I
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55754
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
