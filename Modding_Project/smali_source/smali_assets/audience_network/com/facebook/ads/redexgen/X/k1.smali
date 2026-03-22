.class public final Lcom/facebook/ads/redexgen/X/k1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/4J;

.field public final A02:Lcom/facebook/ads/redexgen/X/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3036
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "omX6mlrNbYq0LGa8KWDQoDOxuY4Jaqsm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5vCbKZ7gcP1deFubK5J3aMrnVGjcBeMu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ozZJ4UCdXiLAsxGuZMu8vrfsyQyOy2Qr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "457YRIf4cJgVa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "48ELt3GeP9QgscGCGAyy0GBjQnf8y1ot"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nP9Rki4V9hDzJun2MpMPW2v7tMuO22BO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "splStgYzXsMDywgFYcc1GmuRRae3j1Zq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jQwA1XKYR4HrKvDtyQbVDHffCNmVjAZf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/k1;->A03:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/k2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/k2;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/k1;->A04:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91683
    new-instance v0, Lcom/facebook/ads/redexgen/X/k0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/k0;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A02:Lcom/facebook/ads/redexgen/X/k0;

    .line 91684
    const/16 v1, 0xae2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A01:Lcom/facebook/ads/redexgen/X/4J;

    .line 91685
    return-void
.end method

.method public static synthetic A00()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 91686
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/k1;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/k1;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 4

    .line 91687
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/k1;->A02:Lcom/facebook/ads/redexgen/X/k0;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/k0;->A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 91688
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 91689
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 91690
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/16 v0, 0xae2

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/lN;->read([BII)I

    move-result v1

    .line 91692
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 91693
    return v0

    .line 91694
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 91696
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Z

    if-nez v0, :cond_1

    .line 91697
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/k1;->A02:Lcom/facebook/ads/redexgen/X/k0;

    const-wide/16 v1, 0x0

    const/4 v0, 0x4

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/k0;->AG6(JI)V

    .line 91698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Z

    .line 91699
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k1;->A02:Lcom/facebook/ads/redexgen/X/k0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/k0;->A52(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 91700
    return v4
.end method

.method public final AGr()V
    .locals 0

    .line 91701
    return-void
.end method

.method public final AIM(JJ)V
    .locals 1

    .line 91702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A00:Z

    .line 91703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k1;->A02:Lcom/facebook/ads/redexgen/X/k0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/k0;->AIL()V

    .line 91704
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91705
    const/16 v6, 0xa

    new-instance v5, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 91706
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    const/4 v4, 0x0

    .line 91707
    .local v2, "startPosition":I
    :goto_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v6}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 91708
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91709
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v1

    const v0, 0x494433

    if-eq v1, v0, :cond_4

    .line 91710
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91711
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 91712
    move v6, v4

    .line 91713
    .local v1, "headerPosition":I
    const/4 v2, 0x0

    .line 91714
    .local v3, "validFramesCount":I
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x6

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 91715
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91716
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v1

    .line 91717
    .local v5, "syncBytes":I
    const/16 v0, 0xb77

    if-eq v1, v0, :cond_1

    .line 91718
    const/4 v2, 0x0

    .line 91719
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91720
    add-int/lit8 v6, v6, 0x1

    sub-int v1, v6, v4

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 91721
    return v3

    .line 91722
    :cond_0
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    goto :goto_1

    .line 91723
    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x4

    if-lt v2, v0, :cond_2

    .line 91724
    const/4 v0, 0x1

    return v0

    .line 91725
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GF;->A05([B)I

    move-result v1

    .line 91726
    .local v6, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 91727
    return v3

    .line 91728
    :cond_3
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    goto :goto_1

    .line 91729
    .end local v1    # "headerPosition":I
    .end local v3    # "validFramesCount":I
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 91730
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0H()I

    move-result v3

    .line 91731
    .local v3, "length":I
    add-int/lit8 v0, v3, 0xa

    add-int/2addr v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/k1;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 91732
    sget-object v2, Lcom/facebook/ads/redexgen/X/k1;->A03:[Ljava/lang/String;

    const-string v1, "eBRvK0YAHsHMNfInXbOwvDfd4dSG53RM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "womotRNroMOUij9xAXX8qTzQtzDZBBtc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 91733
    .end local v3    # "length":I
    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
