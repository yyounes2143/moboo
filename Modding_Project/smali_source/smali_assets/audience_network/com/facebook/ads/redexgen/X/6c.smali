.class public final Lcom/facebook/ads/redexgen/X/6c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/6Y;

.field public A05:Lcom/facebook/ads/redexgen/X/6Y;

.field public A06:Lcom/facebook/ads/redexgen/X/6Y;

.field public A07:Ljava/lang/Object;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/oN;

.field public final A0A:Lcom/facebook/ads/redexgen/X/oL;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 396
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ytES6GjYCCZeLRsctY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JAF1Tg0UjyffIggj5BNMmxVlRkgdhjMr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rlk3ZCySajOx3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MCGN0v"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6TmcGiXQ57FFOBCo2j"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Z1k2a4cknNke6aCh8ssxRFJ66FmodiBm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18072
    new-instance v0, Lcom/facebook/ads/redexgen/X/oN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    .line 18073
    new-instance v0, Lcom/facebook/ads/redexgen/X/oL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A0A:Lcom/facebook/ads/redexgen/X/oL;

    .line 18074
    return-void
.end method

.method private A00(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;)J
    .locals 5

    .line 18075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {p1, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    iget v4, v0, Lcom/facebook/ads/redexgen/X/oN;->A00:I

    .line 18076
    .local v0, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A07:Ljava/lang/Object;

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 18077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A07:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    .line 18078
    .local v1, "oldFrontPeriodIndex":I
    if-eq v1, v3, :cond_0

    .line 18079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oN;->A00:I

    .line 18080
    .local v3, "oldFrontWindowIndex":I
    if-ne v0, v4, :cond_0

    .line 18081
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A03:J

    return-wide v0

    .line 18082
    .end local v1    # "oldFrontPeriodIndex":I
    .end local v3    # "oldFrontWindowIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6c;->A0D()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v1

    .line 18083
    .local v1, "mediaPeriodHolder":Lcom/facebook/ads/redexgen/X/6Y;
    :goto_0
    if-eqz v1, :cond_2

    .line 18084
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A08:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18085
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    return-wide v0

    .line 18086
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v1

    goto :goto_0

    .line 18087
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6c;->A0D()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v2

    .line 18088
    :goto_1
    if-eqz v2, :cond_4

    .line 18089
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6Y;->A08:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    .line 18090
    .local v3, "indexOfHolderInTimeline":I
    if-eq v1, v3, :cond_3

    .line 18091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oN;->A00:I

    .line 18092
    .local v4, "holderWindowIndex":I
    if-ne v0, v4, :cond_3

    .line 18093
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    return-wide v0

    .line 18094
    .end local v4    # "holderWindowIndex":I
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v2

    .line 18095
    .end local v3    # "indexOfHolderInTimeline":I
    goto :goto_1

    .line 18096
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/6c;->A02:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A02:J

    return-wide v2
.end method

.method private A01(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/6Y;J)Lcom/facebook/ads/redexgen/X/6Z;
    .locals 17

    .line 18097
    move-object/from16 v0, p0

    move-object/from16 v5, p2

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    .line 18098
    .local v12, "mediaPeriodInfo":Lcom/facebook/ads/redexgen/X/6Z;
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    const/4 v2, -0x1

    const/4 v6, 0x0

    move-object/from16 v9, p1

    if-eqz v1, :cond_5

    .line 18099
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    invoke-virtual {v9, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v10

    .line 18100
    .local v13, "currentPeriodIndex":I
    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/6c;->A0A:Lcom/facebook/ads/redexgen/X/oL;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/6c;->A01:I

    iget-boolean v14, v0, Lcom/facebook/ads/redexgen/X/6c;->A08:Z

    .line 18101
    move-object v9, v9

    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/oN;Lcom/facebook/ads/redexgen/X/oL;IZ)I

    move-result v4

    .line 18102
    .local v14, "nextPeriodIndex":I
    if-ne v4, v2, :cond_0

    .line 18103
    return-object v6

    .line 18104
    :cond_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    .line 18105
    const/4 v1, 0x1

    invoke-virtual {v9, v4, v2, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/oN;Z)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v1

    iget v12, v1, Lcom/facebook/ads/redexgen/X/oN;->A00:I

    .line 18106
    .local v15, "nextWindowIndex":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/oN;->A04:Ljava/lang/Object;

    .line 18107
    .local v6, "nextPeriodUid":Ljava/lang/Object;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v13, v1, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    .line 18108
    .local v4, "windowSequenceNumber":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6c;->A0A:Lcom/facebook/ads/redexgen/X/oL;

    invoke-virtual {v9, v12, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v1

    iget v1, v1, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    if-ne v1, v4, :cond_4

    .line 18109
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6Y;->A0B()J

    move-result-wide v1

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    add-long/2addr v1, v3

    sub-long v1, v1, p3

    .line 18110
    .local v2, "defaultPositionProjectionUs":J
    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/6c;->A0A:Lcom/facebook/ads/redexgen/X/oL;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    .line 18111
    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 18112
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .end local v2    # "defaultPositionProjectionUs":J
    .local p2, "defaultPositionProjectionUs":J
    .end local v4    # "windowSequenceNumber":J
    .local p4, "windowSequenceNumber":J
    .end local v6    # "nextPeriodUid":Ljava/lang/Object;
    .local p0, "nextPeriodUid":Ljava/lang/Object;
    invoke-virtual/range {v9 .. v16}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0F(Lcom/facebook/ads/redexgen/X/oL;Lcom/facebook/ads/redexgen/X/oN;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 18113
    .local v0, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v0, :cond_1

    .line 18114
    const/4 v0, 0x0

    return-object v0

    .line 18115
    :cond_1
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 18116
    .end local p0    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v6    # "nextPeriodUid":Ljava/lang/Object;
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 18117
    .local v1, "startPositionUs":J
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v1

    .line 18118
    .local v3, "nextMediaPeriodHolder":Lcom/facebook/ads/redexgen/X/6Y;
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A08:Ljava/lang/Object;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18119
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    move-object/from16 v0, p0

    .end local p4    # "windowSequenceNumber":J
    .restart local v4    # "windowSequenceNumber":J
    goto :goto_0

    .line 18120
    .end local v4    # "windowSequenceNumber":J
    .restart local p4    # "windowSequenceNumber":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/6c;->A02:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v13

    sget-object v5, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v4, v5, v3

    const/4 v3, 0x4

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v4, "5yy5YdDharfiXP"

    const/4 v3, 0x0

    aput-object v4, v5, v3

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/6c;->A02:J

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18121
    .end local v1    # "startPositionUs":J
    .end local v4
    .end local v6    # "nextPeriodUid":Ljava/lang/Object;
    .restart local p0    # "nextPeriodUid":Ljava/lang/Object;
    .restart local p4    # "windowSequenceNumber":J
    :cond_4
    const-wide/16 v11, 0x0

    .line 18122
    .local v7, "startPositionUs":J
    :goto_0
    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    .line 18123
    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/6c;->A06(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJLcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/mL;

    move-result-object v10

    .line 18124
    .local v16, "periodId":Lcom/facebook/ads/redexgen/X/mL;
    move-object/from16 v8, p0

    move-wide v13, v11

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/6c;->A02(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    return-object v0

    .line 18125
    .end local v7    # "startPositionUs":J
    .end local v13    # "currentPeriodIndex":I
    .end local v14    # "nextPeriodIndex":I
    .end local v15    # "nextWindowIndex":I
    .end local v16    # "periodId":Lcom/facebook/ads/redexgen/X/mL;
    .end local p0    # "nextPeriodUid":Ljava/lang/Object;
    .end local p4    # "windowSequenceNumber":J
    :cond_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    .line 18126
    .local v13, "currentPeriodId":Lcom/facebook/ads/redexgen/X/mL;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v9, v5, v4}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    .line 18127
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2a;->A00()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 18128
    iget v11, v1, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    .line 18129
    .local v14, "adGroupIndex":I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v4, v11}, Lcom/facebook/ads/redexgen/X/oN;->A04(I)I

    move-result v5

    .line 18130
    .local v15, "adCountInCurrentAdGroup":I
    if-ne v5, v2, :cond_7

    .line 18131
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 18132
    :cond_7
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    .line 18133
    invoke-virtual {v4, v11, v2}, Lcom/facebook/ads/redexgen/X/oN;->A06(II)I

    move-result v12

    .line 18134
    .local v7, "nextAdIndexInAdGroup":I
    if-ge v12, v5, :cond_9

    .line 18135
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0, v11, v12}, Lcom/facebook/ads/redexgen/X/oN;->A0I(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18136
    const/4 v0, 0x0

    .line 18137
    :goto_1
    return-object v0

    .line 18138
    :cond_8
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-wide v13, v3, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    iget-wide v15, v1, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    move-object/from16 v8, p0

    .end local v7    # "nextAdIndexInAdGroup":I
    .local p1, "nextAdIndexInAdGroup":I
    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/6c;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    goto :goto_1

    .line 18139
    .end local p1    # "nextAdIndexInAdGroup":I
    .restart local v7    # "nextAdIndexInAdGroup":I
    :cond_9
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-wide v11, v3, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    iget-wide v13, v1, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/6c;->A04(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    return-object v0

    .line 18140
    .end local v7    # "nextAdIndexInAdGroup":I
    .end local v14    # "adGroupIndex":I
    .end local v15    # "adCountInCurrentAdGroup":I
    :cond_a
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v6, v4, v7

    if-eqz v6, :cond_d

    .line 18141
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    invoke-virtual {v6, v4, v5}, Lcom/facebook/ads/redexgen/X/oN;->A08(J)I

    move-result v11

    .line 18142
    .local v14, "nextAdGroupIndex":I
    if-ne v11, v2, :cond_b

    .line 18143
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-wide v11, v3, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    iget-wide v13, v1, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/6c;->A04(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    return-object v0

    .line 18144
    :cond_b
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/oN;->A05(I)I

    move-result v12

    .line 18145
    .local v15, "adIndexInAdGroup":I
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0, v11, v12}, Lcom/facebook/ads/redexgen/X/oN;->A0I(II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 18146
    const/4 v0, 0x0

    .line 18147
    :goto_2
    return-object v0

    .line 18148
    :cond_c
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-wide v13, v3, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    iget-wide v15, v1, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/6c;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    goto :goto_2

    .line 18149
    .end local v14    # "nextAdGroupIndex":I
    .end local v15    # "adIndexInAdGroup":I
    :cond_d
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/oN;->A03()I

    move-result v2

    .line 18150
    .local v14, "adGroupCount":I
    if-nez v2, :cond_e

    .line 18151
    const/4 v0, 0x0

    return-object v0

    .line 18152
    :cond_e
    add-int/lit8 v11, v2, -0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x6b

    if-eq v3, v2, :cond_10

    .line 18153
    .local v15, "adGroupIndex":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/oN;->A0D(I)J

    move-result-wide v3

    cmp-long v2, v3, v7

    if-nez v2, :cond_f

    :goto_3
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    .line 18154
    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/oN;->A0H(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 18155
    .end local v16
    .end local p3    # null:J
    :cond_f
    const/4 v0, 0x0

    return-object v0

    .line 18156
    .local v15, "adGroupIndex":I
    :cond_10
    sget-object v4, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v3, "u0JZC9rSowd61rcMlDOlOE"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/oN;->A0D(I)J

    move-result-wide v3

    cmp-long v2, v3, v7

    if-nez v2, :cond_f

    goto :goto_3

    .line 18157
    :cond_11
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v2, v11}, Lcom/facebook/ads/redexgen/X/oN;->A05(I)I

    move-result v12

    .line 18158
    .local v7, "adIndexInAdGroup":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v2, v11, v12}, Lcom/facebook/ads/redexgen/X/oN;->A0I(II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 18159
    const/4 v0, 0x0

    return-object v0

    .line 18160
    :cond_12
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oN;->A0A()J

    move-result-wide v13

    .line 18161
    .local v16, "contentDurationUs":J
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-wide v15, v1, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    move-object/from16 v8, p0

    .end local v7    # "adIndexInAdGroup":I
    .local p3, "adIndexInAdGroup":I
    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/6c;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJ)Lcom/facebook/ads/redexgen/X/6Z;
    .locals 11

    .line 18162
    move-object v2, p0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    move-object v3, p1

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    .line 18163
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/2a;->A00()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18164
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget v1, p2, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oN;->A0I(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18165
    const/4 v0, 0x0

    return-object v0

    .line 18166
    :cond_0
    iget-object v4, p2, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget v5, p2, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    iget v6, p2, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    iget-wide v9, p2, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    move-object v2, p0

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/6c;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    return-object v0

    .line 18167
    :cond_1
    iget-object v4, p2, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-wide v7, p2, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    move-object v2, p0

    move-wide/from16 v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/6c;->A04(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Lcom/facebook/ads/redexgen/X/6Z;
    .locals 17

    .line 18168
    move-object/from16 v3, p0

    new-instance v6, Lcom/facebook/ads/redexgen/X/mL;

    move-wide/from16 v10, p7

    move/from16 v4, p4

    move/from16 v5, p3

    move-object/from16 v7, p2

    move-object v6, v6

    move v8, v5

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/mL;-><init>(Ljava/lang/Object;IIJ)V

    .line 18169
    .local v2, "id":Lcom/facebook/ads/redexgen/X/mL;
    const-wide/high16 v0, -0x8000000000000000L

    move-object/from16 v2, p1

    invoke-direct {v3, v2, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/6c;->A08(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;J)Z

    move-result v15

    .line 18170
    .local v3, "isLastInPeriod":Z
    invoke-direct {v3, v2, v6, v15}, Lcom/facebook/ads/redexgen/X/6c;->A09(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;Z)Z

    move-result v16

    .line 18171
    .local v4, "isLastInTimeline":Z
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    .line 18172
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    .line 18173
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oN;->A0E(II)J

    move-result-wide v13

    .line 18174
    .local v5, "durationUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/oN;->A05(I)I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 18175
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "btiW32P1CxlKUaykVb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "aD0NnH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/oN;->A09()J

    move-result-wide v7

    .line 18176
    .local v11, "startPositionUs":J
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/6Z;

    const-wide/high16 v9, -0x8000000000000000L

    move-wide/from16 v11, p5

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/6Z;-><init>(Lcom/facebook/ads/redexgen/X/mL;JJJJZZ)V

    return-object v5

    .line 18177
    :cond_0
    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJ)Lcom/facebook/ads/redexgen/X/6Z;
    .locals 20

    .line 18178
    move-object/from16 v3, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/mL;

    move-wide/from16 v0, p5

    move-object/from16 v2, p2

    invoke-direct {v9, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/mL;-><init>(Ljava/lang/Object;J)V

    .line 18179
    .local v2, "id":Lcom/facebook/ads/redexgen/X/mL;
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    .line 18180
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    move-wide/from16 v10, p3

    invoke-virtual {v0, v10, v11}, Lcom/facebook/ads/redexgen/X/oN;->A07(J)I

    move-result v6

    .line 18181
    .local v10, "nextAdGroupIndex":I
    const/4 v0, -0x1

    const-wide/high16 v7, -0x8000000000000000L

    if-ne v6, v0, :cond_1

    .line 18182
    move-wide v12, v7

    .line 18183
    .local v14, "endUs":J
    :goto_0
    invoke-direct {v3, v4, v9, v12, v13}, Lcom/facebook/ads/redexgen/X/6c;->A08(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;J)Z

    move-result v1

    .line 18184
    .local v11, "isLastInPeriod":Z
    invoke-direct {v3, v4, v9, v1}, Lcom/facebook/ads/redexgen/X/6c;->A09(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;Z)Z

    move-result v19

    .line 18185
    .local v18, "isLastInTimeline":Z
    cmp-long v0, v12, v7

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oN;->A0A()J

    move-result-wide v16

    .line 18186
    .end local v14    # "endUs":J
    .local v19, "endUs":J
    .local v14, "durationUs":J
    :goto_1
    new-instance v8, Lcom/facebook/ads/redexgen/X/6Z;

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .end local v10    # "nextAdGroupIndex":I
    .end local v11    # "isLastInPeriod":Z
    .local p2, "nextAdGroupIndex":I
    .local p3, "isLastInPeriod":Z
    move/from16 v18, v1

    invoke-direct/range {v8 .. v19}, Lcom/facebook/ads/redexgen/X/6Z;-><init>(Lcom/facebook/ads/redexgen/X/mL;JJJJZZ)V

    return-object v8

    .line 18187
    :cond_0
    move-wide/from16 v16, v12

    goto :goto_1

    .line 18188
    :cond_1
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "hcjC8Oe5bspAHclLrN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "7U4c4Z"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/oN;->A0D(I)J

    move-result-wide v12

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/6x;)Lcom/facebook/ads/redexgen/X/6Z;
    .locals 7

    .line 18189
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/6x;->A05:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/6x;->A01:J

    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/6x;->A02:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/6c;->A02(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;JJ)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJLcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/mL;
    .locals 0

    .line 18190
    invoke-virtual {p0, p1, p6}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    .line 18191
    invoke-virtual {p6, p2, p3}, Lcom/facebook/ads/redexgen/X/oN;->A08(J)I

    move-result p2

    .line 18192
    .local p6, "adGroupIndex":I
    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    .line 18193
    new-instance p0, Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {p0, p1, p4, p5}, Lcom/facebook/ads/redexgen/X/mL;-><init>(Ljava/lang/Object;J)V

    return-object p0

    .line 18194
    :cond_0
    invoke-virtual {p6, p2}, Lcom/facebook/ads/redexgen/X/oN;->A05(I)I

    move-result p3

    .line 18195
    .local p7, "adIndexInAdGroup":I
    new-instance p0, Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/mL;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private A07(Lcom/facebook/ads/androidx/media3/common/Timeline;)Z
    .locals 12

    .line 18196
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6c;->A0D()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v3

    .line 18197
    .local v0, "lastValidPeriodHolder":Lcom/facebook/ads/redexgen/X/6Y;
    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 18198
    return v5

    .line 18199
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A08:Ljava/lang/Object;

    move-object v6, p1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "XXauRi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    .line 18200
    .local v8, "currentPeriodIndex":I
    :goto_0
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/6c;->A0A:Lcom/facebook/ads/redexgen/X/oL;

    iget v10, p0, Lcom/facebook/ads/redexgen/X/6c;->A01:I

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/6c;->A08:Z

    .line 18201
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/oN;Lcom/facebook/ads/redexgen/X/oL;IZ)I

    move-result v7

    .line 18202
    .local v2, "nextPeriodIndex":I
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    if-nez v0, :cond_1

    .line 18203
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v3

    goto :goto_1

    .line 18204
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v1

    .line 18205
    .local v3, "nextMediaPeriodHolder":Lcom/facebook/ads/redexgen/X/6Y;
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    if-nez v1, :cond_6

    .line 18206
    :cond_2
    :goto_2
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/6c;->A0S(Lcom/facebook/ads/redexgen/X/6Y;)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 18207
    .local v2, "readingPeriodRemoved":Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    invoke-virtual {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/6c;->A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/6Z;)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    .line 18208
    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6c;->A0N()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_4
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 18209
    .local v2, "readingPeriodRemoved":Z
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "90zfs8gzmg4UDoZfId"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "a4jnrj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    invoke-virtual {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/6c;->A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/6Z;)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    .line 18210
    if-eqz v4, :cond_3

    goto :goto_3

    .line 18211
    :cond_6
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A08:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v0

    .line 18212
    .local v4, "nextPeriodHolderPeriodIndex":I
    if-eq v0, v7, :cond_7

    goto :goto_2

    .line 18213
    :cond_7
    move-object v3, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18214
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "Cr1P4n0WQ70sIc2hdXVlmIoPdJb3W1mn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 18215
    .end local v2    # "readingPeriodRemoved":Z
    .end local v3    # "nextMediaPeriodHolder":Lcom/facebook/ads/redexgen/X/6Y;
    .end local v4    # "nextPeriodHolderPeriodIndex":I
    goto/16 :goto_0
.end method

.method private A08(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;J)Z
    .locals 10

    .line 18216
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oN;->A03()I

    move-result v0

    .line 18217
    .local v0, "adGroupCount":I
    const/4 v9, 0x1

    if-nez v0, :cond_0

    .line 18218
    return v9

    .line 18219
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 18220
    .local v2, "lastAdGroupIndex":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/2a;->A00()Z

    move-result v8

    .line 18221
    .local v3, "isAd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/oN;->A0D(I)J

    move-result-wide v6

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v1, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    .line 18222
    if-nez v8, :cond_1

    cmp-long v0, p3, v4

    if-nez v0, :cond_1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 18223
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/oN;->A04(I)I

    move-result v2

    .line 18224
    .local v4, "postrollAdCount":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    .line 18225
    return v1

    .line 18226
    :cond_3
    if-eqz v8, :cond_6

    iget v0, p2, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    if-ne v0, v3, :cond_6

    iget v1, p2, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    add-int/lit8 v0, v2, -0x1

    if-ne v1, v0, :cond_6

    const/4 v0, 0x1

    .line 18227
    .local v5, "isLastAd":Z
    :goto_1
    if-nez v0, :cond_4

    if-nez v8, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/oN;->A05(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    :cond_4
    :goto_2
    return v9

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 18228
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A09(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;Z)Z
    .locals 8

    .line 18229
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    move-object v2, p1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v3

    .line 18230
    .local v0, "periodIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v2, v3, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/oN;->A00:I

    .line 18231
    .local v7, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A0A:Lcom/facebook/ads/redexgen/X/oL;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/oL;->A0D:Z

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/6c;->A0A:Lcom/facebook/ads/redexgen/X/oL;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/6c;->A01:I

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/6c;->A08:Z

    .line 18232
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0O(ILcom/facebook/ads/redexgen/X/oN;Lcom/facebook/ads/redexgen/X/oL;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 18233
    :goto_0
    return v0

    .line 18234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/6Y;Lcom/facebook/ads/redexgen/X/6Z;)Z
    .locals 6

    .line 18235
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    .line 18236
    .local v0, "periodHolderInfo":Lcom/facebook/ads/redexgen/X/6Z;
    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    .line 18237
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 18238
    :goto_0
    return v0

    .line 18239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0B()Lcom/facebook/ads/redexgen/X/6Y;
    .locals 4

    .line 18240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    if-eqz v0, :cond_2

    .line 18241
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    if-ne v1, v0, :cond_0

    .line 18242
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "cSlSOVjTMxyZvCYIIsIM7Z4RVriFSMIi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18243
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Y;->A0M()V

    .line 18244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18245
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    .line 18246
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    if-nez v0, :cond_1

    .line 18247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18248
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "hdbErrckm1X5j4dXkt1ObCB8O8NcABpS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    .line 18249
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "prScRK6qkOjWt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C()Lcom/facebook/ads/redexgen/X/6Y;
    .locals 1

    .line 18251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 18252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    return-object v0

    .line 18254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/6Y;
    .locals 1

    .line 18255
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6c;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    goto :goto_0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/6Y;
    .locals 1

    .line 18256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/6Y;
    .locals 1

    .line 18257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/6Y;
    .locals 1

    .line 18258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    return-object v0
.end method

.method public final A0H(JLcom/facebook/ads/redexgen/X/6x;)Lcom/facebook/ads/redexgen/X/6Z;
    .locals 2

    .line 18259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    if-nez v0, :cond_0

    .line 18260
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/6c;->A05(Lcom/facebook/ads/redexgen/X/6x;)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    .line 18261
    :goto_0
    return-object v0

    .line 18262
    :cond_0
    iget-object v1, p3, Lcom/facebook/ads/redexgen/X/6x;->A03:Lcom/facebook/ads/androidx/media3/common/Timeline;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6c;->A01(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/6Y;J)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/6Z;)Lcom/facebook/ads/redexgen/X/6Z;
    .locals 12

    .line 18263
    move-object v3, p0

    iget-wide v4, p2, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    .line 18264
    .local p2, "endPositionUs":J
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {v3, p1, v0, v4, v5}, Lcom/facebook/ads/redexgen/X/6c;->A08(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;J)Z

    move-result v10

    .line 18265
    .local p1, "isLastInPeriod":Z
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {v3, p1, v0, v10}, Lcom/facebook/ads/redexgen/X/6c;->A09(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;Z)Z

    move-result v11

    .line 18266
    .local p4, "isLastInTimeline":Z
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    .line 18267
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2a;->A00()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18268
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oN;->A0E(II)J

    move-result-wide v8

    .line 18269
    .local v11, "durationUs":J
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/6Z;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    iget-wide v6, p2, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    .end local p1    # "isLastInPeriod":Z
    .local p6, "isLastInPeriod":Z
    .end local p2    # "endPositionUs":J
    .local p7, "endPositionUs":J
    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/6Z;-><init>(Lcom/facebook/ads/redexgen/X/mL;JJJJZZ)V

    return-object v0

    .line 18270
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oN;->A0A()J

    move-result-wide v8

    goto :goto_0

    :cond_1
    move-wide v8, v4

    goto :goto_0
.end method

.method public final A0J([Lcom/facebook/ads/redexgen/X/7D;JLcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/CL;Lcom/facebook/ads/redexgen/X/6Z;Lcom/facebook/ads/redexgen/X/EL;)Lcom/facebook/ads/redexgen/X/mM;
    .locals 12

    .line 18271
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    move-object/from16 v10, p7

    if-nez v0, :cond_1

    .line 18272
    iget-wide v5, v10, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    add-long/2addr v5, p2

    .line 18273
    .local v4, "rendererPositionOffsetUs":J
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/6Y;

    move-object/from16 v11, p8

    move-object/from16 v8, p5

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/6Y;-><init>([Lcom/facebook/ads/redexgen/X/7D;JLcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/CL;Lcom/facebook/ads/redexgen/X/6Z;Lcom/facebook/ads/redexgen/X/EL;)V

    .line 18274
    .local v2, "newPeriodHolder":Lcom/facebook/ads/redexgen/X/6Y;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    if-eqz v0, :cond_0

    .line 18275
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6c;->A0N()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 18276
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6Y;->A0Q(Lcom/facebook/ads/redexgen/X/6Y;)V

    .line 18277
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A07:Ljava/lang/Object;

    .line 18278
    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18279
    iget v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    .line 18280
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    return-object v0

    .line 18281
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Y;->A0B()J

    move-result-wide v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    add-long/2addr v5, v0

    goto :goto_0
.end method

.method public final A0K(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;J)Lcom/facebook/ads/redexgen/X/mL;
    .locals 7

    .line 18282
    move-object v1, p2

    move-object v0, p1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6c;->A00(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    .line 18283
    .local p0, "windowSequenceNumber":J
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/6c;->A06(Lcom/facebook/ads/androidx/media3/common/Timeline;Ljava/lang/Object;JJLcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/mL;

    move-result-object v0

    return-object v0
.end method

.method public final A0L(J)V
    .locals 1

    .line 18284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    if-eqz v0, :cond_0

    .line 18285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6Y;->A0P(J)V

    .line 18286
    :cond_0
    return-void
.end method

.method public final A0M(Z)V
    .locals 4

    .line 18287
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6c;->A0D()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v3

    .line 18288
    .local v0, "front":Lcom/facebook/ads/redexgen/X/6Y;
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    .line 18289
    if-eqz p1, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A08:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A07:Ljava/lang/Object;

    .line 18290
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A03:J

    .line 18291
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6Y;->A0M()V

    .line 18292
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/6c;->A0S(Lcom/facebook/ads/redexgen/X/6Y;)Z

    .line 18293
    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18294
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18295
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18296
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    .line 18297
    return-void

    .line 18298
    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 18299
    :cond_2
    if-nez p1, :cond_0

    .line 18300
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/6c;->A07:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final A0N()Z
    .locals 1

    .line 18301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0O()Z
    .locals 6

    .line 18302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A05:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18303
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Y;->A0R()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "WQJhcBpqvfFlde6mvMcdcISTeYvrM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 18304
    :goto_0
    return v0

    .line 18305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0P(Lcom/facebook/ads/androidx/media3/common/Timeline;I)Z
    .locals 1

    .line 18306
    iput p2, p0, Lcom/facebook/ads/redexgen/X/6c;->A01:I

    .line 18307
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6c;->A07(Lcom/facebook/ads/androidx/media3/common/Timeline;)Z

    move-result v0

    return v0
.end method

.method public final A0Q(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/mL;J)Z
    .locals 13

    .line 18308
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    move-object v7, p1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v8

    .line 18309
    .local v0, "periodIndex":I
    const/4 v4, 0x0

    .line 18310
    .local v1, "previousPeriodHolder":Lcom/facebook/ads/redexgen/X/6Y;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6c;->A0D()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v3

    .line 18311
    .local v2, "periodHolder":Lcom/facebook/ads/redexgen/X/6Y;
    :goto_0
    const/4 v6, 0x1

    if-eqz v3, :cond_7

    .line 18312
    if-nez v4, :cond_2

    .line 18313
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    invoke-virtual {p0, v7, v0}, Lcom/facebook/ads/redexgen/X/6c;->A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/6Z;)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    .line 18314
    .end local v4
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    if-eqz v0, :cond_1

    .line 18315
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/6c;->A09:Lcom/facebook/ads/redexgen/X/oN;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/6c;->A0A:Lcom/facebook/ads/redexgen/X/oL;

    iget v11, p0, Lcom/facebook/ads/redexgen/X/6c;->A01:I

    iget-boolean v12, p0, Lcom/facebook/ads/redexgen/X/6c;->A08:Z

    .line 18316
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/oN;Lcom/facebook/ads/redexgen/X/oL;IZ)I

    move-result v8

    .line 18317
    :cond_1
    move-object v4, v3

    .line 18318
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v3

    goto :goto_0

    .line 18319
    :cond_2
    const/4 v0, -0x1

    if-eq v8, v0, :cond_3

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/6Y;->A08:Ljava/lang/Object;

    .line 18320
    invoke-virtual {v7, v8}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0M(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/6c;->A0B:[Ljava/lang/String;

    const-string v1, "ytUDxXblB5dYuzkyb9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "n5GR8r"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_4

    .line 18321
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/6c;->A0S(Lcom/facebook/ads/redexgen/X/6Y;)Z

    move-result v0

    xor-int/2addr v6, v0

    return v6

    .line 18322
    :cond_4
    move-wide/from16 v0, p3

    invoke-direct {p0, v7, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/6c;->A01(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/6Y;J)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v1

    .line 18323
    .local v4, "periodInfo":Lcom/facebook/ads/redexgen/X/6Z;
    if-nez v1, :cond_5

    .line 18324
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/6c;->A0S(Lcom/facebook/ads/redexgen/X/6Y;)Z

    move-result v0

    xor-int/2addr v6, v0

    return v6

    .line 18325
    :cond_5
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    invoke-virtual {p0, v7, v0}, Lcom/facebook/ads/redexgen/X/6c;->A0I(Lcom/facebook/ads/androidx/media3/common/Timeline;Lcom/facebook/ads/redexgen/X/6Z;)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    .line 18326
    invoke-direct {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/6c;->A0A(Lcom/facebook/ads/redexgen/X/6Y;Lcom/facebook/ads/redexgen/X/6Z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18327
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/6c;->A0S(Lcom/facebook/ads/redexgen/X/6Y;)Z

    move-result v0

    xor-int/2addr v6, v0

    return v6

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18328
    :cond_7
    return v6
.end method

.method public final A0R(Lcom/facebook/ads/androidx/media3/common/Timeline;Z)Z
    .locals 1

    .line 18329
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/6c;->A08:Z

    .line 18330
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6c;->A07(Lcom/facebook/ads/androidx/media3/common/Timeline;)Z

    move-result v0

    return v0
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/6Y;)Z
    .locals 3

    .line 18331
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 18332
    const/4 v2, 0x0

    .line 18333
    .local v1, "removedReading":Z
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18334
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18335
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6Y;->A0I()Lcom/facebook/ads/redexgen/X/6Y;

    move-result-object p1

    .line 18336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    if-ne p1, v0, :cond_0

    .line 18337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A05:Lcom/facebook/ads/redexgen/X/6Y;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A06:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18338
    const/4 v2, 0x1

    .line 18339
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6Y;->A0M()V

    .line 18340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A00:I

    goto :goto_1

    .line 18341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 18342
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6Y;->A0Q(Lcom/facebook/ads/redexgen/X/6Y;)V

    .line 18343
    return v2
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/mM;)Z
    .locals 1

    .line 18344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6c;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
