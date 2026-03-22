.class public final Lcom/facebook/ads/redexgen/X/7Y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodQueueTracker"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/mL;

.field public A01:Lcom/facebook/ads/redexgen/X/mL;

.field public A02:Lcom/facebook/ads/redexgen/X/mL;

.field public A03:Lcom/facebook/ads/redexgen/X/Am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/mL;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/mj<",
            "Lcom/facebook/ads/redexgen/X/mL;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/oN;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 436
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jkVScMAnmSDw5NjtFKaMDw93YHVTZfVV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X8vR6FaiUrrVUV4OyPqbjTz4nTbdT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DJqg7VUdCo9q2ysxPrWS1RTdTLsj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4FrbkvGGO58oIWN02YSUZA4iQkwc41Il"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lEgbsVLzgPUjgc1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ISDPu1y88m9uUW9z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "L6djBwtYOA2bka2PQ69EdZLSIG4ne"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "x8MPEelqUvAzBLNZGFUUNdgpeh0HUacA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7Y;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oN;)V
    .locals 1

    .line 22000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22001
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A05:Lcom/facebook/ads/redexgen/X/oN;

    .line 22002
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A03()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A03:Lcom/facebook/ads/redexgen/X/Am;

    .line 22003
    invoke-static {}, Lcom/facebook/ads/redexgen/X/mj;->A04()Lcom/facebook/ads/redexgen/X/mj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A04:Lcom/facebook/ads/redexgen/X/mj;

    .line 22004
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/2z;Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/mL;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2z;",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/mL;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/mL;",
            "Lcom/facebook/ads/redexgen/X/oN;",
            ")",
            "Lcom/facebook/ads/redexgen/X/mL;"
        }
    .end annotation

    .line 22005
    .local p4, "mediaPeriodQueue":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->A7Y()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v5

    .line 22006
    .local v6, "playerTimeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->A7U()I

    move-result v4

    .line 22007
    .local v7, "playerPeriodIndex":I
    invoke-virtual {v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v8, v6

    .line 22008
    .local v10, "playerPeriodUid":Ljava/lang/Object;
    :goto_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->AAU()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7Y;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22009
    :cond_0
    invoke-virtual {v5, v4}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0M(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7Y;->A06:[Ljava/lang/String;

    const-string v1, "fPIpfte6042F2VeKOBsTFTkNJVxhR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 22010
    :cond_2
    const/4 v12, -0x1

    .line 22011
    .local p1, "playerNextAdGroupIndex":I
    :goto_1
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_2
    move-object v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 22012
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Am;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/mL;

    .line 22013
    .local v1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/mL;
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->AAU()Z

    move-result v9

    .line 22014
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->A7Q()I

    move-result v10

    .line 22015
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->A7R()I

    move-result v11

    .line 22016
    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7Y;->A04(Lcom/facebook/ads/redexgen/X/mL;Ljava/lang/Object;ZIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22017
    return-object v7

    .line 22018
    .end local v1    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/mL;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22019
    :cond_4
    move-object/from16 v7, p3

    invoke-virtual {v5, v4, v7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v4

    .line 22020
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->A7W()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/oN;->A0C()J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 22021
    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/oN;->A07(J)I

    move-result v12

    goto :goto_1

    .line 22022
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Am;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v7, p2

    if-eqz v7, :cond_6

    .line 22023
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->AAU()Z

    move-result v9

    .line 22024
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->A7Q()I

    move-result v10

    .line 22025
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/2z;->A7R()I

    move-result v11

    .line 22026
    move-object v8, v8

    move v12, v12

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7Y;->A04(Lcom/facebook/ads/redexgen/X/mL;Ljava/lang/Object;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22027
    return-object v7

    .line 22028
    :cond_6
    return-object v6
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7Y;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 0

    .line 22029
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A03:Lcom/facebook/ads/redexgen/X/Am;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "builder of ImmutableMap should be a buildOrThrow"
    .end annotation

    .line 22030
    invoke-static {}, Lcom/facebook/ads/redexgen/X/mj;->A03()Lcom/facebook/ads/redexgen/X/mh;

    move-result-object v3

    .line 22031
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/mh;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Lcom/facebook/ads/androidx/media3/common/Timeline;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A03:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A03(Lcom/facebook/ads/redexgen/X/mh;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22033
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7Y;->A02:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/mL;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7Y;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7Y;->A06:[Ljava/lang/String;

    const-string v1, "UxUdIKnoAyUMpq9t4QIr4fpxRPT3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "6BCX8szW2uTmGViuSf00Yq1AObOIr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/BX;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A02:Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A03(Lcom/facebook/ads/redexgen/X/mh;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22035
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/mL;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A02:Lcom/facebook/ads/redexgen/X/mL;

    .line 22036
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A03(Lcom/facebook/ads/redexgen/X/mh;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22038
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/mh;->A07()Lcom/facebook/ads/redexgen/X/mj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A04:Lcom/facebook/ads/redexgen/X/mj;

    .line 22039
    return-void

    .line 22040
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A03:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 22041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A03:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Am;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A03(Lcom/facebook/ads/redexgen/X/mh;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22042
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22043
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A03:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/mL;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A03(Lcom/facebook/ads/redexgen/X/mh;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/mh;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/mh<",
            "Lcom/facebook/ads/redexgen/X/mL;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/mL;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ")V"
        }
    .end annotation

    .line 22045
    .local p1, "mediaPeriodTimelinesBuilder":Lcom/facebook/ads/redexgen/X/mh;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Lcom/facebook/ads/androidx/media3/common/Timeline;>;"
    if-nez p2, :cond_0

    .line 22046
    return-void

    .line 22047
    :cond_0
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 22048
    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/mh;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/mh;

    .line 22049
    .end local v0
    :cond_1
    :goto_0
    return-void

    .line 22050
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A04:Lcom/facebook/ads/redexgen/X/mj;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/mj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 22051
    .local v0, "existingTimeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    if-eqz v0, :cond_1

    .line 22052
    invoke-virtual {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/mh;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/mh;

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/mL;Ljava/lang/Object;ZIII)Z
    .locals 3

    .line 22053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 22054
    return v2

    .line 22055
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    if-eq v0, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    if-ne v0, p5, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/androidx/media3/common/Timeline;
    .locals 1

    .line 22056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A04:Lcom/facebook/ads/redexgen/X/mj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/mj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/common/Timeline;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/mL;
    .locals 1

    .line 22057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/mL;

    return-object v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/2z;)V
    .locals 3

    .line 22058
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Y;->A03:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A01:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A05:Lcom/facebook/ads/redexgen/X/oN;

    .line 22059
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7Y;->A00(Lcom/facebook/ads/redexgen/X/2z;Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/mL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/mL;

    .line 22060
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/2z;->A7Y()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7Y;->A02(Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 22061
    return-void
.end method
