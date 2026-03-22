.class public final Lcom/facebook/ads/redexgen/X/jy;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/jx;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3034
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MPtFkEiIPrQJk6C68eapJqoHhp6zbLCW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P1eCuU1JvuL46IL3Xh4EOSVLMCcJCOjT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W4WpROs4sm5j6Tf0ztR0Y16lEj4WGQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4wLB1kD6U2fJ8LvWKaQYimBngFnzynrL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "j1g6H1G7HHWswscQmxGermXRDRDROF5f"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vYNShvJ8K3s57yIlGqGLfJHMZKUSU02I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LyEFdcIU17ooQUQ0BZMXWJLXZvdofmIX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "P7XGal"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jy;->A03:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/jz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jz;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/jy;->A04:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91549
    new-instance v0, Lcom/facebook/ads/redexgen/X/jx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jx;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A02:Lcom/facebook/ads/redexgen/X/jx;

    .line 91550
    const/16 v1, 0x4000

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A01:Lcom/facebook/ads/redexgen/X/4J;

    .line 91551
    return-void
.end method

.method public static synthetic A00()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 91552
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jy;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/jy;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 4

    .line 91553
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jy;->A02:Lcom/facebook/ads/redexgen/X/jx;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/jx;->A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 91554
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 91555
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 91556
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A01:Lcom/facebook/ads/redexgen/X/4J;

    .line 91558
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/16 v0, 0x4000

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/lN;->read([BII)I

    move-result v1

    .line 91559
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 91560
    return v0

    .line 91561
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 91563
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A00:Z

    if-nez v0, :cond_1

    .line 91564
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jy;->A02:Lcom/facebook/ads/redexgen/X/jx;

    const-wide/16 v1, 0x0

    const/4 v0, 0x4

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/jx;->AG6(JI)V

    .line 91565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A00:Z

    .line 91566
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jy;->A02:Lcom/facebook/ads/redexgen/X/jx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A01:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jx;->A52(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 91567
    return v4
.end method

.method public final AGr()V
    .locals 0

    .line 91568
    return-void
.end method

.method public final AIM(JJ)V
    .locals 1

    .line 91569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A00:Z

    .line 91570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jy;->A02:Lcom/facebook/ads/redexgen/X/jx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jx;->AIL()V

    .line 91571
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91572
    const/16 v5, 0xa

    new-instance v4, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 91573
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    const/4 v3, 0x0

    .line 91574
    .local v2, "startPosition":I
    :goto_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/jy;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/jy;->A03:[Ljava/lang/String;

    const-string v1, "dKI30oOFAvfBQiacazr45UFgS6k9aj5a"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v2, 0x0

    invoke-interface {p1, v6, v2, v5}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 91575
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91576
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v1

    const v0, 0x494433

    if-eq v1, v0, :cond_5

    .line 91577
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91578
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 91579
    move v6, v3

    .line 91580
    .local v1, "headerPosition":I
    const/4 v5, 0x0

    .line 91581
    .local v3, "validFramesCount":I
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x7

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 91582
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91583
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v1

    .line 91584
    .local v5, "syncBytes":I
    const v0, 0xac40

    if-eq v1, v0, :cond_2

    const v0, 0xac41

    if-eq v1, v0, :cond_2

    .line 91585
    const/4 v5, 0x0

    .line 91586
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91587
    add-int/lit8 v6, v6, 0x1

    sub-int v1, v6, v3

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_1

    .line 91588
    return v2

    .line 91589
    :cond_1
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    goto :goto_1

    .line 91590
    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x4

    if-lt v5, v0, :cond_3

    .line 91591
    const/4 v0, 0x1

    return v0

    .line 91592
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/GI;->A02([BI)I

    move-result v1

    .line 91593
    .local v6, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 91594
    return v2

    .line 91595
    :cond_4
    add-int/lit8 v0, v1, -0x7

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    goto :goto_1

    .line 91596
    .end local v1    # "headerPosition":I
    .end local v3    # "validFramesCount":I
    :cond_5
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 91597
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0H()I

    move-result v1

    .line 91598
    .local v3, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v3, v0

    .line 91599
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 91600
    .end local v3    # "length":I
    goto/16 :goto_0
.end method
