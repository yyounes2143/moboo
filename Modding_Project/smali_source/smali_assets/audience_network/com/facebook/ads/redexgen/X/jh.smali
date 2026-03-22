.class public final Lcom/facebook/ads/redexgen/X/jh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PsScrSeeker"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4J;

.field public final A01:Lcom/facebook/ads/redexgen/X/4R;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3020
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "icMuAGNUwG3qooMsLkIelsXOgqR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wZwGdqwzUfLFhHeDnVqZXfrekI2t19Nm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6NjHclQwJEhKen4shQzzT38fKShvFJl3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cwvHChui6ScrilPVLNLxDwwq1RZibmTM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KGSyfhH5I6lVnEy0NkdKQy5Ija"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JgLMaajFBM7mBqcCk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W9ygPHkeZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jh;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4R;)V
    .locals 1

    .line 89786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89787
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jh;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 89788
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jh;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 89789
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/KT;)V
    .locals 0

    .line 89790
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jh;-><init>(Lcom/facebook/ads/redexgen/X/4R;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4J;JJ)Lcom/facebook/ads/redexgen/X/GN;
    .locals 9

    .line 89791
    const/4 v5, -0x1

    .line 89792
    .local v3, "startOfLastPacketPosition":I
    const/4 v2, -0x1

    .line 89793
    .local v4, "endOfLastPacketPosition":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 89794
    .local v5, "lastScrTimeUsInRange":J
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    const/4 v8, 0x4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v0, v8, :cond_6

    .line 89795
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jg;->A01([BI)I

    move-result v1

    .line 89796
    .local v7, "nextStartCode":I
    const/16 v0, 0x1ba

    if-eq v1, v0, :cond_0

    .line 89797
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89798
    goto :goto_0

    .line 89799
    :cond_0
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89800
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KU;->A06(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v1

    .line 89801
    .local p2, "scrValue":J
    cmp-long v0, v1, v6

    if-eqz v0, :cond_3

    .line 89802
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/jh;->A01:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4R;->A06(J)J

    move-result-wide v1

    .line 89803
    .local p4, "scrTimeUs":J
    cmp-long v0, v1, p2

    if-lez v0, :cond_1

    .line 89804
    cmp-long v0, v3, v6

    if-nez v0, :cond_4

    .line 89805
    invoke-static {v1, v2, p4, p5}, Lcom/facebook/ads/redexgen/X/GN;->A04(JJ)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v0

    return-object v0

    .line 89806
    :cond_1
    const-wide/32 v5, 0x186a0

    sget-object v3, Lcom/facebook/ads/redexgen/X/jh;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v3, v0

    const/16 v0, 0x1a

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x71

    if-eq v3, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/jh;->A02:[Ljava/lang/String;

    const-string v3, "JRu5yfiOOmZm3e1j9KGmxzziCqUEhgmX"

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v3, "rPvZuTIICj36zhJU166yjphfEhohU7nm"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    add-long/2addr v5, v1

    cmp-long v0, v5, p2

    if-lez v0, :cond_2

    .line 89807
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p4

    .line 89808
    .local p0, "startOfPacketInStream":J
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/GN;->A03(J)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v0

    return-object v0

    .line 89809
    .end local p0    # "startOfPacketInStream":J
    :cond_2
    move-wide v3, v1

    .line 89810
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v5

    .line 89811
    :cond_3
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jh;->A01(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 89812
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v2

    .line 89813
    .end local v7    # "nextStartCode":I
    .end local p2    # "scrValue":J
    goto :goto_0

    .line 89814
    :cond_4
    int-to-long v0, v5

    add-long/2addr v0, p4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/GN;->A03(J)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89815
    :cond_6
    cmp-long v0, v3, v6

    if-eqz v0, :cond_7

    .line 89816
    int-to-long v0, v2

    add-long/2addr v0, p4

    .line 89817
    .local p0, "endOfLastPacketPositionInStream":J
    invoke-static {v3, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/GN;->A05(JJ)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v0

    return-object v0

    .line 89818
    .end local p0    # "endOfLastPacketPositionInStream":J
    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/GN;->A03:Lcom/facebook/ads/redexgen/X/GN;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 5

    .line 89819
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v4

    .line 89820
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    .line 89821
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89822
    return-void

    .line 89823
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89824
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    .line 89825
    .local v1, "packStuffingLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 89826
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89827
    return-void

    .line 89828
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89829
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 89830
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89831
    return-void

    .line 89832
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jg;->A01([BI)I

    move-result v1

    .line 89833
    .local v2, "nextStartCode":I
    const/16 v0, 0x1bb

    if-ne v1, v0, :cond_4

    .line 89834
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89835
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v1

    .line 89836
    .local v4, "systemHeaderLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 89837
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89838
    return-void

    .line 89839
    :cond_3
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89840
    .end local v4    # "systemHeaderLength":I
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lt v0, v3, :cond_5

    .line 89841
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jg;->A01([BI)I

    move-result v1

    .line 89842
    const/16 v0, 0x1ba

    if-eq v1, v0, :cond_5

    const/16 v0, 0x1b9

    if-ne v1, v0, :cond_6

    .line 89843
    :cond_5
    :goto_1
    return-void

    .line 89844
    :cond_6
    ushr-int/lit8 v1, v1, 0x8

    const/4 v0, 0x1

    if-eq v1, v0, :cond_7

    goto :goto_1

    .line 89845
    :cond_7
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89846
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/4 v0, 0x2

    if-ge v1, v0, :cond_8

    .line 89847
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89848
    return-void

    .line 89849
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v2

    .line 89850
    .local v4, "pesPacketLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 89851
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89852
    .end local v4    # "pesPacketLength":I
    goto :goto_0
.end method


# virtual methods
.method public final AFA()V
    .locals 2

    .line 89853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jh;->A00:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0i([B)V

    .line 89854
    return-void
.end method

.method public final AIC(Lcom/facebook/ads/redexgen/X/lN;J)Lcom/facebook/ads/redexgen/X/GN;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89855
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v4

    .line 89856
    .local p0, "inputPosition":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/16 v0, 0x4e20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 89857
    .local p2, "bytesToSearch":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jh;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 89858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jh;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 89859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jh;->A00:Lcom/facebook/ads/redexgen/X/4J;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/jh;->A00(Lcom/facebook/ads/redexgen/X/4J;JJ)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v0

    return-object v0
.end method
