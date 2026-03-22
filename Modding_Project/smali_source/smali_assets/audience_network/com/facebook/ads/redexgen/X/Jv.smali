.class public final Lcom/facebook/ads/redexgen/X/Jv;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;

.field public static final A05:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4J;

.field public final A01:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 860
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WgUeKuj9wfEgVxNwMhsYWmskS6gvsk4u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lY3t8mYoNwyGRU5cssOmtzsYdTPyfvrC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tzc0Un4Rz02llsU2wRoiLNj111WzmA0w"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wjCansXDTCdJlU5xzgIWdtLXD8W6m4ff"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dSf2E5RYsrIqqVu4QtCEIfuVexQKgaAl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hprG2SUWJwqzwErLsBPmt0UTVTrRmWBo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Dvzgny"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YcbZLjapWumuyxPaIgpkq7v611"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jv;->A07()V

    const/16 v2, 0x31

    const/16 v1, 0x13

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A05:Ljava/util/regex/Pattern;

    .line 861
    const/16 v2, 0x44

    const/16 v1, 0x20

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A04:Ljava/util/regex/Pattern;

    .line 862
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46705
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 46706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/lang/StringBuilder;

    .line 46707
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;I)C
    .locals 0

    .line 46708
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object p0

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jv;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;
    .locals 4

    .line 46709
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    .line 46710
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v3

    .line 46711
    .local v1, "limit":I
    const/4 v0, 0x0

    .line 46712
    .local v2, "cueTargetEndFound":Z
    :goto_0
    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 46713
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    .end local v0    # "position":I
    .local p0, "position":I
    aget-byte v0, v0, v1

    int-to-char v1, v0

    .line 46714
    .local v0, "c":C
    const/16 v0, 0x29

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 46715
    .end local v0    # "c":C
    :goto_1
    move v1, v2

    goto :goto_0

    .line 46716
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 46717
    .end local p0    # "position":I
    .local v0, "position":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const-string v1, "T"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 46718
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46719
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v2

    .line 46720
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v3

    .line 46721
    .local v1, "limit":I
    const/4 v4, 0x0

    .line 46722
    .local v2, "identifierEndFound":Z
    :goto_0
    if-ge v2, v3, :cond_5

    if-nez v4, :cond_5

    .line 46723
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    aget-byte v0, v0, v2

    int-to-char v1, v0

    .line 46724
    .local v3, "c":C
    const/16 v0, 0x41

    if-lt v1, v0, :cond_0

    const/16 v0, 0x5a

    if-le v1, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt v1, v0, :cond_1

    const/16 v0, 0x7a

    if-le v1, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt v1, v0, :cond_2

    const/16 v0, 0x39

    if-le v1, v0, :cond_3

    :cond_2
    const/16 v0, 0x23

    if-eq v1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_3

    const/16 v0, 0x2e

    if-eq v1, v0, :cond_3

    const/16 v0, 0x5f

    if-ne v1, v0, :cond_4

    .line 46725
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 46726
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46727
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 46728
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 46729
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 46730
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jv;->A09(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 46731
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-nez v0, :cond_0

    .line 46732
    const/4 v0, 0x0

    return-object v0

    .line 46733
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Jv;->A03(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 46734
    .local v0, "identifier":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46735
    return-object v3

    .line 46736
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7

    .line 46737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46738
    .local v0, "expressionBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 46739
    .local v1, "expressionEndFound":Z
    :goto_0
    if-nez v5, :cond_3

    .line 46740
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    .line 46741
    .local v2, "position":I
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 46742
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 46743
    const/4 v0, 0x0

    return-object v0

    .line 46744
    :cond_0
    const/16 v2, 0xfc

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v2, 0xb

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46745
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 46746
    const/4 v5, 0x1

    goto :goto_0

    .line 46747
    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46748
    .end local v2    # "position":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const-string v1, "H7IbVoVWHhMCEaN9uIz63JDuRBiIUDdu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7

    .line 46749
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jv;->A09(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 46750
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/4 v6, 0x0

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 46751
    return-object v6

    .line 46752
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v3

    .line 46753
    .local v0, "cueSelector":Ljava/lang/String;
    const/4 v2, 0x6

    const/4 v1, 0x5

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46754
    return-object v6

    .line 46755
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    .line 46756
    .local v2, "position":I
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 46757
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 46758
    return-object v6

    .line 46759
    :cond_2
    const/16 v2, 0xfb

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46760
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 46761
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46762
    :cond_3
    const/4 v5, 0x0

    .line 46763
    .local v4, "target":Ljava/lang/String;
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46764
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jv;->A02(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;

    move-result-object v5

    .line 46765
    :cond_4
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 46766
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const-string v1, "kXJ9Slail85MSzeGoJKC016PF6DECpEt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/16 v0, 0x61

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 46767
    return-object v6

    .line 46768
    :cond_5
    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xfd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jv;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x8t
        0x5at
        0x53t
        0x17t
        0x39t
        0x79t
        0x22t
        0x22t
        0x7bt
        0x6dt
        0x7dt
        0x6at
        0x60t
        0x47t
        0x5ft
        0x48t
        0x45t
        0x40t
        0x4dt
        0x9t
        0x4ft
        0x46t
        0x47t
        0x5dt
        0x4t
        0x5at
        0x40t
        0x53t
        0x4ct
        0x13t
        0x9t
        0xet
        0x5ft
        0x6dt
        0x6at
        0x7et
        0x7ct
        0x7ct
        0x4bt
        0x7bt
        0x7bt
        0x58t
        0x69t
        0x7at
        0x7bt
        0x6dt
        0x7at
        0x24t
        0x56t
        0x15t
        0x12t
        0x3ft
        0x26t
        0x20t
        0x2at
        0x2ct
        0x74t
        0x6bt
        0x61t
        0x12t
        0x17t
        0x6bt
        0x14t
        0x63t
        0x60t
        0x6bt
        0x15t
        0x14t
        0x2ct
        0x5at
        0x5at
        0x4dt
        0x48t
        0x29t
        0x42t
        0x5ft
        0x4bt
        0x2ft
        0x58t
        0x2et
        0x5ct
        0x5bt
        0x4dt
        0x29t
        0x42t
        0x5ft
        0x4bt
        0x2ft
        0x59t
        0x5bt
        0x5at
        0x2t
        0xat
        0xet
        0x17t
        0x1ft
        0xet
        0x57t
        0x5bt
        0x56t
        0x27t
        0x2at
        0x2at
        0x13t
        0x10t
        0x12t
        0x1at
        0x16t
        0x3t
        0x1et
        0x4t
        0x1ft
        0x15t
        0x5ct
        0x12t
        0x1et
        0x1dt
        0x1et
        0x3t
        0x5dt
        0x50t
        0x53t
        0x5bt
        0x34t
        0x38t
        0x3bt
        0x38t
        0x25t
        0x6t
        0xbt
        0x5t
        0xbt
        0x16t
        0x11t
        0x74t
        0x7ct
        0x33t
        0x3at
        0x3bt
        0x21t
        0x78t
        0x33t
        0x34t
        0x38t
        0x3ct
        0x39t
        0x2ct
        0x64t
        0x6dt
        0x6ct
        0x76t
        0x2ft
        0x71t
        0x6bt
        0x78t
        0x67t
        0x6ft
        0x66t
        0x67t
        0x7dt
        0x24t
        0x7at
        0x7dt
        0x70t
        0x65t
        0x6ct
        0x28t
        0x21t
        0x20t
        0x3at
        0x63t
        0x39t
        0x2bt
        0x27t
        0x29t
        0x26t
        0x3at
        0x65t
        0x78t
        0x6dt
        0x60t
        0x65t
        0x6ft
        0x12t
        0xbt
        0x18t
        0xft
        0x77t
        0x7ft
        0x7ct
        0x7bt
        0x6ct
        0x77t
        0x23t
        0x7et
        0x61t
        0x7dt
        0x67t
        0x7at
        0x67t
        0x61t
        0x60t
        0x2at
        0x3bt
        0x26t
        0x2at
        0x73t
        0x3dt
        0x31t
        0x33t
        0x3ct
        0x37t
        0x30t
        0x3bt
        0x73t
        0x2bt
        0x2et
        0x2ct
        0x37t
        0x39t
        0x36t
        0x2at
        0x45t
        0x54t
        0x49t
        0x45t
        0x1ct
        0x55t
        0x54t
        0x52t
        0x5et
        0x43t
        0x50t
        0x45t
        0x58t
        0x5et
        0x5ft
        0x75t
        0x6et
        0x64t
        0x65t
        0x72t
        0x12t
        0x9t
        0x3t
        0x2t
        0x15t
        0xbt
        0xet
        0x9t
        0x2t
        0x25t
        0x73t
    .end array-data
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 1

    .line 46769
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    move-result-object v0

    .line 46770
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46771
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 4

    .line 46772
    const/4 v0, 0x1

    .line 46773
    .local v0, "skipping":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz v0, :cond_3

    .line 46774
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jv;->A0E(Lcom/facebook/ads/redexgen/X/4J;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const-string v1, "0TKGD6osFOak97huLTwvjNDJFBkvRURl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jv;->A0D(Lcom/facebook/ads/redexgen/X/4J;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46775
    :cond_3
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Jz;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 46776
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jv;->A09(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 46777
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Jv;->A03(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 46778
    .local v0, "property":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46779
    return-void

    .line 46780
    :cond_0
    const/4 v3, 0x5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const-string v1, "0USPULEwqSqheHB8AwvifNHGUwFlc4Dk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "K61Ol0RKHiZGAookV7xLX0vZAqBJUPJk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/16 v0, 0x32

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46781
    return-void

    .line 46782
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jv;->A09(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 46783
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Jv;->A05(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 46784
    .local v2, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46785
    .end local v1
    .end local v3
    :cond_2
    return-void

    .line 46786
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v5

    .line 46787
    .local v1, "position":I
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    .line 46788
    .local v3, "token":Ljava/lang/String;
    const/16 v2, 0xb

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 46789
    :goto_0
    const/16 v2, 0x7b

    const/4 v1, 0x5

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46790
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3V;->A00(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A0C(I)Lcom/facebook/ads/redexgen/X/Jz;

    .line 46791
    :cond_4
    :goto_1
    return-void

    .line 46792
    :cond_5
    const/16 v2, 0x67

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46793
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3V;->A00(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A0B(I)Lcom/facebook/ads/redexgen/X/Jz;

    goto :goto_1

    .line 46794
    :cond_6
    const/16 v2, 0xbd

    const/16 v1, 0xd

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    .line 46795
    const/16 v2, 0xb7

    const/4 v1, 0x4

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46796
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Jz;->A0E(I)Lcom/facebook/ads/redexgen/X/Jz;

    goto :goto_1

    .line 46797
    :cond_7
    const/16 v2, 0xed

    const/4 v1, 0x5

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46798
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A0E(I)Lcom/facebook/ads/redexgen/X/Jz;

    goto :goto_1

    .line 46799
    :cond_8
    const/16 v6, 0xca

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const-string v1, "r"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x14

    const/16 v0, 0x2f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46800
    const/16 v2, 0x64

    const/4 v1, 0x3

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v2, 0x80

    const/4 v1, 0x6

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_2
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Jz;->A0H(Z)Lcom/facebook/ads/redexgen/X/Jz;

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 46801
    :cond_b
    const/16 v2, 0xde

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const-string v1, "yV6z32KBYC5kRTQJBEYXfmL3n0QpULhq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ddMdMWLPn2YWu0ZxAW3O28brDgrMgVms"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_c

    .line 46802
    const/16 v2, 0xf2

    const/16 v1, 0x9

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46803
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Jz;->A0J(Z)Lcom/facebook/ads/redexgen/X/Jz;

    goto/16 :goto_1

    .line 46804
    :cond_c
    const/16 v2, 0x88

    const/16 v1, 0xb

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46805
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Jz;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jz;

    goto/16 :goto_1

    .line 46806
    :cond_d
    const/16 v2, 0xa6

    const/16 v1, 0xb

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 46807
    const/16 v2, 0x77

    const/4 v1, 0x4

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46808
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Jz;->A0G(Z)Lcom/facebook/ads/redexgen/X/Jz;

    goto/16 :goto_1

    .line 46809
    :cond_e
    const/16 v2, 0x9c

    const/16 v1, 0xa

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 46810
    const/16 v2, 0xb1

    const/4 v1, 0x6

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46811
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Jz;->A0I(Z)Lcom/facebook/ads/redexgen/X/Jz;

    goto/16 :goto_1

    .line 46812
    :cond_f
    const/16 v2, 0x93

    const/16 v1, 0x9

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46813
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/Jv;->A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jz;)V

    goto/16 :goto_1

    .line 46814
    :cond_10
    const/16 v2, 0xfc

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 46815
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46816
    :cond_12
    return-void

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Jz;Ljava/lang/String;)V
    .locals 7

    .line 46817
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46818
    return-void

    .line 46819
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 46820
    .local v0, "voiceStartIndex":I
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eq v2, v6, :cond_2

    .line 46821
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jv;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 46822
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46823
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A0N(Ljava/lang/String;)V

    .line 46824
    :cond_1
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 46825
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    const/16 v2, 0x2f

    const/4 v1, 0x2

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 46826
    .local v4, "classDivision":[Ljava/lang/String;
    aget-object v2, v3, v5

    .line 46827
    .local v5, "tagAndIdDivision":Ljava/lang/String;
    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 46828
    .local v6, "idPrefixIndex":I
    if-eq v1, v6, :cond_4

    .line 46829
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A0M(Ljava/lang/String;)V

    .line 46830
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A0L(Ljava/lang/String;)V

    .line 46831
    :goto_0
    array-length v0, v3

    if-le v0, v4, :cond_3

    .line 46832
    array-length v0, v3

    invoke-static {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1J([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A0O([Ljava/lang/String;)V

    .line 46833
    :cond_3
    return-void

    .line 46834
    :cond_4
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Jz;->A0M(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jz;)V
    .locals 6

    .line 46835
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jv;->A04:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 46836
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v1, 0x14

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0xf

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 46838
    return-void

    .line 46839
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 46840
    .local v2, "unit":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 46841
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 46842
    :sswitch_0
    const/16 v2, 0xbb

    const/4 v1, 0x2

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x86

    const/4 v1, 0x2

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 46843
    :pswitch_0
    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jv;->A03:[Ljava/lang/String;

    const-string v1, "l0BGY6Ka6m0f3MeGwvnWH7AIpst7Q8cB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Jz;->A0D(I)Lcom/facebook/ads/redexgen/X/Jz;

    .line 46844
    goto :goto_1

    .line 46845
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46846
    :pswitch_1
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Jz;->A0D(I)Lcom/facebook/ads/redexgen/X/Jz;

    .line 46847
    goto :goto_1

    .line 46848
    :pswitch_2
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Jz;->A0D(I)Lcom/facebook/ads/redexgen/X/Jz;

    .line 46849
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A0A(F)Lcom/facebook/ads/redexgen/X/Jz;

    .line 46850
    return-void

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/4J;)Z
    .locals 7

    .line 46851
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 46852
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    .line 46853
    .local v1, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v6

    .line 46854
    .local v2, "data":[B
    add-int/lit8 v0, v3, 0x2

    if-gt v0, v1, :cond_2

    add-int/lit8 v2, v3, 0x1

    .end local v0    # "position":I
    .local v3, "position":I
    aget-byte v0, v6, v3

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    .end local v3    # "position":I
    .restart local v0    # "position":I
    aget-byte v0, v6, v2

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2

    .line 46855
    :goto_0
    add-int/lit8 v0, v4, 0x1

    if-ge v0, v1, :cond_1

    .line 46856
    add-int/lit8 v2, v4, 0x1

    .end local v0    # "position":I
    .restart local v3    # "position":I
    aget-byte v0, v6, v4

    int-to-char v0, v0

    .line 46857
    .local v0, "skippedChar":C
    if-ne v0, v3, :cond_0

    .line 46858
    aget-byte v0, v6, v2

    int-to-char v0, v0

    if-ne v0, v5, :cond_0

    .line 46859
    add-int/lit8 v1, v2, 0x1

    .line 46860
    move v4, v1

    goto :goto_0

    .line 46861
    .end local v0    # "skippedChar":C
    :cond_0
    move v4, v2

    goto :goto_0

    .line 46862
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 46863
    const/4 v0, 0x1

    return v0

    .line 46864
    .end local v3    # "position":I
    .restart local v0    # "skippedChar":C
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/4J;)Z
    .locals 1

    .line 46865
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A00(Lcom/facebook/ads/redexgen/X/4J;I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 46866
    const/4 v0, 0x0

    return v0

    .line 46867
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 46868
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final A0F(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;"
        }
    .end annotation

    .line 46869
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46870
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 46871
    .local v0, "initialInputPosition":I
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jv;->A08(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 46872
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 46873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 46874
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46875
    .local v2, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A06(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .local v4, "selector":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 46876
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xfb

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46877
    return-object v6

    .line 46878
    :cond_1
    new-instance v5, Lcom/facebook/ads/redexgen/X/Jz;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/Jz;-><init>()V

    .line 46879
    .local v3, "style":Lcom/facebook/ads/redexgen/X/Jz;
    invoke-direct {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/Jv;->A0B(Lcom/facebook/ads/redexgen/X/Jz;Ljava/lang/String;)V

    .line 46880
    const/4 v7, 0x0

    .line 46881
    .local v5, "token":Ljava/lang/String;
    const/4 v2, 0x0

    .line 46882
    .local v6, "blockEndFound":Z
    :cond_2
    :goto_1
    const/16 v3, 0xfc

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A01(III)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_5

    .line 46883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 46884
    .local p0, "position":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 46885
    if-eqz v7, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 46886
    :goto_2
    if-nez v2, :cond_2

    .line 46887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 46888
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jv;->A00:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jv;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A0A(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Jz;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 46889
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 46890
    :cond_5
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46891
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46892
    :cond_6
    return-object v6
.end method
