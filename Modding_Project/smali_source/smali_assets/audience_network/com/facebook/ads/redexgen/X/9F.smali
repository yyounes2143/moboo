.class public final Lcom/facebook/ads/redexgen/X/9F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/mM;
.implements Lcom/facebook/ads/redexgen/X/mN;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/mQ;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/mN;

.field public A04:[Lcom/facebook/ads/redexgen/X/mQ;

.field public final A05:Lcom/facebook/ads/redexgen/X/mM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 538
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JXRw8dEnvO1Lr4g7cFUS0dvQrSj2gCrD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hvHNuBxl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xmWilmV3z2eIIj1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UUtHfwhImwRJiupXWlBcpFq10hKf2hZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Gjwbiw3zcCnfnivX0C6Z4KLegMayRhyW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PFLAFIzQgEofbdrT2htWxpP7W2gVOOgi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "405rypbMY6P"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HWuA8Rz9jBHRgd5bymvhijPSyV36G6mN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mM;ZJJ)V
    .locals 2

    .line 25732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25733
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    .line 25734
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    .line 25735
    if-eqz p2, :cond_0

    move-wide v0, p3

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A02:J

    .line 25736
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    .line 25737
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    .line 25738
    return-void

    .line 25739
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private A00(JLcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/7I;
    .locals 14

    .line 25740
    move-object/from16 v2, p3

    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/7I;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    sub-long v7, p1, v0

    .line 25741
    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v0

    .line 25742
    .local v0, "toleranceBeforeUs":J
    iget-wide v8, v2, Lcom/facebook/ads/redexgen/X/7I;->A00:J

    .line 25743
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v5, v3, v6

    if-nez v5, :cond_0

    const-wide v12, 0x7fffffffffffffffL

    .line 25744
    :goto_0
    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v4

    .line 25745
    .local v2, "toleranceAfterUs":J
    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/7I;->A01:J

    cmp-long v3, v0, v6

    if-nez v3, :cond_2

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/7I;->A00:J

    sget-object v8, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v3, v8, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v3, 0xb

    if-eq v8, v3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25746
    :cond_0
    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    sub-long/2addr v12, p1

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const-string v8, "SySHx2FlEzism2SEaRZKk1Ki9OIwKCgL"

    const/4 v3, 0x0

    aput-object v8, v9, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 25747
    return-object v2

    .line 25748
    :cond_2
    new-instance v2, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/7I;-><init>(JJ)V

    return-object v2
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/mM;)V
    .locals 1

    .line 25749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A03:Lcom/facebook/ads/redexgen/X/mN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mN;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Cu;->ACs(Lcom/facebook/ads/redexgen/X/Cv;)V

    .line 25750
    return-void
.end method

.method public static A02(J[Lcom/facebook/ads/redexgen/X/lj;)Z
    .locals 5

    .line 25751
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    cmp-long v0, p0, v1

    if-eqz v0, :cond_1

    .line 25752
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 25753
    .local v3, "trackSelection":Lcom/facebook/ads/redexgen/X/lj;
    if-eqz v0, :cond_0

    .line 25754
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lj;->A8u()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 25755
    .local v4, "selectedFormat":Lcom/facebook/ads/redexgen/X/or;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2h;->A0G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25756
    const/4 v0, 0x1

    return v0

    .line 25757
    .end local v3    # "trackSelection":Lcom/facebook/ads/redexgen/X/lj;
    .end local v4    # "selectedFormat":Lcom/facebook/ads/redexgen/X/or;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25758
    :cond_1
    return v4
.end method


# virtual methods
.method public final A03()Z
    .locals 5

    .line 25759
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9F;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A4k(J)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D19760981 for cancel request"
    .end annotation

    .line 25760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cv;->A4k(J)V

    .line 25761
    return-void
.end method

.method public final A54(J)Z
    .locals 1

    .line 25762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/mM;->A54(J)Z

    move-result v0

    return v0
.end method

.method public final A5s(JZ)V
    .locals 1

    .line 25763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/mM;->A5s(JZ)V

    .line 25764
    return-void
.end method

.method public final A6j(JLcom/facebook/ads/redexgen/X/7I;)J
    .locals 3

    .line 25765
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 25766
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    return-wide v0

    .line 25767
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9F;->A00(JLcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/7I;

    move-result-object v1

    .line 25768
    .local v0, "clippedSeekParameters":Lcom/facebook/ads/redexgen/X/7I;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/mM;->A6j(JLcom/facebook/ads/redexgen/X/7I;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6y(J)J
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D9949576 for unstall buffer"
    .end annotation

    .line 25769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cv;->A6y(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A70()J
    .locals 7

    .line 25770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mM;->A70()J

    move-result-wide v5

    .line 25771
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 25772
    :cond_0
    return-wide v3

    .line 25773
    :cond_1
    return-wide v5
.end method

.method public final A8T()J
    .locals 8

    .line 25774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mM;->A8T()J

    move-result-wide v6

    .line 25775
    .local v0, "nextLoadPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v3, v0, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const-string v1, "QBPPyRyowan8CCGBQiXIHMf03VOUOCSC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v0, v6, v1

    if-ltz v0, :cond_2

    .line 25776
    :cond_1
    return-wide v4

    .line 25777
    :cond_2
    return-wide v6
.end method

.method public final A9E()Lcom/facebook/ads/redexgen/X/mA;
    .locals 1

    .line 25778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mM;->A9E()Lcom/facebook/ads/redexgen/X/mA;

    move-result-object v0

    return-object v0
.end method

.method public final ABt()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25779
    const/4 v0, 0x0

    if-nez v0, :cond_0

    .line 25780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mM;->ABt()V

    .line 25781
    return-void

    .line 25782
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic ACs(Lcom/facebook/ads/redexgen/X/Cv;)V
    .locals 0

    .line 25783
    check-cast p1, Lcom/facebook/ads/redexgen/X/mM;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9F;->A01(Lcom/facebook/ads/redexgen/X/mM;)V

    return-void
.end method

.method public final AEk(Lcom/facebook/ads/redexgen/X/mM;)V
    .locals 1

    .line 25784
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 25785
    return-void

    .line 25786
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A03:Lcom/facebook/ads/redexgen/X/mN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mN;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/mN;->AEk(Lcom/facebook/ads/redexgen/X/mM;)V

    .line 25787
    return-void
.end method

.method public final AGL(Lcom/facebook/ads/redexgen/X/mN;J)V
    .locals 1

    .line 25788
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9F;->A03:Lcom/facebook/ads/redexgen/X/mN;

    .line 25789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/mM;->AGL(Lcom/facebook/ads/redexgen/X/mN;J)V

    .line 25790
    return-void
.end method

.method public final AGg()J
    .locals 8

    .line 25791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9F;->A03()Z

    move-result v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 25792
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/9F;->A02:J

    .line 25793
    .local v3, "initialDiscontinuityUs":J
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/9F;->A02:J

    .line 25794
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9F;->AGg()J

    move-result-wide v1

    .line 25795
    .local v5, "childDiscontinuityUs":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    :goto_0
    return-wide v1

    :cond_0
    move-wide v1, v5

    goto :goto_0

    .line 25796
    .end local v3    # "initialDiscontinuityUs":J
    .end local v5    # "childDiscontinuityUs":J
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const-string v1, "ABWUoGiNBoa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/mM;->AGg()J

    move-result-wide v1

    .line 25797
    .local v3, "discontinuityUs":J
    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    .line 25798
    return-wide v3

    .line 25799
    :cond_2
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    const/4 v7, 0x1

    cmp-long v0, v1, v3

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25800
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v0, v1, v3

    if-gtz v0, :cond_4

    :cond_3
    :goto_2
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25801
    return-wide v1

    .line 25802
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 25803
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AGm(J)V
    .locals 1

    .line 25804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/mM;->AGm(J)V

    .line 25805
    return-void
.end method

.method public final AIO(JZ)J
    .locals 8
    .param p1    # J
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 25806
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A02:J

    .line 25807
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    array-length v2, v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 25808
    .local v4, "sampleStream":Lcom/facebook/ads/redexgen/X/mQ;
    if-eqz v0, :cond_0

    .line 25809
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mQ;->A00()V

    .line 25810
    .end local v4    # "sampleStream":Lcom/facebook/ads/redexgen/X/mQ;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25811
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/mM;->AIO(JZ)J

    move-result-wide v5

    .line 25812
    .local v0, "seekUs":J
    cmp-long v0, v5, p1

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v0, v5, v1

    if-gtz v0, :cond_3

    :cond_2
    const/4 v7, 0x1

    :cond_3
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25813
    return-wide v5
.end method

.method public final AIP([Lcom/facebook/ads/redexgen/X/lj;[Z[Lcom/facebook/ads/redexgen/X/Cr;[ZJ)J
    .locals 17

    .line 25814
    move-object/from16 v3, p3

    array-length v0, v3

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    move-object/from16 v4, p0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    .line 25815
    array-length v0, v3

    new-array v13, v0, [Lcom/facebook/ads/redexgen/X/Cr;

    .line 25816
    .local v0, "childStreams":[Lcom/facebook/ads/redexgen/X/Cr;
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, v3

    const/4 v2, 0x0

    if-ge v5, v0, :cond_1

    .line 25817
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    aget-object v0, v3, v5

    check-cast v0, Lcom/facebook/ads/redexgen/X/mQ;

    aput-object v0, v1, v5

    .line 25818
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    aget-object v0, v0, v5

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    aget-object v0, v0, v5

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/mQ;->A01:Lcom/facebook/ads/redexgen/X/Cr;

    :cond_0
    aput-object v2, v13, v5

    .line 25819
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25820
    .end local v1    # "i":I
    :cond_1
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    .line 25821
    move-wide/from16 v15, p5

    move-object/from16 v14, p4

    move-object/from16 v12, p2

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/mM;->AIP([Lcom/facebook/ads/redexgen/X/lj;[Z[Lcom/facebook/ads/redexgen/X/Cr;[ZJ)J

    move-result-wide v9

    .line 25822
    .local v1, "enablePositionUs":J
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9F;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    cmp-long v5, v15, v0

    if-nez v5, :cond_2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    sget-object v7, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v6, v7, v5

    const/4 v5, 0x3

    aget-object v7, v7, v5

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v6, v5, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25823
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 25824
    :cond_3
    sget-object v7, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const-string v6, "en1LL2zHQFU7eKPWWtw7tqDicZnmZ9l5"

    const/4 v5, 0x7

    aput-object v6, v7, v5

    const-string v6, "t66o2OzEfyctLQHjRBlZ897u0IFgDWGZ"

    const/4 v5, 0x5

    aput-object v6, v7, v5

    invoke-static {v0, v1, v11}, Lcom/facebook/ads/redexgen/X/9F;->A02(J[Lcom/facebook/ads/redexgen/X/lj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25825
    move-wide v0, v9

    .line 25826
    :goto_2
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A02:J

    .line 25827
    cmp-long v0, v9, v15

    if-eqz v0, :cond_4

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    cmp-long v0, v9, v5

    if-ltz v0, :cond_b

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v0, v9, v5

    if-gtz v0, :cond_b

    :cond_4
    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 25828
    const/4 v6, 0x0

    .local v3, "i":I
    :goto_4
    array-length v7, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_a

    sget-object v5, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const-string v1, "DNi9UWzwfCWyYPkB4uGGg0YkPCShAQe6"

    const/4 v0, 0x7

    aput-object v1, v5, v0

    const-string v1, "fAixbEz1F3G47KA6JLUGcT01MO1ZofiJ"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    if-ge v6, v7, :cond_c

    .line 25829
    :goto_5
    aget-object v0, v13, v6

    if-nez v0, :cond_5

    .line 25830
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    sget-object v5, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v5, v5, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    goto :goto_1

    .line 25831
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    aget-object v0, v0, v6

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    aget-object v0, v0, v6

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/mQ;->A01:Lcom/facebook/ads/redexgen/X/Cr;

    aget-object v7, v13, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const-string v1, "cYzDBwspbZ8a8DM9Dz10VjvDatAoG4Oi"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    const-string v1, "WIkG6wjldaaFwlHYCP34A8xHiCA5NCte"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    if-eq v8, v7, :cond_9

    .line 25832
    :cond_6
    :goto_6
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    aget-object v1, v13, v6

    new-instance v0, Lcom/facebook/ads/redexgen/X/mQ;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/mQ;-><init>(Lcom/facebook/ads/redexgen/X/9F;Lcom/facebook/ads/redexgen/X/Cr;)V

    aput-object v0, v5, v6

    goto :goto_7

    :cond_7
    if-eq v8, v7, :cond_9

    goto :goto_6

    .line 25833
    :cond_8
    sget-object v5, Lcom/facebook/ads/redexgen/X/9F;->A06:[Ljava/lang/String;

    const-string v1, "ocXNdzhjsFv"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    aput-object v2, v7, v6

    .line 25834
    :cond_9
    :goto_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9F;->A04:[Lcom/facebook/ads/redexgen/X/mQ;

    aget-object v0, v0, v6

    aput-object v0, v3, v6

    .line 25835
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    if-ge v6, v7, :cond_c

    goto :goto_5

    .line 25836
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 25837
    .end local v3    # "i":I
    :cond_c
    return-wide v9
.end method

.method public final AIs(Z)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D19875605 for error load during pause"
    .end annotation

    .line 25838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Cv;->AIs(Z)V

    .line 25839
    return-void
.end method

.method public final AJq(B)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D13267633 for lower priority during pause"
    .end annotation

    .line 25840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Cv;->AJq(B)V

    .line 25841
    return-void
.end method
