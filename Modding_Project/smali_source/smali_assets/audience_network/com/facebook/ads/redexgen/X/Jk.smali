.class public final Lcom/facebook/ads/redexgen/X/Jk;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jk;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/Jk;

.field public final A04:Lcom/facebook/ads/redexgen/X/Jr;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/lang/String;

.field public final A09:Z

.field public final A0A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 855
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GeuvjWmU0qMIecUET3rH1sSpSiCCpV8d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VWuGBdV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "r1UddSi70yifv9lgmWBFhDm81yvqf6sz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XTFXH6doUzlPXpn0lOcCpEMXSJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Gs3RvICYSdgYtTZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LUo1PxiU5xdJ1hZxjmijWXp8gfNxa8cO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PBxwyL5R7nlTE13P8yY94OOBBe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AYtcaoWRC0gFrEQm0SEPSBapgfKgyhaj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jk;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Jr;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jk;)V
    .locals 1

    .line 46103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46104
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:Ljava/lang/String;

    .line 46105
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jk;->A08:Ljava/lang/String;

    .line 46106
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/Jk;->A05:Ljava/lang/String;

    .line 46107
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Jk;->A04:Lcom/facebook/ads/redexgen/X/Jr;

    .line 46108
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0C:[Ljava/lang/String;

    .line 46109
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A09:Z

    .line 46110
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    .line 46111
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    .line 46112
    invoke-static {p9}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    .line 46113
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/Jk;->A03:Lcom/facebook/ads/redexgen/X/Jk;

    .line 46114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0B:Ljava/util/HashMap;

    .line 46115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0A:Ljava/util/HashMap;

    .line 46116
    return-void

    .line 46117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/3C;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 46118
    .local p1, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46119
    new-instance v1, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/3C;-><init>()V

    .line 46120
    .local v0, "regionOutput":Lcom/facebook/ads/redexgen/X/3C;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3C;

    .line 46121
    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46122
    .end local v0    # "regionOutput":Lcom/facebook/ads/redexgen/X/3C;
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 46123
    return-object v0
.end method

.method public static A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jk;
    .locals 14

    .line 46124
    new-instance v3, Lcom/facebook/ads/redexgen/X/Jk;

    .line 46125
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jm;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    const/4 p0, 0x0

    const/4 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/Jk;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Jr;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jk;)V

    .line 46126
    return-object v3
.end method

.method public static A02(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Jr;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jk;)Lcom/facebook/ads/redexgen/X/Jk;
    .locals 12

    .line 46127
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jk;

    const/4 v2, 0x0

    move-object/from16 v11, p9

    move-object/from16 v10, p8

    move-object/from16 v9, p7

    move-wide v5, p3

    move-object/from16 v8, p6

    move-wide v3, p1

    move-object/from16 v7, p5

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/Jk;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Jr;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jk;)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jk;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "X7T2v9MzXPQN9wm4iApZn5l"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jk;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0xet
        0x26t
        0x2bt
        0x34t
        0x5ct
        0x54t
        0x45t
        0x50t
        0x55t
        0x50t
        0x45t
        0x50t
        0x5ft
    .end array-data
.end method

.method private A05(JLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 46128
    .local p4, "regionImageList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46129
    .local v0, "resolvedRegionId":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jk;->A0B(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A05:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 46130
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A05:Ljava/lang/String;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46131
    return-void

    .line 46132
    :cond_0
    iget-object p3, p0, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    goto :goto_0

    .line 46133
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A0C()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 46134
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Jk;->A0D(I)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Jk;->A05(JLjava/lang/String;Ljava/util/List;)V

    .line 46135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46136
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private A06(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/3C;",
            ">;)V"
        }
    .end annotation

    .line 46137
    .local p0, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .local p1, "regionMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .local p3, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object v2, v2

    move-wide/from16 v14, p1

    invoke-direct {v2, v14, v15}, Lcom/facebook/ads/redexgen/X/Jk;->A0B(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46138
    return-void

    .line 46139
    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46140
    .local v14, "resolvedRegionId":Ljava/lang/String;
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A0A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    move-object/from16 v5, p6

    move-object/from16 v4, p4

    move-object/from16 v9, p3

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 46141
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46142
    .local v9, "regionId":Ljava/lang/String;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A0B:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A0B:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 46143
    .local v10, "start":I
    :goto_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 46144
    .local v11, "end":I
    if-eq v11, v12, :cond_1

    .line 46145
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/3C;

    .line 46146
    .local v12, "regionOutput":Lcom/facebook/ads/redexgen/X/3C;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jl;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/Jl;->A08:I

    .line 46147
    .local v5, "verticalType":I
    move-object v8, v2

    .end local v5    # "verticalType":I
    .local v16, "verticalType":I
    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Jk;->A09(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/3C;III)V

    goto :goto_1

    .line 46148
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 46149
    :cond_3
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    goto :goto_0

    .line 46150
    :cond_4
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jk;->A0C()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 46151
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Jk;->A0D(I)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v13

    .line 46152
    move-object/from16 v16, v9

    move-object/from16 v19, v5

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Jk;->A06(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 46153
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 46154
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method private A07(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/3C;",
            ">;)V"
        }
    .end annotation

    .line 46155
    .local p3, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    move-object v9, p4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0B:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46157
    const/4 v2, 0x5

    const/16 v1, 0x8

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46158
    return-void

    .line 46159
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46160
    .local v0, "resolvedRegionId":Ljava/lang/String;
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A09:Z

    move-object/from16 v10, p5

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 46161
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/Jk;->A00(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46162
    .end local v7
    :cond_1
    :goto_1
    return-void

    .line 46163
    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 46164
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/Jk;->A00(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "DvePMvlINfUrHf8oCshP3y2zgWJgm1y9"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "g33vhajkRJhloC0qEKLO4Zm1g9rQEkrd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 46165
    :cond_3
    move-wide v6, p1

    invoke-direct {p0, v6, v7}, Lcom/facebook/ads/redexgen/X/Jk;->A0B(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46166
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46167
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0B:Ljava/util/HashMap;

    .line 46168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46169
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46170
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    goto :goto_2

    .line 46171
    :cond_4
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 46172
    .local v7, "isPNode":Z
    const/4 v3, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jk;->A0C()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 46173
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Jk;->A0D(I)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    if-nez p3, :cond_5

    :goto_4
    if-eqz v4, :cond_6

    :cond_5
    const/4 v8, 0x1

    .line 46174
    :goto_5
    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Jk;->A07(JZLjava/lang/String;Ljava/util/Map;)V

    .line 46175
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 46176
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "BxcnzhC5XqKLAs"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez p3, :cond_5

    goto :goto_4

    .line 46177
    .end local v8    # "i":I
    :cond_8
    if-eqz v4, :cond_9

    .line 46178
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/Jk;->A00(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jm;->A07(Landroid/text/SpannableStringBuilder;)V

    .line 46179
    :cond_9
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46180
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0A:Ljava/util/HashMap;

    .line 46181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/3C;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "NvsWEQBQe6VAGnQhJA54b4pVjA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "RDTsakCOEzYFACc9hnpkZM81VS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3C;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46182
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46183
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    goto :goto_6

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "CHxe0vxZr8lPRHvaCG5LBeS6gh9aVBuv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "HeV50lBh9JGf3GNHX7ZdMbjxgTQZONIp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/3C;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46184
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46185
    .end local v2
    goto :goto_6

    .line 46186
    :cond_b
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Landroid/text/SpannableStringBuilder;)V
    .locals 9

    .line 46187
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v0, Lcom/facebook/ads/redexgen/X/Jd;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/facebook/ads/redexgen/X/Jd;

    .line 46188
    .local v0, "deleteTextSpans":[Lcom/facebook/ads/redexgen/X/Jd;
    array-length v7, v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v8, v6

    .line 46189
    .local v4, "deleteTextSpan":Lcom/facebook/ads/redexgen/X/Jd;
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v3, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46190
    .end local v4    # "deleteTextSpan":Lcom/facebook/ads/redexgen/X/Jd;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 46191
    :cond_0
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x20

    if-ge v5, v0, :cond_5

    .line 46192
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    .line 46193
    add-int/lit8 v6, v5, 0x1

    .line 46194
    .local v3, "j":I
    :goto_2
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge v6, v0, :cond_3

    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "TbkeKkbvotKRDkL3aJkR6CKPV2CRZepO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "HOyzJt7YVHsiDEtesdPQS8q1On7uoMtF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_3

    .line 46195
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 46196
    :cond_3
    add-int/lit8 v3, v5, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "2IIAODStabB9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int/2addr v6, v3

    .line 46197
    .local v4, "spacesToDelete":I
    if-lez v6, :cond_4

    .line 46198
    add-int v0, v5, v6

    invoke-virtual {p0, v5, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46199
    .end local v3    # "j":I
    .end local v4    # "spacesToDelete":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 46200
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    .line 46201
    invoke-virtual {p0, v4, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46202
    :cond_6
    const/4 v5, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/16 v4, 0xa

    if-ge v5, v0, :cond_8

    .line 46203
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_7

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7

    .line 46204
    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v0, v5, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46205
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 46206
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_9

    .line 46207
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46208
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_b

    .line 46209
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_a

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_a

    .line 46210
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46211
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 46212
    .end local v1    # "i":I
    :cond_b
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_c

    .line 46213
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 46214
    :cond_c
    return-void
.end method

.method private A09(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/3C;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/3C;",
            "III)V"
        }
    .end annotation

    .line 46215
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A04:Lcom/facebook/ads/redexgen/X/Jr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0C:[Ljava/lang/String;

    move-object v5, p1

    invoke-static {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Jm;->A02(Lcom/facebook/ads/redexgen/X/Jr;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 46216
    .local v0, "resolvedStyle":Lcom/facebook/ads/redexgen/X/Jr;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3C;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 46217
    .local v1, "text":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_0

    .line 46218
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 46219
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3C;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3C;

    .line 46220
    :cond_0
    if-eqz v3, :cond_3

    .line 46221
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jk;->A03:Lcom/facebook/ads/redexgen/X/Jk;

    move v6, p5

    move v2, p4

    move v1, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Jm;->A06(Landroid/text/Spannable;IILcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/redexgen/X/Jk;Ljava/util/Map;I)V

    .line 46222
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46223
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->A04()F

    move-result v1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    .line 46224
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->A04()F

    move-result v1

    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/3C;->A05(F)Lcom/facebook/ads/redexgen/X/3C;

    .line 46225
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->A0C()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46226
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->A0C()Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3C;->A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3C;

    .line 46227
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->A0B()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46228
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->A0B()Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3C;->A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3C;

    .line 46229
    :cond_3
    return-void
.end method

.method private A0A(Ljava/util/TreeSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 46230
    .local p2, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/16 v2, 0xd

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 46231
    .local v0, "isPNode":Z
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 46232
    .local v1, "isDivNode":Z
    if-nez p2, :cond_0

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A05:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 46233
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 46234
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 46235
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 46236
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 46237
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    if-nez v0, :cond_3

    .line 46238
    return-void

    .line 46239
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 46240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Jk;

    if-nez p2, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A0A(Ljava/util/TreeSet;Z)V

    .line 46241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46242
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 46243
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private final A0B(J)Z
    .locals 7

    .line 46244
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    cmp-long v0, v1, v5

    if-eqz v0, :cond_3

    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "RgXDLQ3a08cIBfoVnl1r1eLIg5MUrfoW"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "Ter36j0QNwpTucwH0VATqUwzgkfFz8sj"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    cmp-long v0, v1, v5

    if-nez v0, :cond_2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_3

    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    cmp-long v0, v1, p1

    if-gtz v0, :cond_4

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    cmp-long v0, p1, v1

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0C()I
    .locals 4

    .line 46245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jk;->A0E:[Ljava/lang/String;

    const-string v1, "iiL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D(I)Lcom/facebook/ads/redexgen/X/Jk;
    .locals 1

    .line 46246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jk;

    return-object v0

    .line 46248
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final A0E(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jl;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation

    .line 46249
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .local p4, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .local p5, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46250
    .local v15, "regionImageOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    move-wide/from16 v4, p1

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/facebook/ads/redexgen/X/Jk;->A05(JLjava/lang/String;Ljava/util/List;)V

    .line 46251
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 46252
    .local v5, "regionTextOutputs":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    const/4 v13, 0x0

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    move-object/from16 v10, p0

    move-wide v11, v4

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/Jk;->A07(JZLjava/lang/String;Ljava/util/Map;)V

    .line 46253
    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/Jk;->A06:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v2, p4

    move-object v7, v2

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Jk;->A06(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 46254
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46255
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 46256
    .local v2, "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46257
    .local v3, "encodedBitmapData":Ljava/lang/String;
    if-nez v0, :cond_0

    goto :goto_0

    .line 46258
    :cond_0
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 46259
    .local v7, "bitmapData":[B
    array-length v0, v1

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 46260
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Jl;

    .line 46261
    .local v9, "region":Lcom/facebook/ads/redexgen/X/Jl;
    new-instance v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3C;-><init>()V

    .line 46262
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3C;->A0D(Landroid/graphics/Bitmap;)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jl;->A02:F

    .line 46263
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A04(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 46264
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/3C;->A0A(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jl;->A01:F

    .line 46265
    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/3C;->A07(FI)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jl;->A05:I

    .line 46266
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A09(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jl;->A04:F

    .line 46267
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A06(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jl;->A00:F

    .line 46268
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A03(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jl;->A08:I

    .line 46269
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A0B(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 46270
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0H()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    .line 46271
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46272
    .end local v2    # "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "encodedBitmapData":Ljava/lang/String;
    .end local v7    # "bitmapData":[B
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "region":Lcom/facebook/ads/redexgen/X/Jl;
    goto :goto_0

    .line 46273
    :cond_1
    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 46274
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Jl;

    .line 46275
    .local v3, "region":Lcom/facebook/ads/redexgen/X/Jl;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/3C;

    .line 46276
    .local v6, "regionOutput":Lcom/facebook/ads/redexgen/X/3C;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/3C;->A0I()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A08(Landroid/text/SpannableStringBuilder;)V

    .line 46277
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Jl;->A01:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Jl;->A06:I

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A07(FI)Lcom/facebook/ads/redexgen/X/3C;

    .line 46278
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Jl;->A05:I

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/3C;->A09(I)Lcom/facebook/ads/redexgen/X/3C;

    .line 46279
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Jl;->A02:F

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/3C;->A04(F)Lcom/facebook/ads/redexgen/X/3C;

    .line 46280
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Jl;->A04:F

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/3C;->A06(F)Lcom/facebook/ads/redexgen/X/3C;

    .line 46281
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Jl;->A03:F

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Jl;->A07:I

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/3C;->A08(FI)Lcom/facebook/ads/redexgen/X/3C;

    .line 46282
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Jl;->A08:I

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/3C;->A0B(I)Lcom/facebook/ads/redexgen/X/3C;

    .line 46283
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/3C;->A0H()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46284
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/text/Cue$Builder;>;"
    .end local v3    # "region":Lcom/facebook/ads/redexgen/X/Jl;
    .end local v6    # "regionOutput":Lcom/facebook/ads/redexgen/X/3C;
    goto :goto_1

    .line 46285
    :cond_2
    return-object v5
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Jk;)V
    .locals 1

    .line 46286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    .line 46288
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46289
    return-void
.end method

.method public final A0G()[J
    .locals 6

    .line 46290
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 46291
    .local v0, "eventTimeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A0A(Ljava/util/TreeSet;Z)V

    .line 46292
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v5, v0, [J

    .line 46293
    .local v1, "eventTimes":[J
    const/4 v4, 0x0

    .line 46294
    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 46295
    .local v4, "eventTimeUs":J
    add-int/lit8 v0, v4, 0x1

    .end local v2    # "i":I
    .local p0, "i":I
    aput-wide v1, v5, v4

    .line 46296
    .end local v4    # "eventTimeUs":J
    move v4, v0

    goto :goto_0

    .line 46297
    .end local p0    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object v5
.end method

.method public final A0H()[Ljava/lang/String;
    .locals 1

    .line 46298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jk;->A0C:[Ljava/lang/String;

    return-object v0
.end method
