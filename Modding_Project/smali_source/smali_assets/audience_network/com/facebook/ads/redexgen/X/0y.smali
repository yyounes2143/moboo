.class public final Lcom/facebook/ads/redexgen/X/0y;
.super Lcom/facebook/ads/redexgen/X/94;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ds;,
        Lcom/facebook/ads/redexgen/X/m5;
    }
.end annotation


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/96;

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:J

.field public final A05:F

.field public final A06:I

.field public final A07:I

.field public final A08:J

.field public final A09:J

.field public final A0A:J

.field public final A0B:Lcom/facebook/ads/redexgen/X/Am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/Ds;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:F

.field public final A0D:I

.field public final A0E:J

.field public final A0F:Lcom/facebook/ads/redexgen/X/3T;

.field public final A0G:Lcom/facebook/ads/redexgen/X/EU;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 42
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "m5Q3aiQKICJZrVflAtkG72aHaW7D7vzV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Te6TlfxhDkM1nSnzhWnFswazR8GhYsIL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RAA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kEgqAeLW1EWE377lDOv4M7tHjIvdZKXO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "06ys5nuQ5LNcvNVR71UhF3Tfl10HYLje"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yFo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kDpjkJehLDjfyQcmHJ0GXPIrbeMaoLDA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wnjbAtiJPFcw6YA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0y;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oH;[IILcom/facebook/ads/redexgen/X/EU;IJJJIIFFJLjava/util/List;Lcom/facebook/ads/redexgen/X/3T;)V
    .locals 5
    .param p1    # Lcom/facebook/ads/redexgen/X/oH;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = "Used for OculusAdaptiveTrackSelection"
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = "Used to retain old value for Oculus"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oH;",
            "[II",
            "Lcom/facebook/ads/redexgen/X/EU;",
            "IJJJIIFFJ",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ds;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/3T;",
            ")V"
        }
    .end annotation

    .line 6640
    .local p27, "adaptationCheckpoints":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    move-object v2, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/94;-><init>(Lcom/facebook/ads/redexgen/X/oH;[II)V

    .line 6641
    cmp-long v0, p10, p6

    if-gez v0, :cond_0

    .line 6642
    const/4 v3, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0y;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x16

    const/16 v1, 0x5a

    const/16 v0, 0x32

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0y;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6643
    move-wide p10, p6

    .line 6644
    .end local p19    # null:Lcom/facebook/ads/redexgen/X/3T;
    .local v1, "minDurationToRetainAfterDiscardMs":J
    .end local p19
    .restart local v1    # "minDurationToRetainAfterDiscardMs":J
    :cond_0
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/0y;->A0G:Lcom/facebook/ads/redexgen/X/EU;

    .line 6645
    iput p5, v2, Lcom/facebook/ads/redexgen/X/0y;->A0D:I

    .line 6646
    const-wide/16 v0, 0x3e8

    mul-long/2addr p6, v0

    iput-wide p6, v2, Lcom/facebook/ads/redexgen/X/0y;->A08:J

    .line 6647
    mul-long/2addr p8, v0

    iput-wide p8, v2, Lcom/facebook/ads/redexgen/X/0y;->A0E:J

    .line 6648
    mul-long/2addr v0, p10

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A09:J

    .line 6649
    move/from16 v0, p12

    iput v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A07:I

    .line 6650
    move/from16 v0, p13

    iput v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A06:I

    .line 6651
    move/from16 v0, p14

    iput v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A0C:F

    .line 6652
    move/from16 v0, p15

    iput v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A05:F

    .line 6653
    invoke-static/range {p18 .. p18}, Lcom/facebook/ads/redexgen/X/Am;->A05(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A0B:Lcom/facebook/ads/redexgen/X/Am;

    .line 6654
    move-wide/from16 v0, p16

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A0A:J

    .line 6655
    move-object/from16 v0, p19

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A0F:Lcom/facebook/ads/redexgen/X/3T;

    .line 6656
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A01:F

    .line 6657
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A02:I

    .line 6658
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/0y;->A04:J

    .line 6659
    return-void
.end method

.method public static A00([Lcom/facebook/ads/redexgen/X/E9;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/ads/redexgen/X/E9;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/Ds;",
            ">;>;"
        }
    .end annotation

    .line 6660
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6661
    .local v0, "checkPointBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, p0

    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    if-ge v5, v0, :cond_1

    .line 6662
    aget-object v0, p0, v5

    if-eqz v0, :cond_0

    aget-object v0, p0, v5

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A02:[I

    array-length v0, v0

    if-le v0, v10, :cond_0

    .line 6663
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A01()Lcom/facebook/ads/redexgen/X/1h;

    move-result-object v1

    .line 6664
    .local v2, "builder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ds;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/facebook/ads/redexgen/X/Ds;-><init>(JJ)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 6665
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6666
    .end local v2    # "builder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6667
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6668
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/0y;->A06([Lcom/facebook/ads/redexgen/X/E9;)[[J

    move-result-object v9

    .line 6669
    .local v1, "trackBitrates":[[J
    array-length v6, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_b

    sget-object v5, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "UXetESR07W40Ugl2KcKxfZnSKo41RBjF"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    new-array v8, v6, [I

    .line 6670
    .local v2, "currentTrackIndices":[I
    array-length v0, v9

    new-array v7, v0, [J

    .line 6671
    .local v6, "currentTrackBitrates":[J
    const/4 v6, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, v9

    if-ge v6, v0, :cond_4

    .line 6672
    aget-object v0, v9, v6

    array-length v11, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_3

    sget-object v5, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "x"

    const/4 v0, 0x7

    aput-object v1, v5, v0

    if-nez v11, :cond_2

    move-wide v0, v2

    :goto_3
    aput-wide v0, v7, v6

    sget-object v5, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v5, v0

    const/4 v0, 0x4

    aget-object v5, v5, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    .line 6673
    sget-object v5, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "cSuX5sbs1mm7BtC5NofnfdI255eKyli3"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const-string v1, "Z411JjDvpqHs7gscP9Mv86ZFtFCMjIgX"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 6674
    :cond_2
    aget-object v1, v9, v6

    const/4 v0, 0x0

    aget-wide v0, v1, v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6675
    .end local v7    # "i":I
    :cond_4
    invoke-static {v4, v7}, Lcom/facebook/ads/redexgen/X/0y;->A05(Ljava/util/List;[J)V

    .line 6676
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/0y;->A02([[J)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v5

    .line 6677
    .local v3, "switchOrder":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 6678
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/Am;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6679
    .local v7, "switchIndex":I
    aget v1, v8, v2

    add-int/2addr v1, v10

    aput v1, v8, v2

    .line 6680
    .local v8, "newTrackIndex":I
    aget-object v0, v9, v2

    aget-wide v0, v0, v1

    aput-wide v0, v7, v2

    .line 6681
    invoke-static {v4, v7}, Lcom/facebook/ads/redexgen/X/0y;->A05(Ljava/util/List;[J)V

    .line 6682
    .end local v7    # "switchIndex":I
    .end local v8    # "newTrackIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 6683
    .end local v4    # "i":I
    :cond_5
    const/4 v5, 0x0

    .restart local v4    # "i":I
    :goto_5
    array-length v0, p0

    if-ge v5, v0, :cond_7

    .line 6684
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6685
    aget-wide v2, v7, v5

    const-wide/16 v0, 0x2

    mul-long/2addr v2, v0

    aput-wide v2, v7, v5

    .line 6686
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 6687
    .end local v4    # "i":I
    :cond_7
    invoke-static {v4, v7}, Lcom/facebook/ads/redexgen/X/0y;->A05(Ljava/util/List;[J)V

    .line 6688
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A01()Lcom/facebook/ads/redexgen/X/1h;

    move-result-object v5

    .line 6689
    .local v4, "output":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "B5d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "E7u"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v3, v6, :cond_a

    .line 6690
    :goto_7
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1h;

    .line 6691
    .local v7, "builder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    if-nez v0, :cond_8

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A03()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    :goto_8
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 6692
    .end local v7    # "builder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 6693
    :cond_8
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1h;->A05()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    goto :goto_8

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "P6lwie0zupyVMIziqYi4GtWsnZGWabHp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "HBKI3D47JNzwp3E4fcvtN9y7FoJFPrZj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v3, v6, :cond_a

    goto :goto_7

    .line 6694
    .end local v5    # "i":I
    :cond_a
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1h;->A05()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A01([Lcom/facebook/ads/redexgen/X/E9;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 0

    .line 6695
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/0y;->A00([Lcom/facebook/ads/redexgen/X/E9;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object p0

    return-object p0
.end method

.method public static A02([[J)Lcom/facebook/ads/redexgen/X/Am;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6696
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oG;->A02()Lcom/facebook/ads/redexgen/X/oF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oF;->A03()Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A00()Lcom/facebook/ads/redexgen/X/Ah;

    move-result-object v5

    .line 6697
    .local v1, "switchPoints":Lcom/facebook/ads/redexgen/X/oE;, "Lcom/google/common/collect/Multimap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    array-length v0, p0

    if-ge v4, v0, :cond_5

    .line 6698
    aget-object v0, p0, v4

    array-length v0, v0

    const/4 v11, 0x1

    if-gt v0, v11, :cond_1

    .line 6699
    .end local v3
    .end local v5
    .end local v10
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6700
    :cond_1
    aget-object v0, p0, v4

    array-length v0, v0

    new-array v3, v0, [D

    .line 6701
    .local v3, "logBitrates":[D
    const/4 v8, 0x0

    .local v5, "j":I
    :goto_1
    aget-object v0, p0, v4

    array-length v0, v0

    const-wide/16 v12, 0x0

    if-ge v8, v0, :cond_3

    .line 6702
    aget-object v0, p0, v4

    aget-wide v6, v0, v8

    const-wide/16 v1, -0x1

    cmp-long v0, v6, v1

    if-nez v0, :cond_2

    :goto_2
    aput-wide v12, v3, v8

    .line 6703
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 6704
    :cond_2
    aget-object v0, p0, v4

    aget-wide v6, v0, v8

    long-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    goto :goto_2

    .line 6705
    .end local v5    # "j":I
    :cond_3
    array-length v0, v3

    sub-int/2addr v0, v11

    aget-wide v9, v3, v0

    const/4 v8, 0x0

    aget-wide v0, v3, v8

    sub-double/2addr v9, v0

    .line 6706
    .local v5, "totalBitrateDiff":D
    const/4 v2, 0x0

    .local v10, "j":I
    :goto_3
    array-length v0, v3

    sub-int/2addr v0, v11

    if-ge v2, v0, :cond_0

    .line 6707
    aget-wide v6, v3, v2

    add-int/lit8 v0, v2, 0x1

    aget-wide v0, v3, v0

    add-double/2addr v6, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v0

    .line 6708
    .local v11, "switchBitrate":D
    cmpl-double v0, v9, v12

    if-nez v0, :cond_4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 6709
    .local v13, "switchPoint":D
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/oE;->AGU(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6710
    .end local v11    # "switchBitrate":D
    .end local v13    # "switchPoint":D
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x1

    goto :goto_3

    .line 6711
    :cond_4
    aget-wide v0, v3, v8

    sub-double/2addr v6, v0

    div-double/2addr v6, v9

    goto :goto_4

    .line 6712
    .end local v2    # "i":I
    :cond_5
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/oE;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A05(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0y;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x59

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0y;->A0H:[B

    return-void

    :array_0
    .array-data 1
        -0x3bt
        -0x18t
        -0x1bt
        -0xct
        -0x8t
        -0x13t
        -0x6t
        -0x17t
        -0x28t
        -0xat
        -0x1bt
        -0x19t
        -0x11t
        -0x29t
        -0x17t
        -0x10t
        -0x17t
        -0x19t
        -0x8t
        -0x13t
        -0xdt
        -0xet
        -0x34t
        -0x11t
        -0xbt
        0x0t
        -0x2t
        -0x1t
        -0xct
        -0x7t
        -0xet
        -0x55t
        -0x8t
        -0xct
        -0x7t
        -0x31t
        0x0t
        -0x3t
        -0x14t
        -0x1t
        -0xct
        -0x6t
        -0x7t
        -0x21t
        -0x6t
        -0x23t
        -0x10t
        -0x1t
        -0x14t
        -0xct
        -0x7t
        -0x34t
        -0xft
        -0x1t
        -0x10t
        -0x3t
        -0x31t
        -0xct
        -0x2t
        -0x12t
        -0x14t
        -0x3t
        -0x11t
        -0x28t
        -0x2t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x13t
        -0x10t
        -0x55t
        -0x14t
        -0x1t
        -0x55t
        -0x9t
        -0x10t
        -0x14t
        -0x2t
        -0x1t
        -0x55t
        -0x8t
        -0xct
        -0x7t
        -0x31t
        0x0t
        -0x3t
        -0x14t
        -0x1t
        -0xct
        -0x6t
        -0x7t
        -0x2ft
        -0x6t
        -0x3t
        -0x24t
        0x0t
        -0x14t
        -0x9t
        -0xct
        -0x1t
        0x4t
        -0x2ct
        -0x7t
        -0x12t
        -0x3t
        -0x10t
        -0x14t
        -0x2t
        -0x10t
        -0x28t
        -0x2t
    .end array-data
.end method

.method public static A05(Ljava/util/List;[J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1h<",
            "Lcom/facebook/ads/redexgen/X/Ds;",
            ">;>;[J)V"
        }
    .end annotation

    .line 6713
    .local v7, "checkPointBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const-wide/16 v2, 0x0

    .line 6714
    .local v0, "totalBitrate":J
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    array-length v0, p1

    if-ge v5, v0, :cond_2

    .line 6715
    aget-wide v6, p1, v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "hzQzkxJwAHZ0fRiIn7Pvrd3jIUiof14p"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    add-long/2addr v2, v6

    .line 6716
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6717
    .end local v2    # "i":I
    :cond_2
    const/4 v7, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 6718
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/1h;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    .line 6719
    .local v3, "builder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    sget-object v4, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "0V4VZlbFayh1Opq7Ah9Nva0ccysrREXP"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-nez v6, :cond_3

    .line 6720
    .end local v3    # "builder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6721
    :cond_3
    aget-wide v4, p1, v7

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ds;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/Ds;-><init>(JJ)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    goto :goto_2

    .line 6722
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public static A06([Lcom/facebook/ads/redexgen/X/E9;)[[J
    .locals 10

    .line 6723
    array-length v0, p0

    new-array v9, v0, [[J

    .line 6724
    .local v0, "trackBitrates":[[J
    const/4 v8, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, p0

    if-ge v8, v0, :cond_5

    .line 6725
    aget-object v7, p0, v8

    .line 6726
    .local v2, "definition":Lcom/facebook/ads/redexgen/X/E9;
    if-nez v7, :cond_0

    .line 6727
    const/4 v0, 0x0

    new-array v0, v0, [J

    aput-object v0, v9, v8

    .line 6728
    .end local v2    # "definition":Lcom/facebook/ads/redexgen/X/E9;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 6729
    :cond_0
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/E9;->A02:[I

    array-length v0, v0

    new-array v3, v0, [J

    sget-object v2, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "e4C"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "lZL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-object v3, v9, v8

    .line 6730
    const/4 v6, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/E9;->A02:[I

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 6731
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/oH;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/E9;->A02:[I

    aget v0, v0, v6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A08(I)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/or;->A05:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/0y;->A0I:[Ljava/lang/String;

    const-string v1, "HL2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "liv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    int-to-long v3, v3

    .line 6732
    .local v4, "bitrate":J
    aget-object v5, v9, v8

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :goto_3
    const-wide/16 v3, 0x0

    :cond_1
    aput-wide v3, v5, v6

    .line 6733
    .end local v4    # "bitrate":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    int-to-long v3, v3

    .line 6734
    .local v4, "bitrate":J
    aget-object v5, v9, v8

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    goto :goto_3

    .line 6735
    .end local v3    # "j":I
    :cond_3
    aget-object v0, v9, v8

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6736
    .end local v1    # "i":I
    :cond_5
    return-object v9
.end method


# virtual methods
.method public final A5p()V
    .locals 1

    .line 6737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0y;->A00:Lcom/facebook/ads/redexgen/X/96;

    .line 6738
    return-void
.end method

.method public final A6C()V
    .locals 2

    .line 6739
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/0y;->A04:J

    .line 6740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0y;->A00:Lcom/facebook/ads/redexgen/X/96;

    .line 6741
    return-void
.end method

.method public final A8v()I
    .locals 1

    .line 6742
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0y;->A03:I

    return v0
.end method

.method public final AEc(F)V
    .locals 0

    .line 6743
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0y;->A01:F

    .line 6744
    return-void
.end method
