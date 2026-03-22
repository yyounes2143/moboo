.class public final Lcom/facebook/ads/redexgen/X/56;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/53;,
        Lcom/facebook/ads/androidx/media3/datasource/DataSpec$HttpMethod;,
        Lcom/facebook/ads/androidx/media3/datasource/DataSpec$Flags;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static final A0C:Lcom/facebook/ads/redexgen/X/56;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Landroid/net/Uri;

.field public final A07:Lcom/facebook/ads/redexgen/X/Lj;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Using fbDataSpecExtension instead of Object"
    .end annotation
.end field

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 340
    invoke-static {}, Lcom/facebook/ads/redexgen/X/56;->A03()V

    const/16 v2, 0x18

    const/16 v1, 0x13

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2T;->A03(Ljava/lang/String;)V

    .line 341
    const/16 v2, 0x2b

    const/16 v1, 0x10

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/56;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/56;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/56;->A0C:Lcom/facebook/ads/redexgen/X/56;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 14862
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/56;-><init>(Landroid/net/Uri;II)V

    .line 14863
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 51
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14864
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v43

    new-instance v3, Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v17, Lcom/facebook/ads/redexgen/X/Li;

    invoke-direct/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Li;-><init>()V

    sget-object v32, Lcom/facebook/ads/redexgen/X/Lh;->A02:Lcom/facebook/ads/redexgen/X/Lh;

    const-wide/16 v39, -0x1

    const-wide/16 v41, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, -0x1

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const-wide/16 v23, -0x1

    const-wide/16 v25, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v36

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    move/from16 v14, p3

    invoke-direct/range {v3 .. v42}, Lcom/facebook/ads/redexgen/X/Lj;-><init>(Ljava/lang/String;JZIIIIZZIJLcom/facebook/ads/redexgen/X/Li;JZIIJJILjava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lh;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 14865
    const-wide/16 v39, 0x0

    const/16 v41, 0x1

    const/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, -0x1

    const/16 v48, 0x0

    move-object/from16 v37, p0

    move/from16 v49, p2

    move-object/from16 v38, p1

    move-object/from16 v50, v3

    invoke-direct/range {v37 .. v50}, Lcom/facebook/ads/redexgen/X/56;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/Lj;)V

    .line 14866
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/Lj;)V
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replacement of customData Object with fbDataSpecExtension"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/ads/redexgen/X/Lj;",
            ")V"
        }
    .end annotation

    .line 14867
    .local p14, "httpRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14868
    add-long v1, p2, p7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 14869
    cmp-long v0, p7, v4

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 14870
    move-wide/from16 v0, p9

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    :cond_0
    :goto_2
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 14871
    iput-object p1, v3, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    .line 14872
    iput-wide p2, v3, Lcom/facebook/ads/redexgen/X/56;->A05:J

    .line 14873
    iput p4, v3, Lcom/facebook/ads/redexgen/X/56;->A01:I

    .line 14874
    if-eqz p5, :cond_1

    array-length v2, p5

    if-eqz v2, :cond_1

    :goto_3
    iput-object p5, v3, Lcom/facebook/ads/redexgen/X/56;->A0A:[B

    .line 14875
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/facebook/ads/redexgen/X/56;->A09:Ljava/util/Map;

    .line 14876
    iput-wide p7, v3, Lcom/facebook/ads/redexgen/X/56;->A04:J

    .line 14877
    add-long/2addr p2, p7

    iput-wide p2, v3, Lcom/facebook/ads/redexgen/X/56;->A02:J

    .line 14878
    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/56;->A03:J

    .line 14879
    move-object/from16 v0, p11

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/56;->A08:Ljava/lang/String;

    .line 14880
    move/from16 v0, p12

    iput v0, v3, Lcom/facebook/ads/redexgen/X/56;->A00:I

    .line 14881
    move-object/from16 v0, p13

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/56;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    .line 14882
    return-void

    .line 14883
    :cond_1
    const/4 p5, 0x0

    goto :goto_3

    .line 14884
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 14885
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 14886
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 0

    .line 14887
    invoke-direct/range {p0 .. p13}, Lcom/facebook/ads/redexgen/X/56;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/Lj;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "creation and passage of FbDataSpecExtension"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14888
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    new-instance v13, Lcom/facebook/ads/redexgen/X/Lj;

    invoke-direct {v13}, Lcom/facebook/ads/redexgen/X/Lj;-><init>()V

    .line 14889
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-wide/from16 v9, p4

    move-wide/from16 v7, p2

    move-object/from16 v11, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/facebook/ads/redexgen/X/56;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/Lj;)V

    .line 14890
    return-void
.end method

.method private final A00()Ljava/lang/String;
    .locals 1

    .line 14891
    iget v0, p0, Lcom/facebook/ads/redexgen/X/56;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/56;->A01(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A01(I)Ljava/lang/String;
    .locals 2

    .line 14892
    packed-switch p0, :pswitch_data_0

    .line 14893
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 14894
    :pswitch_0
    const/16 p0, 0xf

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14895
    :pswitch_1
    const/16 p0, 0x13

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14896
    :pswitch_2
    const/16 p0, 0xc

    const/4 v1, 0x3

    const/16 v0, 0x5b

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/56;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/56;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x7bt
        -0x54t
        -0x60t
        -0x70t
        -0x53t
        -0x40t
        -0x53t
        -0x61t
        -0x44t
        -0x4ft
        -0x51t
        -0x59t
        -0x34t
        -0x36t
        -0x27t
        -0x74t
        -0x77t
        -0x7bt
        -0x78t
        -0x34t
        -0x35t
        -0x31t
        -0x30t
        -0x58t
        -0x58t
        -0x50t
        -0x50t
        -0x58t
        0x6ft
        -0x5at
        -0x47t
        -0x50t
        0x6ft
        -0x5bt
        -0x5et
        -0x4bt
        -0x5et
        -0x4ct
        -0x50t
        -0x4at
        -0x4dt
        -0x5ct
        -0x5at
        -0x3dt
        -0x3dt
        -0x3dt
        0x7at
        -0x4et
        -0x53t
        -0x51t
        -0x4ft
        -0x52t
        -0x45t
        -0x45t
        -0x49t
        0x7at
        -0x51t
        -0x45t
        -0x47t
    .end array-data
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/53;
    .locals 2

    .line 14897
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/53;-><init>(Lcom/facebook/ads/redexgen/X/56;Lcom/facebook/ads/redexgen/X/52;)V

    return-object v0
.end method

.method public final A05(JJ)Lcom/facebook/ads/redexgen/X/56;
    .locals 15
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replacement of customData Object with fbDataSpecExtension + new copy creation"
    .end annotation

    .line 14898
    move-object v0, p0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    move-wide/from16 v10, p3

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/56;->A03:J

    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    .line 14899
    return-object v0

    .line 14900
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/56;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/56;->A05:J

    iget v5, v0, Lcom/facebook/ads/redexgen/X/56;->A01:I

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/56;->A0A:[B

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/56;->A09:Ljava/util/Map;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/56;->A04:J

    add-long v8, v8, p1

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/56;->A08:Ljava/lang/String;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/56;->A00:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/56;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v14, Lcom/facebook/ads/redexgen/X/Lj;

    invoke-direct {v14, v0}, Lcom/facebook/ads/redexgen/X/Lj;-><init>(Lcom/facebook/ads/redexgen/X/Lj;)V

    invoke-direct/range {v1 .. v14}, Lcom/facebook/ads/redexgen/X/56;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/Lj;)V

    return-object v1
.end method

.method public final A06(I)Z
    .locals 1

    .line 14901
    iget v0, p0, Lcom/facebook/ads/redexgen/X/56;->A00:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Stringification of fbDataSpecExtension (last two items)"
    .end annotation

    .line 14902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    const/16 v1, 0x9

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14903
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/56;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/56;->A04:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/56;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/56;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/56;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/56;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/56;->A07:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lj;->A0Q:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/56;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14904
    return-object v0
.end method
