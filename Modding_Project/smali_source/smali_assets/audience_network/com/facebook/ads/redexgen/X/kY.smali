.class public final Lcom/facebook/ads/redexgen/X/kY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;
.implements Lcom/facebook/ads/redexgen/X/Gw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ic;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$FileType;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$State;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0Q:[B

.field public static A0R:[Ljava/lang/String;

.field public static final A0S:Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D54927862 get video/audio duration for progressive"
    .end annotation
.end field

.field public A0B:J

.field public A0C:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D54927862 get video/audio duration for progressive"
    .end annotation
.end field

.field public A0D:Lcom/facebook/ads/redexgen/X/4J;

.field public A0E:Lcom/facebook/ads/redexgen/X/GY;

.field public A0F:Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field public A0G:[Lcom/facebook/ads/redexgen/X/Ic;

.field public A0H:[[J

.field public final A0I:I

.field public final A0J:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0K:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0L:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0M:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0N:Lcom/facebook/ads/redexgen/X/Ij;

.field public final A0O:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/kj;",
            ">;"
        }
    .end annotation
.end field

.field public final A0P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3055
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uzhMW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LbToze1ZyMStOzMPMggUyU89k761Fydj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "roznHbdGo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zeOiwqyw9G80TO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hwgMtT9WWej"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AZ5CtgA3jsgDmrh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "c4g75mNjYzBkznfgxB8HcDFPfSogi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Prtl1ARtkjOsoD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kY;->A0C()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/kZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kZ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/kY;->A0S:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/kY;-><init>(I)V

    .line 92390
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 92391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92392
    iput p1, p0, Lcom/facebook/ads/redexgen/X/kY;->A0I:I

    .line 92393
    and-int/lit8 v0, p1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    .line 92394
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ij;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ij;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0N:Lcom/facebook/ads/redexgen/X/Ij;

    .line 92395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0P:Ljava/util/List;

    .line 92396
    const/16 v1, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    .line 92397
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    .line 92398
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0L:Lcom/facebook/ads/redexgen/X/4J;

    .line 92399
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0K:Lcom/facebook/ads/redexgen/X/4J;

    .line 92400
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    .line 92401
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A08:I

    .line 92402
    sget-object v0, Lcom/facebook/ads/redexgen/X/GY;->A00:Lcom/facebook/ads/redexgen/X/GY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    .line 92403
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/Ic;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    .line 92404
    return-void

    .line 92405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(I)I
    .locals 3

    .line 92406
    sparse-switch p0, :sswitch_data_0

    .line 92407
    const/4 p0, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "05jGjYjRxbz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    .line 92408
    :sswitch_0
    const/4 p0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "rbgKKZbH0NS3XFJda55b1nN6iCZjcLPR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    .line 92409
    :sswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x68656963 -> :sswitch_1
        0x71742020 -> :sswitch_0
    .end sparse-switch
.end method

.method private A01(J)I
    .locals 20

    .line 92410
    move-object/from16 v5, p0

    const-wide v18, 0x7fffffffffffffffL

    .line 92411
    .local v1, "preferredSkipAmount":J
    const/4 v4, 0x1

    .line 92412
    .local v3, "preferredRequiresReload":Z
    const/16 v17, -0x1

    .line 92413
    .local v4, "preferredTrackIndex":I
    const-wide v15, 0x7fffffffffffffffL

    .line 92414
    .local v5, "preferredAccumulatedBytes":J
    const-wide v13, 0x7fffffffffffffffL

    .line 92415
    .local v7, "minAccumulatedBytes":J
    const/4 v12, 0x1

    .line 92416
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v11, -0x1

    .line 92417
    .local v10, "minAccumulatedBytesTrackIndex":I
    const/4 v3, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "Fcko3uaud46cO6nUcug7HhLZFNYBY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    array-length v0, v6

    if-ge v3, v0, :cond_9

    .line 92418
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    aget-object v2, v0, v3

    .line 92419
    .local v12, "track":Lcom/facebook/ads/redexgen/X/Ic;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ic;->A00:I

    .line 92420
    .local v13, "sampleIndex":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    if-ne v1, v0, :cond_2

    .line 92421
    .end local v12    # "track":Lcom/facebook/ads/redexgen/X/Ic;
    .end local v13    # "sampleIndex":I
    .end local v14
    .end local v15
    .end local v17
    .end local v19
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92422
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A06:[J

    aget-wide v9, v0, v1

    .line 92423
    .local v15, "sampleOffset":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/kY;->A0H:[[J

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    aget-object v0, v0, v3

    aget-wide v7, v0, v1

    .line 92424
    .local v17, "sampleAccumulatedBytes":J
    sub-long v9, v9, p1

    .line 92425
    .local v19, "skipAmount":J
    const-wide/16 v1, 0x0

    cmp-long v0, v9, v1

    if-ltz v0, :cond_3

    const-wide/32 v1, 0x40000

    cmp-long v0, v9, v1

    if-ltz v0, :cond_8

    :cond_3
    const/4 v6, 0x1

    .line 92426
    .local v14, "requiresReload":Z
    :goto_2
    if-nez v6, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-ne v6, v4, :cond_6

    cmp-long v0, v9, v18

    if-gez v0, :cond_6

    .line 92427
    :cond_5
    move v4, v6

    .line 92428
    move-wide/from16 v18, v9

    .line 92429
    move/from16 v17, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_7

    .line 92430
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "nNk7RawiIyahd9Y"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "017pL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    move-wide v15, v7

    .line 92431
    :cond_6
    :goto_3
    cmp-long v0, v7, v13

    if-gez v0, :cond_1

    .line 92432
    move-wide v13, v7

    .line 92433
    move v12, v6

    .line 92434
    move v11, v3

    goto :goto_1

    .line 92435
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "1bC0in6G1ApWSL3PegJBmoVzHl6EE3tw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    move-wide v15, v7

    goto :goto_3

    .line 92436
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 92437
    .end local v11    # "trackIndex":I
    :cond_9
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v13, v1

    if-eqz v0, :cond_a

    if-eqz v12, :cond_a

    const-wide/32 v0, 0xa00000

    add-long/2addr v0, v13

    cmp-long v3, v15, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_b

    if-gez v3, :cond_c

    .line 92438
    :cond_a
    :goto_4
    return v17

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "AbIM1W3wiFJMRqsWOI3P0CqvLybO2M00"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-gez v3, :cond_c

    goto :goto_4

    .line 92439
    :cond_c
    move/from16 v17, v11

    goto :goto_4
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4J;)I
    .locals 1

    .line 92440
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 92441
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 92442
    .local v0, "majorBrand":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kY;->A00(I)I

    move-result v0

    .line 92443
    .local p0, "fileType":I
    if-eqz v0, :cond_0

    .line 92444
    return v0

    .line 92445
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 92446
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_2

    .line 92447
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kY;->A00(I)I

    move-result v0

    .line 92448
    if-eqz v0, :cond_1

    .line 92449
    return v0

    .line 92450
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92451
    move-object/from16 v6, p0

    move-object/from16 v10, p1

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v8

    .line 92452
    .local v2, "inputPosition":J
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A08:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92453
    invoke-direct {v6, v8, v9}, Lcom/facebook/ads/redexgen/X/kY;->A01(J)I

    move-result v0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A08:I

    .line 92454
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A08:I

    if-ne v0, v1, :cond_0

    .line 92455
    return v1

    .line 92456
    :cond_0
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A08:I

    aget-object v5, v1, v0

    .line 92457
    .local v4, "track":Lcom/facebook/ads/redexgen/X/Ic;
    iget-object v14, v5, Lcom/facebook/ads/redexgen/X/Ic;->A01:Lcom/facebook/ads/redexgen/X/H1;

    .line 92458
    .local v14, "trackOutput":Lcom/facebook/ads/redexgen/X/H1;
    iget v7, v5, Lcom/facebook/ads/redexgen/X/Ic;->A00:I

    .line 92459
    .local v15, "sampleIndex":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A06:[J

    aget-wide v3, v0, v7

    .line 92460
    .local v12, "position":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A05:[I

    aget v2, v0, v7

    .line 92461
    .local v6, "sampleSize":I
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/Ic;->A02:Lcom/facebook/ads/redexgen/X/H2;

    .line 92462
    .local v11, "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/H2;
    sub-long v0, v3, v8

    iget v8, v6, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    int-to-long v8, v8

    add-long/2addr v0, v8

    .line 92463
    .local v7, "skipAmount":J
    const-wide/16 v11, 0x0

    const/4 v8, 0x1

    cmp-long v9, v0, v11

    if-ltz v9, :cond_1

    const-wide/32 v11, 0x40000

    cmp-long v9, v0, v11

    if-ltz v9, :cond_2

    .line 92464
    .end local v2    # "inputPosition":J
    .end local v11    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/H2;
    .end local v12    # "position":J
    .restart local v5
    .restart local v18
    .restart local p4
    .end local p4
    .local v2, "position":J
    :cond_1
    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 92465
    const/4 v0, 0x1

    return v0

    .line 92466
    :cond_2
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/Ic;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget v11, v3, Lcom/facebook/ads/redexgen/X/Im;->A02:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x13

    if-eq v4, v3, :cond_3

    sget-object v9, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v4, "rX6gisAdcV7LBeXwmOhQV8Eb98OXk"

    const/4 v3, 0x6

    aput-object v4, v9, v3

    if-ne v11, v8, :cond_5

    .line 92467
    const-wide/16 v3, 0x8

    add-long/2addr v0, v3

    sget-object v4, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x1d

    if-eq v4, v3, :cond_4

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92468
    :cond_4
    sget-object v9, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v4, "KKgaKTwS1RwNPE"

    const/4 v3, 0x3

    aput-object v4, v9, v3

    const-string v4, "5hDvshmtbzc6vz"

    const/4 v3, 0x7

    aput-object v4, v9, v3

    add-int/lit8 v2, v2, -0x8

    .line 92469
    .end local v7    # "skipAmount":J
    .local v8, "skipAmount":J
    :cond_5
    long-to-int v3, v0

    invoke-interface {v10, v3}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 92470
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    .end local v12
    .local v16, "position":J
    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 92471
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0K:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v9

    .line 92472
    .local v7, "nalLengthData":[B
    aput-byte v3, v9, v3

    .line 92473
    aput-byte v3, v9, v8

    .line 92474
    const/4 v0, 0x2

    aput-byte v3, v9, v0

    .line 92475
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    .line 92476
    .local v12, "nalUnitLengthFieldLength":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    rsub-int/lit8 v4, v0, 0x4

    .line 92477
    .local v5, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    if-ge v0, v2, :cond_b

    .line 92478
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    if-nez v0, :cond_6

    .line 92479
    invoke-interface {v10, v9, v4, v8}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 92480
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    add-int/2addr v0, v8

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    .line 92481
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0K:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 92482
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0K:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 92483
    .local v10, "nalLengthInt":I
    if-ltz v0, :cond_c

    .line 92484
    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    .line 92485
    .end local v2    # "position":J
    .local v18, "inputPosition":J
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0L:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 92486
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0L:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v1, 0x4

    invoke-interface {v14, v0, v1}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 92487
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    .line 92488
    add-int/2addr v2, v4

    .line 92489
    .end local v10    # "nalLengthInt":I
    goto :goto_1

    .line 92490
    .end local v10
    .end local v18    # "inputPosition":J
    .restart local v2    # "position":J
    .end local v2    # "position":J
    .restart local v18    # "inputPosition":J
    :cond_6
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    invoke-interface {v14, v10, v0, v3}, Lcom/facebook/ads/redexgen/X/H1;->AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v1

    .line 92491
    .local v10, "writtenBytes":I
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    .line 92492
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    .line 92493
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    .line 92494
    .end local v10    # "writtenBytes":I
    goto :goto_1

    .line 92495
    .end local v18    # "inputPosition":J
    .restart local v2    # "position":J
    .end local v2    # "position":J
    .restart local v18    # "inputPosition":J
    :cond_7
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    const/16 v4, 0x42

    const/16 v1, 0x9

    const/16 v0, 0x44

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/kY;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 92496
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    if-nez v0, :cond_8

    .line 92497
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/GI;->A07(ILcom/facebook/ads/redexgen/X/4J;)V

    .line 92498
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v1, 0x7

    invoke-interface {v14, v0, v1}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 92499
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    .line 92500
    :cond_8
    add-int/lit8 v2, v2, 0x7

    .line 92501
    :cond_9
    :goto_2
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    if-ge v0, v2, :cond_b

    .line 92502
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    sub-int v0, v2, v0

    invoke-interface {v14, v10, v0, v3}, Lcom/facebook/ads/redexgen/X/H1;->AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v1

    .line 92503
    .local v2, "writtenBytes":I
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    .line 92504
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    .line 92505
    iget v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    .line 92506
    .end local v2    # "writtenBytes":I
    goto :goto_2

    .line 92507
    :cond_a
    if-eqz v13, :cond_9

    .line 92508
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/H2;->A03(Lcom/facebook/ads/redexgen/X/lN;)V

    goto :goto_2

    .line 92509
    .end local v6    # "sampleSize":I
    .local v2, "sampleSize":I
    :cond_b
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A07:[J

    aget-wide v15, v0, v7

    .line 92510
    .local v20, "timeUs":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A04:[I

    aget v17, v0, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_d

    goto/16 :goto_0

    .line 92511
    .end local v18    # "inputPosition":J
    .restart local v2    # "sampleSize":I
    .restart local v10    # "writtenBytes":I
    .end local v2    # "sampleSize":I
    .restart local v18    # "inputPosition":J
    :cond_c
    const/16 v2, 0x30

    const/16 v1, 0x12

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kY;->A09(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 92512
    .local v3, "flags":I
    :cond_d
    sget-object v3, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "dniiMzQMBKOANx9"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const-string v1, "Fj7cY"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    if-eqz v13, :cond_f

    .line 92513
    const/16 v19, 0x0

    const/16 v20, 0x0

    .end local v8    # "skipAmount":J
    .local p1, "skipAmount":J
    move-object v3, v13

    .end local v11
    .local p3, "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/H2;
    .end local v16    # "position":J
    .local p4, "position":J
    const/4 v1, 0x0

    move/from16 v18, v2

    invoke-virtual/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/H2;->A04(Lcom/facebook/ads/redexgen/X/H1;JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 92514
    add-int/lit8 v2, v7, 0x1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    if-ne v2, v0, :cond_e

    .line 92515
    const/4 v0, 0x0

    .end local p3
    .local v5, "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/H2;
    invoke-virtual {v3, v14, v0}, Lcom/facebook/ads/redexgen/X/H2;->A05(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/Gz;)V

    .line 92516
    :cond_e
    :goto_3
    iget v2, v5, Lcom/facebook/ads/redexgen/X/Ic;->A00:I

    const/4 v0, 0x1

    add-int/2addr v2, v0

    iput v2, v5, Lcom/facebook/ads/redexgen/X/Ic;->A00:I

    .line 92517
    const/4 v0, -0x1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A08:I

    .line 92518
    iput v1, v6, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    .line 92519
    iput v1, v6, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    .line 92520
    iput v1, v6, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    .line 92521
    return v1

    .line 92522
    .end local v5    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/H2;
    .end local p1    # "skipAmount":J
    .end local p4
    .restart local v8    # "skipAmount":J
    .restart local v11    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/H2;
    .restart local v16    # "position":J
    :cond_f
    const/4 v1, 0x0

    .end local v8    # "skipAmount":J
    .end local v11    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/H2;
    .end local v16    # "position":J
    .restart local v5    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/H2;
    .restart local p1    # "skipAmount":J
    .restart local p4
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v18, v2

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    goto :goto_3
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92523
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A0N:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0P:Ljava/util/List;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A07(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;Ljava/util/List;)I

    move-result v5

    .line 92524
    .local v0, "result":I
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    iget-wide v3, p2, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 92525
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kY;->A0A()V

    .line 92526
    :cond_0
    return v5
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Ip;J)I
    .locals 2

    .line 92527
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ip;->A00(J)I

    move-result v1

    .line 92528
    .local v0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 92529
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ip;->A01(J)I

    move-result v1

    .line 92530
    :cond_0
    return v1
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Ip;JJ)J
    .locals 2

    .line 92531
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/kY;->A05(Lcom/facebook/ads/redexgen/X/Ip;J)I

    move-result v1

    .line 92532
    .local v0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 92533
    return-wide p3

    .line 92534
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ip;->A06:[J

    aget-wide v0, v0, v1

    .line 92535
    .local p0, "sampleOffset":J
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final A07(JI)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 19

    .line 92536
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 92537
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gx;->A04:Lcom/facebook/ads/redexgen/X/Gx;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 92538
    :cond_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 92539
    .local v4, "secondTimeUs":J
    const-wide/16 v3, -0x1

    .line 92540
    .local v6, "secondOffset":J
    const/4 v14, -0x1

    move/from16 v18, p3

    move/from16 v0, v18

    if-eq v0, v14, :cond_1

    move/from16 v1, v18

    .line 92541
    .local v9, "mainTrackIndex":I
    :goto_0
    move-wide/from16 v9, p1

    if-eq v1, v14, :cond_3

    .line 92542
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    aget-object v0, v0, v1

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    .line 92543
    .local v10, "sampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    invoke-static {v15, v9, v10}, Lcom/facebook/ads/redexgen/X/kY;->A05(Lcom/facebook/ads/redexgen/X/Ip;J)I

    move-result v13

    .line 92544
    .local v11, "sampleIndex":I
    if-ne v13, v14, :cond_2

    .line 92545
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gx;->A04:Lcom/facebook/ads/redexgen/X/Gx;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 92546
    :cond_1
    iget v1, v11, Lcom/facebook/ads/redexgen/X/kY;->A03:I

    goto :goto_0

    .line 92547
    :cond_2
    iget-object v0, v15, Lcom/facebook/ads/redexgen/X/Ip;->A07:[J

    aget-wide v7, v0, v13

    .line 92548
    .local v13, "sampleTimeUs":J
    .local v15, "firstTimeUs":J
    iget-object v0, v15, Lcom/facebook/ads/redexgen/X/Ip;->A06:[J

    aget-wide v1, v0, v13

    .line 92549
    .local v17, "firstOffset":J
    cmp-long v17, v7, v9

    sget-object v12, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v0, 0x1d

    if-eq v12, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92550
    .end local v15    # "firstTimeUs":J
    .end local v17    # "firstOffset":J
    .restart local v15    # "firstTimeUs":J
    :cond_3
    const-wide v1, 0x7fffffffffffffffL

    sget-object v7, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v0, 0xb

    if-eq v7, v0, :cond_4

    move-wide v7, v9

    goto :goto_1

    :cond_4
    sget-object v8, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v7, "SenK5aC"

    const/4 v0, 0x2

    aput-object v7, v8, v0

    move-wide v7, v9

    goto :goto_1

    .line 92551
    :cond_5
    sget-object v16, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v12, "zbT5rN6sguJCvWwII8HLCHwSkH7sQNQT"

    const/4 v0, 0x1

    aput-object v12, v16, v0

    if-gez v17, :cond_6

    iget v0, v15, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    add-int/lit8 v0, v0, -0x1

    if-ge v13, v0, :cond_6

    .line 92552
    invoke-virtual {v15, v9, v10}, Lcom/facebook/ads/redexgen/X/Ip;->A01(J)I

    move-result v9

    .line 92553
    .local v12, "secondSampleIndex":I
    if-eq v9, v14, :cond_6

    if-eq v9, v13, :cond_6

    .line 92554
    iget-object v0, v15, Lcom/facebook/ads/redexgen/X/Ip;->A07:[J

    aget-wide v5, v0, v9

    .line 92555
    iget-object v0, v15, Lcom/facebook/ads/redexgen/X/Ip;->A06:[J

    aget-wide v3, v0, v9

    .line 92556
    .end local v15    # "firstTimeUs":J
    .local v10, "firstTimeUs":J
    .restart local v17    # "firstOffset":J
    :cond_6
    :goto_1
    const/4 v9, -0x1

    move/from16 v0, v18

    if-ne v0, v9, :cond_8

    .line 92557
    const/4 v13, 0x0

    .end local v17    # "firstOffset":J
    .local v8, "i":I
    .local v14, "firstOffset":J
    :goto_2
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    array-length v0, v0

    if-ge v13, v0, :cond_8

    .line 92558
    iget v0, v11, Lcom/facebook/ads/redexgen/X/kY;->A03:I

    if-eq v13, v0, :cond_7

    .line 92559
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    aget-object v0, v0, v13

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    .line 92560
    .local v12, "sampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    invoke-static {v12, v7, v8, v1, v2}, Lcom/facebook/ads/redexgen/X/kY;->A06(Lcom/facebook/ads/redexgen/X/Ip;JJ)J

    move-result-wide v1

    .line 92561
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v9

    if-eqz v0, :cond_7

    .line 92562
    invoke-static {v12, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/kY;->A06(Lcom/facebook/ads/redexgen/X/Ip;JJ)J

    move-result-wide v3

    .line 92563
    .end local v12    # "sampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 92564
    .end local v17
    .restart local v14    # "firstOffset":J
    :cond_8
    new-instance v9, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v9, v7, v8, v1, v2}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 92565
    .local v8, "firstSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v1

    if-nez v0, :cond_9

    .line 92566
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v9}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 92567
    :cond_9
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 92568
    .local v12, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v9, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Im;)Lcom/facebook/ads/redexgen/X/Im;
    .locals 0

    .line 92569
    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0Q:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0A()V
    .locals 1

    .line 92570
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    .line 92571
    iput v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    .line 92572
    return-void
.end method

.method private A0B()V
    .locals 4

    .line 92573
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A02:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0I:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 92574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v3

    .line 92575
    .local v0, "trackOutput":Lcom/facebook/ads/redexgen/X/H1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0F:Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 92576
    .local v1, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2D;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 92577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 92578
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kY;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 92579
    .end local v0    # "trackOutput":Lcom/facebook/ads/redexgen/X/H1;
    .end local v1    # "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_0
    return-void

    .line 92580
    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0F:Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    aput-object v0, v1, v2

    new-instance v2, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v2, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    goto :goto_0
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kY;->A0Q:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        0x4t
        -0x1t
        -0x3t
        -0x50t
        0x3t
        -0x7t
        0xat
        -0xbt
        -0x50t
        -0x4t
        -0xbt
        0x3t
        0x3t
        -0x50t
        0x4t
        -0x8t
        -0xft
        -0x2t
        -0x50t
        -0x8t
        -0xbt
        -0xft
        -0xct
        -0xbt
        0x2t
        -0x50t
        -0x4t
        -0xbt
        -0x2t
        -0x9t
        0x4t
        -0x8t
        -0x50t
        -0x48t
        0x5t
        -0x2t
        0x3t
        0x5t
        0x0t
        0x0t
        -0x1t
        0x2t
        0x4t
        -0xbt
        -0xct
        -0x47t
        -0x42t
        0x12t
        0x37t
        0x3ft
        0x2at
        0x35t
        0x32t
        0x2dt
        -0x17t
        0x17t
        0xat
        0x15t
        -0x17t
        0x35t
        0x2et
        0x37t
        0x30t
        0x3dt
        0x31t
        -0x8t
        0xct
        -0x5t
        0x0t
        0x6t
        -0x3at
        -0x8t
        -0x6t
        -0x35t
        0x31t
        0x45t
        0x34t
        0x39t
        0x3ft
        -0x1t
        0x44t
        0x42t
        0x45t
        0x35t
        -0x3t
        0x38t
        0x34t
    .end array-data
.end method

.method private A0D(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 92581
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kj;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/kj;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 92582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/kj;

    .line 92583
    .local v0, "containerAtom":Lcom/facebook/ads/redexgen/X/kj;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x6d6f6f76

    if-ne v1, v0, :cond_1

    .line 92584
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/kY;->A0G(Lcom/facebook/ads/redexgen/X/kj;)V

    .line 92585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 92586
    iput v3, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    goto :goto_0

    .line 92587
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kj;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/kj;->A08(Lcom/facebook/ads/redexgen/X/kj;)V

    goto :goto_0

    .line 92589
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    if-eq v0, v3, :cond_3

    .line 92590
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kY;->A0A()V

    .line 92591
    :cond_3
    return-void
.end method

.method private A0E(J)V
    .locals 13

    .line 92592
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A01:I

    const v0, 0x6d707664

    if-ne v1, v0, :cond_0

    .line 92593
    new-instance v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v0, v0

    move-wide v5, p1

    add-long v9, v5, v0

    iget-wide v11, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v0, v0

    sub-long/2addr v11, v0

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v12}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kY;->A0F:Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 92594
    :cond_0
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 92596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 92597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IO;->A0Q(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 92598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0M:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 92599
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 92600
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/kj;)V
    .locals 35
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Adding average bitrate calculation logic"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 92601
    move-object/from16 v6, p0

    const/4 v12, -0x1

    .line 92602
    .local v10, "firstVideoTrackIndex":I
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 92603
    .local v11, "durationUs":J
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 92604
    .local v13, "videoDurationUs":J
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 92605
    .local v15, "audioDurationUs":J
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 92606
    .local v8, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v5, 0x0

    .line 92607
    .local v1, "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    const/4 v4, 0x0

    .line 92608
    .local v2, "smtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget v2, v6, Lcom/facebook/ads/redexgen/X/kY;->A02:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_f

    const/16 v32, 0x1

    .line 92609
    .local v7, "isQuickTime":Z
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Gi;-><init>()V

    .line 92610
    .local v3, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/Gi;
    const v7, 0x75647461

    move-object/from16 v3, p1

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v7

    .line 92611
    .local v17, "udta":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v7, :cond_0

    .line 92612
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IO;->A0A(Lcom/facebook/ads/redexgen/X/ki;)Landroid/util/Pair;

    move-result-object v4

    .line 92613
    .local v6, "udtaMetadata":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/common/Metadata;Lcom/facebook/ads/androidx/media3/common/Metadata;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 92614
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 92615
    if-eqz v5, :cond_0

    .line 92616
    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Gi;->A05(Lcom/facebook/ads/androidx/media3/common/Metadata;)Z

    .line 92617
    .end local v1    # "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v2    # "smtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v5, "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v19, "smtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_0
    const/16 v24, 0x0

    .line 92618
    .local v1, "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    const v7, 0x6d657461

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v7

    .line 92619
    .local v20, "meta":Lcom/facebook/ads/redexgen/X/kj;
    if-eqz v7, :cond_1

    .line 92620
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/IO;->A0F(Lcom/facebook/ads/redexgen/X/kj;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v24

    .line 92621
    .end local v1    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v2, "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_1
    iget v7, v6, Lcom/facebook/ads/redexgen/X/kY;->A0I:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    const/16 v31, 0x1

    .line 92622
    .local v6, "ignoreEditLists":Z
    :goto_1
    new-instance v33, Lcom/facebook/ads/redexgen/X/ka;

    invoke-direct/range {v33 .. v33}, Lcom/facebook/ads/redexgen/X/ka;-><init>()V

    .line 92623
    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v30, 0x0

    .end local v2    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v25, "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    move-object/from16 v34, v2

    .end local v3    # "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/Gi;
    .end local v10    # "firstVideoTrackIndex":I
    .local v9, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/Gi;
    .local v26, "firstVideoTrackIndex":I
    .end local v5    # "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v27, "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v8    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v18, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-static/range {v26 .. v33}, Lcom/facebook/ads/redexgen/X/IO;->A0O(Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/Gi;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZLcom/facebook/ads/redexgen/X/ip;)Ljava/util/List;

    move-result-object v23

    .line 92624
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v22

    .line 92625
    .local v2, "trackCount":I
    const/4 v9, 0x0

    .end local v15    # "audioDurationUs":J
    .end local v26    # "firstVideoTrackIndex":I
    .local v3, "i":I
    .local v4, "firstVideoTrackIndex":I
    .local v28, "audioDurationUs":J
    :goto_2
    move/from16 v2, v22

    if-ge v9, v2, :cond_10

    .line 92626
    move-object/from16 v2, v23

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/Ip;

    .line 92627
    .local v5, "trackSampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    iget v2, v11, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    if-nez v2, :cond_2

    .line 92628
    sget-object v3, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x62

    if-eq v3, v2, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92629
    :cond_2
    iget-object v8, v11, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    .line 92630
    .local v8, "track":Lcom/facebook/ads/redexgen/X/Im;
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/kY;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    .end local v1    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v21, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    iget v2, v8, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    .line 92631
    invoke-interface {v3, v9, v2}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v2

    new-instance v7, Lcom/facebook/ads/redexgen/X/Ic;

    invoke-direct {v7, v8, v11, v2}, Lcom/facebook/ads/redexgen/X/Ic;-><init>(Lcom/facebook/ads/redexgen/X/Im;Lcom/facebook/ads/redexgen/X/Ip;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 92632
    .local v1, "mp4Track":Lcom/facebook/ads/redexgen/X/Ic;
    .end local v6    # "ignoreEditLists":Z
    .end local v7    # "isQuickTime":Z
    .local v10, "isQuickTime":Z
    .local v15, "ignoreEditLists":Z
    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/Im;->A04:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v2, v13

    if-eqz v10, :cond_5

    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/Im;->A04:J

    .line 92633
    .local v6, "trackDurationUs":J
    .end local v2    # "trackCount":I
    .local v22, "trackCount":I
    :goto_3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 92634
    iget v13, v8, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    .end local v10    # "isQuickTime":Z
    .local v23, "isQuickTime":Z
    const/4 v10, 0x1

    if-ne v10, v13, :cond_4

    .line 92635
    move-wide/from16 v16, v2

    .line 92636
    :cond_3
    :goto_4
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget-object v14, v10, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    const/16 v15, 0x4b

    const/16 v13, 0xd

    const/16 v10, 0x7d

    invoke-static {v15, v13, v10}, Lcom/facebook/ads/redexgen/X/kY;->A09(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 92637
    iget v15, v11, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    sget-object v13, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v10, v13, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v10, 0x1d

    if-eq v13, v10, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92638
    :cond_4
    iget v13, v8, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    const/4 v10, 0x2

    if-ne v10, v13, :cond_3

    .line 92639
    move-wide/from16 v18, v2

    goto :goto_4

    .line 92640
    :cond_5
    iget-wide v2, v11, Lcom/facebook/ads/redexgen/X/Ip;->A02:J

    goto :goto_3

    .line 92641
    .end local v2
    :cond_6
    iget v10, v11, Lcom/facebook/ads/redexgen/X/Ip;->A00:I

    add-int/lit8 v13, v10, 0x1e

    goto :goto_5

    .line 92642
    :cond_7
    sget-object v14, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v13, "30Puiqoz9JCJMsN9BhlLDaWtr32u3"

    const/4 v10, 0x6

    aput-object v13, v14, v10

    mul-int/lit8 v13, v15, 0x10

    .line 92643
    .local v2, "maxInputSize":I
    .restart local v2    # "maxInputSize":I
    :goto_5
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/or;->A07()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v10

    .line 92644
    .local v10, "formatBuilder":Lcom/facebook/ads/redexgen/X/2D;
    invoke-virtual {v10, v13}, Lcom/facebook/ads/redexgen/X/2D;->A0h(I)Lcom/facebook/ads/redexgen/X/2D;

    .line 92645
    .end local v2    # "maxInputSize":I
    .local v26, "maxInputSize":I
    iget v14, v8, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    const-wide/16 v20, 0x0

    const/4 v13, 0x2

    .end local v13    # "videoDurationUs":J
    .local v32, "videoDurationUs":J
    if-ne v14, v13, :cond_8

    cmp-long v13, v2, v20

    if-lez v13, :cond_8

    iget v14, v11, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    const/4 v13, 0x1

    if-le v14, v13, :cond_8

    .line 92646
    iget v13, v11, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    int-to-float v14, v13

    long-to-float v13, v2

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v13, v2

    div-float/2addr v14, v13

    .line 92647
    .local v2, "frameRate":F
    invoke-virtual {v10, v14}, Lcom/facebook/ads/redexgen/X/2D;->A0X(F)Lcom/facebook/ads/redexgen/X/2D;

    .line 92648
    .end local v2    # "frameRate":F
    :cond_8
    cmp-long v2, v0, v20

    if-lez v2, :cond_a

    iget v2, v11, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    if-lez v2, :cond_a

    iget-object v2, v11, Lcom/facebook/ads/redexgen/X/Ip;->A05:[I

    array-length v3, v2

    iget v2, v11, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    if-ne v3, v2, :cond_a

    .line 92649
    const-wide/16 v14, 0x0

    .line 92650
    .local v13, "totalBytes":J
    const/4 v13, 0x0

    .local v2, "sampleIndex":I
    .end local v6    # "trackDurationUs":J
    .local v30, "trackDurationUs":J
    :goto_6
    iget v2, v11, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    if-ge v13, v2, :cond_9

    .line 92651
    iget-object v2, v11, Lcom/facebook/ads/redexgen/X/Ip;->A05:[I

    aget v2, v2, v13

    int-to-long v2, v2

    add-long/2addr v14, v2

    .line 92652
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 92653
    .end local v2    # "sampleIndex":I
    :cond_9
    const-wide/32 v2, 0x7a1200

    mul-long/2addr v2, v14

    div-long/2addr v2, v0

    long-to-int v11, v2

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/2D;->A0a(I)Lcom/facebook/ads/redexgen/X/2D;

    .line 92654
    .end local v6
    .restart local v30    # "trackDurationUs":J
    :cond_a
    iget v3, v8, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    move-object/from16 v2, v34

    invoke-static {v3, v2, v10}, Lcom/facebook/ads/redexgen/X/IZ;->A0D(ILcom/facebook/ads/redexgen/X/Gi;Lcom/facebook/ads/redexgen/X/2D;)V

    .line 92655
    iget v13, v8, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    const/4 v2, 0x2

    new-array v11, v2, [Lcom/facebook/ads/androidx/media3/common/Metadata;

    const/4 v2, 0x0

    aput-object v4, v11, v2

    .line 92656
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/kY;->A0P:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    :goto_7
    const/4 v2, 0x1

    aput-object v3, v11, v2

    .line 92657
    .end local v25    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v27    # "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v13, "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v14, "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    move-object/from16 v2, v24

    invoke-static {v13, v5, v2, v10, v11}, Lcom/facebook/ads/redexgen/X/IZ;->A0C(ILcom/facebook/ads/androidx/media3/common/Metadata;Lcom/facebook/ads/androidx/media3/common/Metadata;Lcom/facebook/ads/redexgen/X/2D;[Lcom/facebook/ads/androidx/media3/common/Metadata;)V

    .line 92658
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Ic;->A01:Lcom/facebook/ads/redexgen/X/H1;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 92659
    iget v3, v8, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_b

    const/4 v2, -0x1

    if-ne v12, v2, :cond_b

    .line 92660
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v12

    .line 92661
    .end local v18    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v2, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    :cond_b
    move-object/from16 v2, v25

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 92662
    :cond_c
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/kY;->A0P:Ljava/util/List;

    new-instance v3, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v3, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_7

    .line 92663
    :cond_d
    sget-object v7, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v3, "ibvFTefsgA7pkzOq8AzNcMz9gVb8PR75"

    const/4 v2, 0x1

    aput-object v3, v7, v2

    .line 92664
    .end local v1    # "mp4Track":Lcom/facebook/ads/redexgen/X/Ic;
    .end local v5    # "trackSampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    .end local v8    # "track":Lcom/facebook/ads/redexgen/X/Im;
    .end local v10    # "formatBuilder":Lcom/facebook/ads/redexgen/X/2D;
    .end local v26    # "maxInputSize":I
    .end local v30    # "trackDurationUs":J
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 92665
    :cond_e
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 92666
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 92667
    .end local v14    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v15    # "ignoreEditLists":Z
    .end local v21    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    .end local v22    # "trackCount":I
    .end local v23    # "isQuickTime":Z
    .end local v32    # "videoDurationUs":J
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v2, "trackCount":I
    .local v6, "ignoreEditLists":Z
    .restart local v7    # "isQuickTime":Z
    .local v13, "videoDurationUs":J
    .restart local v18    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .restart local v25    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .restart local v27    # "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_10
    const/4 v2, 0x0

    .line 92668
    .end local v3    # "i":I
    .end local v6    # "ignoreEditLists":Z
    .end local v7    # "isQuickTime":Z
    .end local v18    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v2, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .restart local v15    # "ignoreEditLists":Z
    .restart local v22    # "trackCount":I
    .restart local v23    # "isQuickTime":Z
    iput v12, v6, Lcom/facebook/ads/redexgen/X/kY;->A03:I

    .line 92669
    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0B:J

    .line 92670
    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0C:J

    .line 92671
    .end local v28    # "audioDurationUs":J
    .local v7, "audioDurationUs":J
    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0A:J

    .line 92672
    new-array v1, v2, [Lcom/facebook/ads/redexgen/X/Ic;

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Ic;

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    .line 92673
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kY;->A0N([Lcom/facebook/ads/redexgen/X/Ic;)[[J

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0H:[[J

    .line 92674
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 92675
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/kY;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 92676
    return-void
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/Ic;J)V
    .locals 3

    .line 92677
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    .line 92678
    .local v0, "sampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/Ip;->A00(J)I

    move-result v1

    .line 92679
    .local v1, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 92680
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/Ip;->A01(J)I

    move-result v1

    .line 92681
    :cond_0
    iput v1, p1, Lcom/facebook/ads/redexgen/X/Ic;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    .line 92682
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "DxqZc2lJMNLNZhW19Xb8kO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0I(I)Z
    .locals 1

    .line 92683
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_0

    const v0, 0x7472616b

    if-eq p0, v0, :cond_0

    const v0, 0x6d646961

    if-eq p0, v0, :cond_0

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_0

    const v0, 0x7374626c

    if-eq p0, v0, :cond_0

    const v0, 0x65647473

    if-eq p0, v0, :cond_0

    const v0, 0x6d657461

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0J(I)Z
    .locals 4

    .line 92684
    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v3, 0x68646c72    # 4.3148E24f

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "UHuXZ9PGVGxrhu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Sv1JTBT1egKeuo"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v3, 0x7374636f

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "0EWWhWMRQ7MgS85x4CKboIorprSqD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_1

    :goto_0
    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eq p0, v3, :cond_1

    goto :goto_0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92685
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 92686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v4, v6, v5}, Lcom/facebook/ads/redexgen/X/lN;->AGh([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92687
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kY;->A0B()V

    .line 92688
    return v4

    .line 92689
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    .line 92690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 92691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    .line 92692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A01:I

    .line 92693
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_9

    .line 92694
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_c

    .line 92695
    .local v0, "headerBytesRemaining":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "uEfPCG8cZZkUCN4sq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v6, v3}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 92696
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    .line 92697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    .line 92698
    .end local v0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_b

    .line 92699
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kY;->A0I(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92700
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    add-long/2addr v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 92701
    .local v0, "endPosition":J
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v3, v0

    cmp-long v0, v6, v3

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/facebook/ads/redexgen/X/kY;->A01:I

    const v0, 0x6d657461

    if-ne v3, v0, :cond_3

    .line 92702
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kY;->A0F(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 92703
    :cond_3
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/kY;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/kj;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/kj;-><init>(IJ)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 92704
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v3, v0

    cmp-long v0, v6, v3

    if-nez v0, :cond_4

    .line 92705
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/kY;->A0D(J)V

    .line 92706
    :goto_1
    return v5

    .line 92707
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kY;->A0A()V

    goto :goto_1

    .line 92708
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kY;->A0J(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92709
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    if-ne v0, v6, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 92710
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v1, v7

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 92711
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    long-to-int v0, v1

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 92712
    .local v0, "atomData":Lcom/facebook/ads/redexgen/X/4J;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92713
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/kY;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    .line 92714
    iput v5, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    .line 92715
    .end local v0    # "atomData":Lcom/facebook/ads/redexgen/X/4J;
    goto :goto_1

    .line 92716
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 92717
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 92718
    :cond_8
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v0, v0

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/kY;->A0E(J)V

    .line 92719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    .line 92720
    iput v5, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    goto :goto_1

    .line 92721
    :cond_9
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 92722
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v2

    .line 92723
    .local v4, "endPosition":J
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_a

    .line 92724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kj;

    .line 92725
    .local v0, "containerAtom":Lcom/facebook/ads/redexgen/X/kj;
    if-eqz v0, :cond_a

    .line 92726
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/kj;->A00:J

    .line 92727
    .end local v0    # "containerAtom":Lcom/facebook/ads/redexgen/X/kj;
    :cond_a
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 92728
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    goto/16 :goto_0

    .line 92729
    :cond_b
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kY;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92730
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/kY;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 92731
    .local v0, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 92732
    .local v2, "atomEndPosition":J
    const/4 v8, 0x0

    .line 92733
    .local v4, "seekRequired":Z
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/kY;->A0D:Lcom/facebook/ads/redexgen/X/4J;

    .line 92734
    .local v5, "atomData":Lcom/facebook/ads/redexgen/X/4J;
    if-eqz v6, :cond_3

    .line 92735
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    long-to-int v0, v4

    invoke-interface {p1, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 92736
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A01:I

    const v0, 0x66747970

    if-ne v1, v0, :cond_2

    .line 92737
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/kY;->A02(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A02:I

    .line 92738
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/kY;->A0D(J)V

    .line 92739
    if-eqz v8, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 92740
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/kj;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/kY;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/ki;

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/redexgen/X/ki;-><init>(ILcom/facebook/ads/redexgen/X/4J;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/kj;->A09(Lcom/facebook/ads/redexgen/X/ki;)V

    goto :goto_0

    .line 92742
    :cond_3
    const-wide/32 v6, 0x40000

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    .line 92743
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    goto :goto_0

    .line 92744
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 92745
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static synthetic A0M()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 92746
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/kY;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/kY;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static A0N([Lcom/facebook/ads/redexgen/X/Ic;)[[J
    .locals 16

    .line 92747
    move-object/from16 v7, p0

    array-length v0, v7

    new-array v6, v0, [[J

    .line 92748
    .local v0, "accumulatedSampleSizes":[[J
    array-length v0, v7

    new-array v5, v0, [I

    .line 92749
    .local v1, "nextSampleIndex":[I
    array-length v0, v7

    new-array v4, v0, [J

    .line 92750
    .local v2, "nextSampleTimesUs":[J
    array-length v0, v7

    new-array v3, v0, [Z

    .line 92751
    .local v3, "tracksFinished":[Z
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    array-length v0, v7

    if-ge v2, v0, :cond_0

    .line 92752
    aget-object v0, v7, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A01:I

    new-array v0, v0, [J

    aput-object v0, v6, v2

    .line 92753
    aget-object v0, v7, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ip;->A07:[J

    const/4 v0, 0x0

    aget-wide v0, v1, v0

    aput-wide v0, v4, v2

    .line 92754
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92755
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v15, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_7

    .line 92756
    .local v4, "accumulatedSampleSize":J
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "qbCXFrWy43oBbJoUYfYqc11BUuHVPZxe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v2, 0x0

    .line 92757
    .local v6, "finishedTracks":I
    :goto_1
    array-length v0, v7

    if-ge v2, v0, :cond_6

    .line 92758
    const-wide v13, 0x7fffffffffffffffL

    .line 92759
    .local v7, "minTimeUs":J
    const/4 v12, -0x1

    .line 92760
    .local v9, "minTimeTrackIndex":I
    const/4 v9, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, v7

    if-ge v9, v0, :cond_3

    .line 92761
    aget-boolean v10, v3, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2

    sget-object v8, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "AIMWoJADevTWezna7TxcWd"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    if-nez v10, :cond_1

    :goto_3
    aget-wide v10, v4, v9

    cmp-long v0, v10, v13

    if-gtz v0, :cond_1

    .line 92762
    move v12, v9

    .line 92763
    aget-wide v13, v4, v9

    .line 92764
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "DkVrMcHnnNdNTj"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "McjqbXJyC3Esle"

    const/4 v0, 0x7

    aput-object v1, v8, v0

    if-nez v10, :cond_1

    goto :goto_3

    .line 92765
    .end local v10    # "i":I
    :cond_3
    aget v8, v5, v12

    .line 92766
    .local v10, "trackSampleIndex":I
    aget-object v0, v6, v12

    aput-wide v15, v0, v8

    .line 92767
    aget-object v0, v7, v12

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A05:[I

    aget v0, v0, v8

    int-to-long v0, v0

    add-long/2addr v15, v0

    .line 92768
    const/4 v1, 0x1

    add-int/2addr v8, v1

    aput v8, v5, v12

    .line 92769
    aget-object v0, v6, v12

    array-length v0, v0

    if-ge v8, v0, :cond_5

    .line 92770
    aget-object v10, v7, v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_4

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A07:[J

    aget-wide v0, v0, v8

    aput-wide v0, v4, v12

    goto :goto_1

    :cond_4
    sget-object v9, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "FttiEMkEmxvjjK7"

    const/4 v0, 0x5

    aput-object v1, v9, v0

    const-string v1, "cOA5C"

    const/4 v0, 0x0

    aput-object v1, v9, v0

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/Ic;->A04:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A07:[J

    aget-wide v0, v0, v8

    aput-wide v0, v4, v12

    goto/16 :goto_1

    .line 92771
    :cond_5
    aput-boolean v1, v3, v12

    .line 92772
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 92773
    :cond_6
    return-object v6

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A7l()J
    .locals 2

    .line 92774
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0B:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 1

    .line 92775
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/kY;->A07(JI)Lcom/facebook/ads/redexgen/X/Gv;

    move-result-object v0

    return-object v0
.end method

.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 0

    .line 92776
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kY;->A0E:Lcom/facebook/ads/redexgen/X/GY;

    .line 92777
    return-void
.end method

.method public final AAa()Z
    .locals 1

    .line 92778
    const/4 v0, 0x1

    return v0
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92779
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    packed-switch v0, :pswitch_data_0

    .line 92780
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92781
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/kY;->A0L(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92782
    const/4 v0, 0x1

    return v0

    .line 92783
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kY;->A0K(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92784
    const/4 v0, -0x1

    return v0

    .line 92785
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/kY;->A04(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 92786
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/kY;->A03(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final AGr()V
    .locals 0

    .line 92787
    return-void
.end method

.method public final AIM(JJ)V
    .locals 5

    .line 92788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 92789
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/kY;->A00:I

    .line 92790
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A08:I

    .line 92791
    iput v4, p0, Lcom/facebook/ads/redexgen/X/kY;->A05:I

    .line 92792
    iput v4, p0, Lcom/facebook/ads/redexgen/X/kY;->A06:I

    .line 92793
    iput v4, p0, Lcom/facebook/ads/redexgen/X/kY;->A07:I

    .line 92794
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 92795
    iget v4, p0, Lcom/facebook/ads/redexgen/X/kY;->A04:I

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92796
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kY;->A0G:[Lcom/facebook/ads/redexgen/X/Ic;

    array-length v2, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v1, v3, v4

    .line 92797
    .local v3, "track":Lcom/facebook/ads/redexgen/X/Ic;
    invoke-direct {p0, v1, p3, p4}, Lcom/facebook/ads/redexgen/X/kY;->A0H(Lcom/facebook/ads/redexgen/X/Ic;J)V

    .line 92798
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:Lcom/facebook/ads/redexgen/X/H2;

    if-eqz v0, :cond_1

    .line 92799
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:Lcom/facebook/ads/redexgen/X/H2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H2;->A02()V

    .line 92800
    .end local v3    # "track":Lcom/facebook/ads/redexgen/X/Ic;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92801
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/kY;->A0R:[Ljava/lang/String;

    const-string v1, "BBO5nGzNDCjhdG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Qq9RZt6cBQ724Z"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_4

    .line 92802
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kY;->A0A()V

    .line 92803
    :cond_3
    :goto_1
    return-void

    .line 92804
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0N:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A08()V

    .line 92805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92806
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kY;->A0I:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A02(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
