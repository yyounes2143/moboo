.class public final Lcom/facebook/ads/redexgen/X/9O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/nF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/7Y;
    }
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/2z;

.field public A01:Lcom/facebook/ads/redexgen/X/3v;

.field public A02:Lcom/facebook/ads/redexgen/X/41;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/41<",
            "Lcom/facebook/ads/redexgen/X/7W;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public final A04:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/7U;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/oN;

.field public final A06:Lcom/facebook/ads/redexgen/X/oL;

.field public final A07:Lcom/facebook/ads/redexgen/X/3T;

.field public final A08:Lcom/facebook/ads/redexgen/X/7Y;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 545
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4o0rkz4sfHeK33SO99B05QXsoRhyQzGZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "K0gAeF3eD9ckm8sSKGrLnlGwgDvg6cGZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7dDhReETm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uWDgAo3QhNS2SDAVWxvGGUxEzkeXCi8E"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iTLUe92lN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "exEbYNMUNVYj7aZkfWzuIWQ7Xih8easj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xOp2qsvLijFTZdD02NXuZsLwHYitQrqs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "G4m8GVqXoTOlF678hGe6mWsbCNLG0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9O;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3T;)V
    .locals 3

    .line 26369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26370
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3T;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A07:Lcom/facebook/ads/redexgen/X/3T;

    .line 26371
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4a;->A0d()Landroid/os/Looper;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/nB;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/nB;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {v0, v2, p1, v1}, Lcom/facebook/ads/redexgen/X/41;-><init>(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3T;Lcom/facebook/ads/redexgen/X/3z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/41;

    .line 26372
    new-instance v0, Lcom/facebook/ads/redexgen/X/oN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A05:Lcom/facebook/ads/redexgen/X/oN;

    .line 26373
    new-instance v0, Lcom/facebook/ads/redexgen/X/oL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A06:Lcom/facebook/ads/redexgen/X/oL;

    .line 26374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9O;->A05:Lcom/facebook/ads/redexgen/X/oN;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7Y;-><init>(Lcom/facebook/ads/redexgen/X/oN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A08:Lcom/facebook/ads/redexgen/X/7Y;

    .line 26375
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Landroid/util/SparseArray;

    .line 26376
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/7U;
    .locals 1

    .line 26377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A08:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7Y;->A06()Lcom/facebook/ads/redexgen/X/mL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9O;->A04(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v0

    return-object v0
.end method

.method private A01(ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;
    .locals 3

    .line 26378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26379
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 26380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A08:Lcom/facebook/ads/redexgen/X/7Y;

    .line 26381
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/7Y;->A05(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26382
    .local v0, "isInKnownTimeline":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 26383
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/9O;->A04(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v0

    .line 26384
    :goto_1
    return-object v0

    .line 26385
    :cond_0
    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9O;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v0

    goto :goto_1

    .line 26386
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 26387
    .end local v0    # "isInKnownTimeline":Z
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7Y()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v1

    .line 26388
    .local v2, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 26389
    .local v0, "windowIsInTimeline":Z
    :goto_2
    if-eqz v2, :cond_3

    .line 26390
    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v0

    return-object v0

    .line 26391
    :cond_3
    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    goto :goto_3

    .line 26392
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/od;)Lcom/facebook/ads/redexgen/X/7U;
    .locals 2

    .line 26393
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9Y;

    if-eqz v0, :cond_0

    .line 26394
    check-cast p1, Lcom/facebook/ads/redexgen/X/9Y;

    .line 26395
    .local v0, "exoError":Lcom/facebook/ads/redexgen/X/9Y;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9Y;->A05:Lcom/facebook/ads/redexgen/X/2a;

    if-eqz v0, :cond_0

    .line 26396
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/9Y;->A05:Lcom/facebook/ads/redexgen/X/2a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/mL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/mL;-><init>(Lcom/facebook/ads/redexgen/X/2a;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9O;->A04(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v0

    return-object v0

    .line 26397
    .end local v0    # "exoError":Lcom/facebook/ads/redexgen/X/9Y;
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v0

    return-object v0
.end method

.method private final A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;
    .locals 18
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 26398
    move-object/from16 v8, p3

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26399
    const/4 v8, 0x0

    .line 26400
    .end local p13
    .local v1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/mL;
    .end local p13
    .local v12, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/mL;
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A07:Lcom/facebook/ads/redexgen/X/3T;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3T;->A6B()J

    move-result-wide v4

    .line 26401
    .local v16, "realtimeMs":J
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26402
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7Y()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    move/from16 v7, p2

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26403
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7T()I

    move-result v0

    if-ne v7, v0, :cond_8

    const/4 v1, 0x1

    .line 26404
    .local p0, "isInCurrentWindow":Z
    :goto_0
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2a;->A00()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26405
    if-eqz v1, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26406
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7Q()I

    move-result v1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    if-ne v1, v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26407
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7R()I

    move-result v1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    if-ne v1, v0, :cond_2

    .line 26408
    .local v1, "isCurrentAd":Z
    :goto_1
    if-eqz v3, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7W()J

    move-result-wide v9

    .line 26409
    .local p1, "eventPositionMs":J
    :cond_1
    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A08:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7Y;->A06()Lcom/facebook/ads/redexgen/X/mL;

    move-result-object v13

    .line 26410
    .local p3, "currentMediaPeriodId":Lcom/facebook/ads/redexgen/X/mL;
    new-instance v3, Lcom/facebook/ads/redexgen/X/7U;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26411
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7Y()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v11

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26412
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7T()I

    move-result v12

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26413
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7W()J

    move-result-wide v14

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26414
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A9B()J

    move-result-wide v16

    .end local v12    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/mL;
    .local p9, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/mL;
    invoke-direct/range {v3 .. v17}, Lcom/facebook/ads/redexgen/X/7U;-><init>(JLcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/mL;JLcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/mL;JJ)V

    .line 26415
    return-object v3

    .line 26416
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 26417
    .end local v1    # "isCurrentAd":Z
    :cond_3
    if-eqz v1, :cond_5

    .line 26418
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7L()J

    move-result-wide v9

    sget-object v3, Lcom/facebook/ads/redexgen/X/9O;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v3, Lcom/facebook/ads/redexgen/X/9O;->A09:[Ljava/lang/String;

    const-string v1, "ZwCTxmE9kC93SnFyqUzyIs0NB6ZXsqqf"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    .restart local v1    # "isCurrentAd":Z
    goto :goto_2

    .line 26419
    .end local v1    # "isCurrentAd":Z
    :cond_5
    invoke-virtual {v6}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/9O;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_2

    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9O;->A06:Lcom/facebook/ads/redexgen/X/oL;

    invoke-virtual {v6, v7, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oL;->A04()J

    move-result-wide v9

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/facebook/ads/redexgen/X/9O;->A09:[Ljava/lang/String;

    const-string v1, "IrjjFtfbEX9d6APA3g1gQ2wngpNkMZh7"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    goto :goto_2

    .line 26420
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;
    .locals 4

    .line 26421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26422
    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 26423
    move-object v2, v3

    .line 26424
    .local v1, "knownTimeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    :goto_0
    if-eqz p1, :cond_0

    if-nez v2, :cond_4

    .line 26425
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7T()I

    move-result v2

    .line 26426
    .local v2, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2z;->A7Y()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v1

    .line 26427
    .local v3, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v2, v0, :cond_2

    const/4 v0, 0x1

    .line 26428
    .local p0, "windowIsInTimeline":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 26429
    :goto_2
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/9O;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v0

    return-object v0

    .line 26430
    :cond_1
    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    goto :goto_2

    .line 26431
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 26432
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A08:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A05(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v2

    goto :goto_0

    .line 26433
    :cond_4
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A05:Lcom/facebook/ads/redexgen/X/oN;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oN;->A00:I

    .line 26434
    .local v0, "windowIndex":I
    invoke-direct {p0, v2, v0, p1}, Lcom/facebook/ads/redexgen/X/9O;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/7U;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3y<",
            "Lcom/facebook/ads/redexgen/X/7W;",
            ">;)V"
        }
    .end annotation

    .line 26435
    .local p3, "eventInvocation":Lcom/facebook/ads/redexgen/X/3y;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$Event<Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsListener;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/41;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/41;->A0A(ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26437
    return-void
.end method


# virtual methods
.method public final AC5()V
    .locals 3

    .line 26438
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A03:Z

    if-nez v0, :cond_0

    .line 26439
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26440
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A03:Z

    .line 26441
    new-instance v1, Lcom/facebook/ads/redexgen/X/n9;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/n9;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26442
    .end local v0    # "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    :cond_0
    return-void
.end method

.method public final ACv(Lcom/facebook/ads/redexgen/X/o0;)V
    .locals 3

    .line 26443
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26444
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/n7;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/n7;-><init>(Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/o0;)V

    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26445
    return-void
.end method

.method public final ACw(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;)V"
        }
    .end annotation

    .line 26446
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26447
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/mz;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/mz;-><init>(Lcom/facebook/ads/redexgen/X/7U;Ljava/util/List;)V

    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26448
    return-void
.end method

.method public final AD6(ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/CG;)V
    .locals 3

    .line 26449
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9O;->A01(ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26450
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/nC;

    invoke-direct {v1, v2, p3}, Lcom/facebook/ads/redexgen/X/nC;-><init>(Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/CG;)V

    const/16 v0, 0x3ec

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26451
    return-void
.end method

.method public final ADw(ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V
    .locals 3

    .line 26452
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9O;->A01(ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26453
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/n8;

    invoke-direct {v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/n8;-><init>(Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V

    const/16 v0, 0x3ea

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26454
    return-void
.end method

.method public final ADy(ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/mL;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
        .end annotation
    .end param

    .line 26455
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9O;->A01(ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26456
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/n1;

    invoke-direct {v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/n1;-><init>(Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V

    const/16 v0, 0x3e9

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26457
    return-void
.end method

.method public final AE1(ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/io/IOException;Z)V
    .locals 7

    .line 26458
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9O;->A01(ILcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26459
    .local v6, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/nD;

    move v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/nD;-><init>(Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/io/IOException;Z)V

    const/16 v0, 0x3eb

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26460
    return-void
.end method

.method public final AEb(Lcom/facebook/ads/redexgen/X/ob;)V
    .locals 3

    .line 26461
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26462
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/n6;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/n6;-><init>(Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/ob;)V

    const/16 v0, 0xc

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26463
    return-void
.end method

.method public final AEd(Lcom/facebook/ads/redexgen/X/od;)V
    .locals 3

    .line 26464
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/od;)Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26465
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/nA;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/nA;-><init>(Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/od;)V

    const/16 v0, 0xa

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26466
    return-void
.end method

.method public final AEf(ZI)V
    .locals 3

    .line 26467
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26468
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/n5;

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/n5;-><init>(Lcom/facebook/ads/redexgen/X/7U;ZI)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26469
    return-void
.end method

.method public final AFB()V
    .locals 3

    .line 26470
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26471
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/n0;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/n0;-><init>(Lcom/facebook/ads/redexgen/X/7U;)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26472
    return-void
.end method

.method public final AFQ(Lcom/facebook/ads/androidx/media3/common/Timeline;I)V
    .locals 3

    .line 26473
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9O;->A08:Lcom/facebook/ads/redexgen/X/7Y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7Y;->A07(Lcom/facebook/ads/redexgen/X/2z;)V

    .line 26474
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26475
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/n3;

    invoke-direct {v1, v2, p2}, Lcom/facebook/ads/redexgen/X/n3;-><init>(Lcom/facebook/ads/redexgen/X/7U;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26476
    return-void
.end method

.method public final AFU(Lcom/facebook/ads/redexgen/X/o6;)V
    .locals 3

    .line 26477
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9O;->A00()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v2

    .line 26478
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/7U;
    new-instance v1, Lcom/facebook/ads/redexgen/X/n2;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/n2;-><init>(Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/o6;)V

    const/4 v0, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/7U;ILcom/facebook/ads/redexgen/X/3y;)V

    .line 26479
    return-void
.end method

.method public final AIv(Lcom/facebook/ads/redexgen/X/2z;Landroid/os/Looper;)V
    .locals 2

    .line 26480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A08:Lcom/facebook/ads/redexgen/X/7Y;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7Y;->A01(Lcom/facebook/ads/redexgen/X/7Y;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 26481
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2z;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:Lcom/facebook/ads/redexgen/X/2z;

    .line 26482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9O;->A07:Lcom/facebook/ads/redexgen/X/3T;

    const/4 v0, 0x0

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/3T;->A5H(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/np;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A01:Lcom/facebook/ads/redexgen/X/3v;

    .line 26483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/41;

    new-instance v0, Lcom/facebook/ads/redexgen/X/n4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/n4;-><init>(Lcom/facebook/ads/redexgen/X/9O;Lcom/facebook/ads/redexgen/X/2z;)V

    .line 26484
    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/41;->A07(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3z;)Lcom/facebook/ads/redexgen/X/41;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/41;

    .line 26485
    return-void

    .line 26486
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
