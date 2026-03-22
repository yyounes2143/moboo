.class public final Lcom/facebook/ads/redexgen/X/je;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KV;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;

.field public static final A0C:Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/GY;

.field public A02:Lcom/facebook/ads/redexgen/X/jg;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/KV;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/4J;

.field public final A09:Lcom/facebook/ads/redexgen/X/4R;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KU;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3019
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UBvRkgXOGDkhiRviOullp8V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VkNaXMTzU8N2w"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EmncOItxREzVuvRcJiesLUTUZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GKNHQwhZeE13dvoU8lLSXwuEJRZ0Rb8T"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UfDFEQBLtd8kFCM7fNQpR1e2paOBi7mP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RVi2VPuM0SECIbGMRSZvlBLvqxfM7S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lPCpjqdMUX8JsRnbL9v7kcIYKByBL6xe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JprIbG5eTccKgwX6h6kDKt0luN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/je;->A0B:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/jf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jf;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/je;->A0C:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 89652
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4R;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/je;-><init>(Lcom/facebook/ads/redexgen/X/4R;)V

    .line 89653
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4R;)V
    .locals 2

    .line 89654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89655
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/je;->A09:Lcom/facebook/ads/redexgen/X/4R;

    .line 89656
    const/16 v1, 0x1000

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    .line 89657
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A07:Landroid/util/SparseArray;

    .line 89658
    new-instance v0, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A0A:Lcom/facebook/ads/redexgen/X/KU;

    .line 89659
    return-void
.end method

.method private A00(J)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 89660
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/je;->A06:Z

    if-nez v0, :cond_0

    .line 89661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/je;->A06:Z

    .line 89662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A0A:Lcom/facebook/ads/redexgen/X/KU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KU;->A0C()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 89663
    new-instance v1, Lcom/facebook/ads/redexgen/X/jg;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A0A:Lcom/facebook/ads/redexgen/X/KU;

    .line 89664
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KU;->A0D()Lcom/facebook/ads/redexgen/X/4R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A0A:Lcom/facebook/ads/redexgen/X/KU;

    .line 89665
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KU;->A0C()J

    move-result-wide v3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/jg;-><init>(Lcom/facebook/ads/redexgen/X/4R;JJ)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/je;->A02:Lcom/facebook/ads/redexgen/X/jg;

    .line 89666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A02:Lcom/facebook/ads/redexgen/X/jg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GQ;->A07()Lcom/facebook/ads/redexgen/X/lV;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 89667
    :cond_0
    :goto_0
    return-void

    .line 89668
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A0A:Lcom/facebook/ads/redexgen/X/KU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KU;->A0C()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    goto :goto_0
.end method

.method public static synthetic A01()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 89669
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/je;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/je;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 0

    .line 89670
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Lcom/facebook/ads/redexgen/X/GY;

    .line 89671
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89672
    move-object v8, p0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A01:Lcom/facebook/ads/redexgen/X/GY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89673
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v0

    .line 89674
    .local v3, "inputLength":J
    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/16 v9, -0x1

    cmp-long v2, v0, v9

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 89675
    .local v9, "canReadDuration":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/je;->A0A:Lcom/facebook/ads/redexgen/X/KU;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/KU;->A0E()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89676
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A0A:Lcom/facebook/ads/redexgen/X/KU;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/KU;->A0B(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 89677
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 89678
    :cond_1
    invoke-direct {v8, v0, v1}, Lcom/facebook/ads/redexgen/X/je;->A00(J)V

    .line 89679
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/je;->A02:Lcom/facebook/ads/redexgen/X/jg;

    if-eqz v2, :cond_2

    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/je;->A02:Lcom/facebook/ads/redexgen/X/jg;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/GQ;->A09()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89680
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A02:Lcom/facebook/ads/redexgen/X/jg;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/GQ;->A06(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 89681
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 89682
    cmp-long v2, v0, v9

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 89683
    .local v10, "peekBytesLeft":J
    :goto_1
    const/4 v6, -0x1

    cmp-long v2, v0, v9

    if-eqz v2, :cond_4

    const-wide/16 v4, 0x4

    cmp-long v2, v0, v4

    if-gez v2, :cond_4

    .line 89684
    return v6

    .line 89685
    :cond_3
    move-wide v0, v9

    goto :goto_1

    .line 89686
    :cond_4
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x4

    invoke-interface {p1, v1, v3, v0, v7}, Lcom/facebook/ads/redexgen/X/lN;->AGA([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 89687
    return v6

    .line 89688
    :cond_5
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89689
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v4

    .line 89690
    .local v7, "nextStartCode":I
    const/16 v0, 0x1b9

    if-ne v4, v0, :cond_6

    .line 89691
    return v6

    .line 89692
    :cond_6
    const/16 v5, 0x1ba

    sget-object v1, Lcom/facebook/ads/redexgen/X/je;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/je;->A0B:[Ljava/lang/String;

    const-string v1, "kMhOTVhRWN36SIdb7fVpbVP8KQK8iP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "K6CIMfQf5fCJv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v5, :cond_7

    .line 89693
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/16 v0, 0xa

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 89694
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89695
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 89696
    .local v5, "packStuffingLength":I
    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 89697
    return v3

    .line 89698
    .end local v5    # "packStuffingLength":I
    :cond_7
    const/16 v0, 0x1bb

    const/4 v6, 0x2

    if-ne v4, v0, :cond_8

    .line 89699
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v6}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 89700
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89701
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    .line 89702
    .local v5, "systemHeaderLength":I
    add-int/lit8 v0, v0, 0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 89703
    return v3

    .line 89704
    .end local v5    # "systemHeaderLength":I
    :cond_8
    and-int/lit16 v0, v4, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v7, :cond_9

    .line 89705
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 89706
    return v3

    .line 89707
    :cond_9
    and-int/lit16 v5, v4, 0xff

    .line 89708
    .local v8, "streamId":I
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/KV;

    .line 89709
    .local p2, "payloadReader":Lcom/facebook/ads/redexgen/X/KV;
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/je;->A03:Z

    if-nez v0, :cond_c

    .line 89710
    if-nez v4, :cond_b

    .line 89711
    const/4 v3, 0x0

    .line 89712
    .local p3, "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/KJ;
    const/16 v0, 0xbd

    if-ne v5, v0, :cond_f

    .line 89713
    new-instance v3, Lcom/facebook/ads/redexgen/X/k0;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/k0;-><init>()V

    .line 89714
    iput-boolean v7, v8, Lcom/facebook/ads/redexgen/X/je;->A04:Z

    .line 89715
    .end local v7    # "nextStartCode":I
    .local p5, "nextStartCode":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/je;->A00:J

    .line 89716
    :cond_a
    :goto_2
    if-eqz v3, :cond_b

    .line 89717
    const/16 v0, 0x100

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(II)V

    .line 89718
    .local v6, "idGenerator":Lcom/facebook/ads/redexgen/X/Ke;
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A01:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/KJ;->A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 89719
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A09:Lcom/facebook/ads/redexgen/X/4R;

    new-instance v4, Lcom/facebook/ads/redexgen/X/KV;

    invoke-direct {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KV;-><init>(Lcom/facebook/ads/redexgen/X/KJ;Lcom/facebook/ads/redexgen/X/4R;)V

    .line 89720
    .end local p2    # "payloadReader":Lcom/facebook/ads/redexgen/X/KV;
    .local v7, "payloadReader":Lcom/facebook/ads/redexgen/X/KV;
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89721
    .end local v7    # "payloadReader":Lcom/facebook/ads/redexgen/X/KV;
    .restart local p5
    :cond_b
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/je;->A04:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/je;->A05:Z

    if-eqz v0, :cond_e

    .line 89722
    iget-wide v1, v8, Lcom/facebook/ads/redexgen/X/je;->A00:J

    const-wide/16 v9, 0x2000

    add-long/2addr v1, v9

    .line 89723
    .local v6, "maxSearchPosition":J
    :goto_3
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v9

    cmp-long v0, v9, v1

    if-lez v0, :cond_c

    .line 89724
    iput-boolean v7, v8, Lcom/facebook/ads/redexgen/X/je;->A03:Z

    .line 89725
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A01:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 89726
    .end local v7
    .restart local p5
    :cond_c
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v6}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 89727
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89728
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    .line 89729
    .local v5, "payloadLength":I
    add-int/lit8 v2, v0, 0x6

    .line 89730
    .local v6, "pesLength":I
    if-nez v4, :cond_d

    .line 89731
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 89732
    :goto_4
    const/4 v0, 0x0

    return v0

    .line 89733
    :cond_d
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 89734
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 89735
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89736
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/KV;->A03(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 89737
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/je;->A08:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    goto :goto_4

    .line 89738
    :cond_e
    const-wide/32 v1, 0x100000

    goto :goto_3

    .line 89739
    .end local p5
    .restart local v7    # "payloadReader":Lcom/facebook/ads/redexgen/X/KV;
    .end local v7    # "payloadReader":Lcom/facebook/ads/redexgen/X/KV;
    .restart local p5
    :cond_f
    and-int/lit16 v10, v5, 0xe0

    const/16 v9, 0xc0

    sget-object v1, Lcom/facebook/ads/redexgen/X/je;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/je;->A0B:[Ljava/lang/String;

    const-string v1, "MD0211Yr4bYXM5L9ZkPBjN7rOQ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v10, v9, :cond_11

    .line 89740
    :goto_5
    new-instance v3, Lcom/facebook/ads/redexgen/X/jk;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/jk;-><init>()V

    .line 89741
    iput-boolean v7, v8, Lcom/facebook/ads/redexgen/X/je;->A04:Z

    .line 89742
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/je;->A00:J

    goto/16 :goto_2

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/je;->A0B:[Ljava/lang/String;

    const-string v1, "PIHtVurnoe8IajroMJlyufhIBiisymoK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "tbo4qyhyaN86Rqnk6vLIVirgmw8EdsC9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v10, v9, :cond_11

    goto :goto_5

    .line 89743
    :cond_11
    and-int/lit16 v1, v5, 0xf0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_a

    .line 89744
    new-instance v3, Lcom/facebook/ads/redexgen/X/jq;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/jq;-><init>()V

    .line 89745
    iput-boolean v7, v8, Lcom/facebook/ads/redexgen/X/je;->A05:Z

    .line 89746
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/je;->A00:J

    goto/16 :goto_2

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AGr()V
    .locals 0

    .line 89747
    return-void
.end method

.method public final AIM(JJ)V
    .locals 6

    .line 89748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A09:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4R;->A04()J

    move-result-wide v3

    const/4 v5, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 89749
    .local v0, "resetTimestampAdjuster":Z
    :goto_0
    if-nez v0, :cond_1

    .line 89750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A09:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4R;->A02()J

    move-result-wide v3

    .line 89751
    .local p0, "adjusterFirstSampleTimestampUs":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    cmp-long v0, v3, p3

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    move v0, v5

    .line 89752
    .end local p0    # "adjusterFirstSampleTimestampUs":J
    :cond_1
    if-eqz v0, :cond_2

    .line 89753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A09:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/4R;->A07(J)V

    .line 89754
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A02:Lcom/facebook/ads/redexgen/X/jg;

    if-eqz v0, :cond_3

    .line 89755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A02:Lcom/facebook/ads/redexgen/X/jg;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/GQ;->A08(J)V

    .line 89756
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 89757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KV;->A02()V

    .line 89758
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89759
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 89760
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89761
    const/16 v0, 0xe

    new-array v5, v0, [B

    .line 89762
    .local v1, "scratch":[B
    const/4 v4, 0x0

    invoke-interface {p1, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 89763
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/4 v3, 0x1

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/4 v8, 0x2

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    const/16 v6, 0x8

    shl-int/2addr v0, v6

    or-int/2addr v1, v0

    const/4 v7, 0x3

    aget-byte v0, v5, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    const/16 v0, 0x1ba

    if-eq v0, v1, :cond_0

    .line 89764
    return v4

    .line 89765
    :cond_0
    const/4 v2, 0x4

    aget-byte v0, v5, v2

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    .line 89766
    return v4

    .line 89767
    :cond_1
    const/4 v0, 0x6

    aget-byte v0, v5, v0

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    .line 89768
    return v4

    .line 89769
    :cond_2
    aget-byte v0, v5, v6

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    .line 89770
    return v4

    .line 89771
    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v5, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 89772
    return v4

    .line 89773
    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v5, v0

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_5

    .line 89774
    return v4

    .line 89775
    :cond_5
    const/16 v0, 0xd

    aget-byte v6, v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/je;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/je;->A0B:[Ljava/lang/String;

    const-string v1, "VV5ZPjEmtEUa5x1ycfEwWXr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/lit8 v0, v6, 0x7

    .line 89776
    .local v0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 89777
    invoke-interface {p1, v5, v4, v7}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 89778
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    if-ne v3, v0, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
