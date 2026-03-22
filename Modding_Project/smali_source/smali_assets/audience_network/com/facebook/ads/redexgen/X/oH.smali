.class public final Lcom/facebook/ads/redexgen/X/oH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# static fields
.field public static A05:[B

.field public static final A06:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/oH;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Ljava/lang/String;

.field public final A04:[Lcom/facebook/ads/redexgen/X/or;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3262
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oH;->A05()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oH;->A07:Ljava/lang/String;

    .line 3263
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oH;->A08:Ljava/lang/String;

    .line 3264
    new-instance v0, Lcom/facebook/ads/redexgen/X/oI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oI;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/oH;->A06:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/or;)V
    .locals 3

    .line 101553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101554
    array-length v0, p2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 101555
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oH;->A03:Ljava/lang/String;

    .line 101556
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    .line 101557
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    .line 101558
    aget-object v0, p2, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2h;->A01(Ljava/lang/String;)I

    move-result v1

    .line 101559
    .local v0, "type":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 101560
    aget-object v0, p2, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0S:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2h;->A01(Ljava/lang/String;)I

    move-result v1

    .line 101561
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/oH;->A02:I

    .line 101562
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oH;->A04()V

    .line 101563
    return-void

    .line 101564
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/or;)V
    .locals 3

    .line 101565
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/oH;-><init>(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/or;)V

    .line 101566
    return-void
.end method

.method public static A00(I)I
    .locals 0

    .line 101567
    or-int/lit16 p0, p0, 0x4000

    return p0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/oH;
    .locals 5

    .line 101568
    sget-object v0, Lcom/facebook/ads/redexgen/X/oH;->A07:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101569
    .local v0, "formatBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v1, :cond_0

    .line 101570
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v4

    .line 101571
    .local v1, "formats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    :goto_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/oH;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101572
    .local v2, "id":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/redexgen/X/or;

    new-instance v0, Lcom/facebook/ads/redexgen/X/oH;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/oH;-><init>(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/or;)V

    return-object v0

    .line 101573
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/or;->A0b:Lcom/facebook/ads/redexgen/X/1R;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3S;->A01(Lcom/facebook/ads/redexgen/X/1R;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v4

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oH;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 101574
    if-eqz p0, :cond_0

    const/16 v2, 0x60

    const/4 v1, 0x3

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private A04()V
    .locals 6

    .line 101575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0V:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oH;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101576
    .local v0, "language":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oH;->A00(I)I

    move-result v1

    .line 101577
    .local v2, "roleFlags":I
    const/4 v5, 0x1

    .local v3, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 101578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0V:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oH;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v3

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/or;->A0V:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v5

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/or;->A0V:Ljava/lang/String;

    const/16 v2, 0x4d

    const/16 v1, 0x9

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3, v5}, Lcom/facebook/ads/redexgen/X/oH;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 101580
    return-void

    .line 101581
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oH;->A00(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 101582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    .line 101583
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    .line 101584
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    .line 101585
    const/16 v2, 0x56

    const/16 v1, 0xa

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3, v5}, Lcom/facebook/ads/redexgen/X/oH;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 101586
    return-void

    .line 101587
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 101588
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oH;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x1ct
        0x10t
        0x12t
        0x1dt
        0x16t
        0x11t
        0x1at
        0x1bt
        0x5ft
        0x16t
        0x11t
        0x5ft
        0x10t
        0x11t
        0x1at
        0x5ft
        0x2bt
        0xdt
        0x1et
        0x1ct
        0x14t
        0x38t
        0xdt
        0x10t
        0xat
        0xft
        0x45t
        0x5ft
        0x58t
        0x64t
        0x63t
        0x6bt
        0x37t
        0x31t
        0x22t
        0x20t
        0x28t
        0x63t
        0x70t
        0x77t
        0x7ft
        0x23t
        0x25t
        0x36t
        0x34t
        0x3ct
        0x77t
        0x67t
        0x7et
        0x77t
        0x36t
        0x39t
        0x33t
        0x77t
        0x70t
        0x3et
        0x6at
        0x47t
        0x48t
        0x48t
        0x4bt
        0x5ct
        0x4bt
        0x40t
        0x5at
        0xet
        0x16t
        0x30t
        0x23t
        0x21t
        0x29t
        0x5t
        0x30t
        0x2dt
        0x37t
        0x32t
        0x32t
        0x3ft
        0x30t
        0x39t
        0x2bt
        0x3ft
        0x39t
        0x3bt
        0x2dt
        0x28t
        0x35t
        0x36t
        0x3ft
        0x7at
        0x3ct
        0x36t
        0x3bt
        0x3dt
        0x29t
        0x3dt
        0x26t
        0x2ct
    .end array-data
.end method

.method public static A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 101589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0xa

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0x11

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x9

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x38

    const/4 v1, 0x1

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x43

    const/16 v1, 0xa

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101590
    return-void
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/or;)I
    .locals 2

    .line 101591
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 101592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 101593
    return v1

    .line 101594
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101595
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final A08(I)Lcom/facebook/ads/redexgen/X/or;
    .locals 1

    .line 101596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 101597
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 101598
    return v3

    .line 101599
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 101600
    .end local v2
    :cond_1
    return v2

    .line 101601
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/oH;

    .line 101602
    .local v2, "other":Lcom/facebook/ads/redexgen/X/oH;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oH;->A03:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oH;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 101603
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A00:I

    if-nez v0, :cond_0

    .line 101604
    const/16 v0, 0x11

    .line 101605
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A03:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 101606
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A04:[Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 101607
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v1, p0, Lcom/facebook/ads/redexgen/X/oH;->A00:I

    .line 101608
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oH;->A00:I

    return v0
.end method
