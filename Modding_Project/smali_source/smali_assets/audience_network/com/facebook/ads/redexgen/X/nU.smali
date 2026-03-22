.class public final Lcom/facebook/ads/redexgen/X/nU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6W;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5n;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6W;

.field public A01:Lcom/facebook/ads/redexgen/X/nM;

.field public A02:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "This reverts a bug introduced in D48802706. The upgraded exoaccounts for this but not the old exo. Hence, this is needed here temporarily"
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/5n;

.field public final A06:Lcom/facebook/ads/redexgen/X/nG;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3181
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yII62Bxz4ePSH41vB2jdKSugEbZVWw1P"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xxJts2URfaqafakNk2KbG7F81xmmDazV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4dv2SznKWSxWwafbIX2ls1ujl8jSHd2n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZTUBGrXVNXomnx09AH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GEOoy7FoThRACcjBmfZ1TUIlEpKlWtQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rZtP7yRh3duuKSKGXoPyzbqapeA3agH5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0fM4GZ86zQsT7VByU2LW0lXLtFUbu0NT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1qHBrVxL1wzL98lt8KL7QvczAsaDn4yk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nU;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5n;Lcom/facebook/ads/redexgen/X/3T;)V
    .locals 1

    .line 100594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100595
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nU;->A05:Lcom/facebook/ads/redexgen/X/5n;

    .line 100596
    new-instance v0, Lcom/facebook/ads/redexgen/X/nG;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/nG;-><init>(Lcom/facebook/ads/redexgen/X/3T;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    .line 100597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A03:Z

    .line 100598
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A1d:Lcom/facebook/ads/redexgen/X/i2;

    .line 100599
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A02:Z

    .line 100600
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nU;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nU;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x56t
        0x6et
        0x77t
        0x6ft
        0x72t
        0x6bt
        0x77t
        0x7et
        0x3bt
        0x69t
        0x7et
        0x75t
        0x7ft
        0x7et
        0x69t
        0x7et
        0x69t
        0x3bt
        0x76t
        0x7et
        0x7ft
        0x72t
        0x7at
        0x3bt
        0x78t
        0x77t
        0x74t
        0x78t
        0x70t
        0x68t
        0x3bt
        0x7et
        0x75t
        0x7at
        0x79t
        0x77t
        0x7et
        0x7ft
        0x35t
    .end array-data
.end method

.method private A02(Z)V
    .locals 7

    .line 100601
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nU;->A03(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A03:Z

    .line 100603
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A04:Z

    if-eqz v0, :cond_0

    .line 100604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A00()V

    .line 100605
    :cond_0
    return-void

    .line 100606
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/6W;

    .line 100607
    .local v0, "rendererClock":Lcom/facebook/ads/redexgen/X/6W;
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/6W;->A8h()J

    move-result-wide v3

    .line 100608
    .local v1, "rendererClockPositionUs":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A03:Z

    if-eqz v0, :cond_4

    .line 100609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A8h()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 100610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A01()V

    .line 100611
    return-void

    .line 100612
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A03:Z

    .line 100613
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A04:Z

    if-eqz v0, :cond_4

    .line 100614
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    sget-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    const-string v1, "DdBgGw0WSHdH6u"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/nG;->A00()V

    .line 100615
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/nG;->A02(J)V

    .line 100616
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/6W;->A8e()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v1

    .line 100617
    .local v3, "playbackParameters":Lcom/facebook/ads/redexgen/X/ob;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A8e()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ob;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 100618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/nG;->AIt(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 100619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A05:Lcom/facebook/ads/redexgen/X/5n;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/5n;->AEb(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 100620
    :cond_5
    return-void
.end method

.method private A03(Z)Z
    .locals 4

    .line 100621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A01:Lcom/facebook/ads/redexgen/X/nM;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/nU;->A01:Lcom/facebook/ads/redexgen/X/nM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 100622
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    const-string v1, "259perxNRfR5uYao2q6cSAfIVJfeeK6N"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EI3wTVxb9Zi5034aB38J7XgUXur7uJJK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/nM;->AAG()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A01:Lcom/facebook/ads/redexgen/X/nM;

    .line 100623
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nM;->AAV()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A01:Lcom/facebook/ads/redexgen/X/nM;

    .line 100624
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nM;->A9h()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    const-string v1, "UNE8e4mByuhRiLOUb8sZtJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 100625
    :goto_1
    return v0

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_0

    .line 100626
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final A04(Z)J
    .locals 2

    .line 100627
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nU;->A02(Z)V

    .line 100628
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nU;->A8h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A05()V
    .locals 1

    .line 100629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A04:Z

    .line 100630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A00()V

    .line 100631
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 100632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A04:Z

    .line 100633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A01()V

    .line 100634
    return-void
.end method

.method public final A07(J)V
    .locals 1

    .line 100635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/nG;->A02(J)V

    .line 100636
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/nM;)V
    .locals 1

    .line 100637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A01:Lcom/facebook/ads/redexgen/X/nM;

    if-ne p1, v0, :cond_0

    .line 100638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    .line 100639
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A01:Lcom/facebook/ads/redexgen/X/nM;

    .line 100640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A03:Z

    .line 100641
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/nM;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 100642
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/nM;->A8L()Lcom/facebook/ads/redexgen/X/6W;

    move-result-object v4

    .line 100643
    .local v0, "rendererMediaClock":Lcom/facebook/ads/redexgen/X/6W;
    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    if-eq v4, v0, :cond_1

    .line 100644
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    sget-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/nU;->A08:[Ljava/lang/String;

    const-string v1, "dGOISEf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 100645
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    .line 100646
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nU;->A01:Lcom/facebook/ads/redexgen/X/nM;

    .line 100647
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A8e()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/6W;->AIt(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 100648
    :cond_1
    return-void

    .line 100649
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nU;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    throw v0
.end method

.method public final A8e()Lcom/facebook/ads/redexgen/X/ob;
    .locals 1

    .line 100650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    if-eqz v0, :cond_0

    .line 100651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6W;->A8e()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v0

    .line 100652
    :goto_0
    return-object v0

    .line 100653
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A8e()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object v0

    goto :goto_0
.end method

.method public final A8h()J
    .locals 2

    .line 100654
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A03:Z

    if-eqz v0, :cond_0

    .line 100655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nG;->A8h()J

    move-result-wide v0

    .line 100656
    :goto_0
    return-wide v0

    .line 100657
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6W;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6W;->A8h()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final AIt(Lcom/facebook/ads/redexgen/X/ob;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "This reverts a bug introduced in D48802706. The upgraded exoaccounts for this but not the old exo. Hence, this is needed here temporarily"
    .end annotation

    .line 100658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    if-eqz v0, :cond_0

    .line 100659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/6W;->AIt(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 100660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A00:Lcom/facebook/ads/redexgen/X/6W;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6W;->A8e()Lcom/facebook/ads/redexgen/X/ob;

    move-result-object p1

    .line 100661
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A06:Lcom/facebook/ads/redexgen/X/nG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/nG;->AIt(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 100662
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A02:Z

    if-eqz v0, :cond_1

    .line 100663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nU;->A05:Lcom/facebook/ads/redexgen/X/5n;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/5n;->AEb(Lcom/facebook/ads/redexgen/X/ob;)V

    .line 100664
    :cond_1
    return-void
.end method
