.class public final Lcom/facebook/ads/redexgen/X/kl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "DoNotStrip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;

.field public static final A0M:Lcom/facebook/ads/redexgen/X/Gb;

.field public static final A0N:Lcom/facebook/ads/redexgen/X/Hc;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

.field public A07:Lcom/facebook/ads/redexgen/X/GY;

.field public A08:Lcom/facebook/ads/redexgen/X/H1;

.field public A09:Lcom/facebook/ads/redexgen/X/H1;

.field public A0A:Lcom/facebook/ads/redexgen/X/kk;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:I

.field public final A0E:J

.field public final A0F:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Gi;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Gk;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Gl;

.field public final A0J:Lcom/facebook/ads/redexgen/X/H1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3067
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XN01ItT2bHY64Udo8U0rv5VGSzBxMc17"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LZob5GHcOm1BKJQ2vQEKg44UBdoAB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ux8BYUlKxCzUFwXHW791pvzO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EYpHAHesBPuZwNRi93BVygfvwpQNuwRz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BndnCdJGei78P0VEYjqxuWcWalVGolEJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FxTwI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kl;->A0B()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/kn;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kn;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/kl;->A0M:Lcom/facebook/ads/redexgen/X/Gb;

    .line 3068
    new-instance v0, Lcom/facebook/ads/redexgen/X/km;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/km;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/kl;->A0N:Lcom/facebook/ads/redexgen/X/Hc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "DoNotStrip"
    .end annotation

    .line 94415
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/kl;-><init>(I)V

    .line 94416
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "DoNotStrip"
    .end annotation

    .line 94417
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/kl;-><init>(IJ)V

    .line 94418
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "DoNotStrip"
    .end annotation

    .line 94419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94420
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 94421
    or-int/lit8 p1, p1, 0x1

    .line 94422
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/kl;->A0D:I

    .line 94423
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/kl;->A0E:J

    .line 94424
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    .line 94425
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gl;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    .line 94426
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gi;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0G:Lcom/facebook/ads/redexgen/X/Gi;

    .line 94427
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A02:J

    .line 94428
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0H:Lcom/facebook/ads/redexgen/X/Gk;

    .line 94429
    new-instance v0, Lcom/facebook/ads/redexgen/X/lO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0J:Lcom/facebook/ads/redexgen/X/H1;

    .line 94430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0J:Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 94431
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;I)I
    .locals 3

    .line 94432
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    add-int/lit8 v0, p1, 0x4

    if-lt v1, v0, :cond_2

    .line 94433
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    .line 94434
    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "hnNDf1WGfP5HptxyzX0WY3yEy4CiO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 94435
    .local v0, "headerData":I
    const v0, 0x58696e67

    if-eq v1, v0, :cond_0

    const v0, 0x496e666f

    if-ne v1, v0, :cond_2

    .line 94436
    :cond_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94437
    .end local v0    # "headerData":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    const/16 v0, 0x28

    if-lt v1, v0, :cond_3

    .line 94438
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94439
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    const v0, 0x56425249

    if-ne v1, v0, :cond_3

    .line 94440
    return v0

    .line 94441
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 94442
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A01:I

    if-nez v0, :cond_0

    .line 94443
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/kl;->A0F(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94444
    .local v0, "e":Ljava/io/EOFException;
    :catch_0
    const/4 v0, -0x1

    return v0

    .line 94445
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    if-nez v0, :cond_3

    .line 94446
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kl;->A07(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/kk;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    .line 94447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kl;->A07:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 94448
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A08:Lcom/facebook/ads/redexgen/X/H1;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A06:Ljava/lang/String;

    .line 94449
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 94450
    const/16 v0, 0x1000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0h(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A01:I

    .line 94451
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A03:I

    .line 94452
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0G:Lcom/facebook/ads/redexgen/X/Gi;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gi;->A00:I

    .line 94453
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0d(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0G:Lcom/facebook/ads/redexgen/X/Gi;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gi;->A01:I

    .line 94454
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0e(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 94455
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0D:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 94456
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 94457
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 94458
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A03:J

    .line 94459
    .end local v0
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kl;->A02(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0

    .line 94460
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    goto :goto_1

    .line 94461
    :cond_3
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/kl;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 94462
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v3

    .line 94463
    .local v0, "inputPosition":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kl;->A03:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 94464
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kl;->A03:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    goto :goto_2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput",
            "seeker"
        }
    .end annotation

    .line 94465
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A00:I

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 94466
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 94467
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kl;->A0E(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94468
    return v6

    .line 94469
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 94471
    .local v0, "sampleHeaderData":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A01:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/kl;->A0D(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94472
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Gm;->A00(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 94473
    .end local v4
    :cond_1
    invoke-interface {p1, v9}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94474
    iput v4, p0, Lcom/facebook/ads/redexgen/X/kl;->A01:I

    .line 94475
    return v4

    .line 94476
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Gl;->A00(I)Z

    .line 94477
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A02:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v7

    if-nez v2, :cond_3

    .line 94478
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/kk;->A99(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A02:J

    .line 94479
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0E:J

    cmp-long v2, v0, v7

    if-eqz v2, :cond_3

    .line 94480
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    const-wide/16 v0, 0x0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/kk;->A99(J)J

    move-result-wide v7

    .line 94481
    .local v4, "embeddedFirstSampleTimestampUs":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0E:J

    sub-long/2addr v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A02:J

    .line 94482
    .end local v4    # "embeddedFirstSampleTimestampUs":J
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A00:I

    .line 94483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/7t;

    if-eqz v0, :cond_4

    .line 94484
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    check-cast v5, Lcom/facebook/ads/redexgen/X/7t;

    .line 94485
    .local v4, "indexSeeker":Lcom/facebook/ads/redexgen/X/7t;
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 94486
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/kl;->A03(J)J

    move-result-wide v7

    .line 94487
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 94488
    invoke-virtual {v5, v7, v8, v2, v3}, Lcom/facebook/ads/redexgen/X/7t;->A01(JJ)V

    .line 94489
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0C:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A05:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/7t;->A02(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94490
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/kl;->A0C:Z

    .line 94491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A09:Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 94492
    .end local v0    # "sampleHeaderData":I
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kl;->A08:Lcom/facebook/ads/redexgen/X/H1;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A00:I

    invoke-interface {v1, p1, v0, v9}, Lcom/facebook/ads/redexgen/X/H1;->AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v1

    .line 94493
    .local v0, "bytesAppended":I
    if-ne v1, v6, :cond_5

    .line 94494
    return v6

    .line 94495
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A00:I

    .line 94496
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A00:I

    if-lez v0, :cond_6

    .line 94497
    return v4

    .line 94498
    :cond_6
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/kl;->A08:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A04:J

    .line 94499
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/kl;->A03(J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    .line 94500
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_7

    .line 94501
    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "39D9RtME66Nzc4lHdRGQvnw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A04:J

    .line 94502
    iput v4, p0, Lcom/facebook/ads/redexgen/X/kl;->A00:I

    .line 94503
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(J)J
    .locals 6

    .line 94504
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A02:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A03:I

    int-to-long v0, v0

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public static A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)J
    .locals 7

    .line 94505
    if-eqz p0, :cond_1

    .line 94506
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v6

    .line 94507
    .local v0, "length":I
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 94508
    invoke-virtual {p0, v5}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v4

    .line 94509
    .local v2, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    instance-of v0, v4, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    if-eqz v0, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v3, v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;->A00:Ljava/lang/String;

    .line 94510
    const/16 v2, 0x18

    const/4 v1, 0x4

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kl;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94511
    check-cast v4, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v1, v4, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;->A02:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v0

    return-wide v0

    .line 94512
    .end local v2    # "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94513
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/lN;Z)Lcom/facebook/ads/redexgen/X/7u;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 94515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94516
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gl;->A00(I)Z

    .line 94517
    new-instance v0, Lcom/facebook/ads/redexgen/X/7u;

    .line 94518
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/7u;-><init>(JJLcom/facebook/ads/redexgen/X/Gl;Z)V

    .line 94519
    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)Lcom/facebook/ads/redexgen/X/7s;
    .locals 4

    .line 94520
    if-eqz p0, :cond_1

    .line 94521
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v3

    .line 94522
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 94523
    invoke-virtual {p0, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    move-result-object v2

    .line 94524
    .local v2, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    instance-of v0, v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;

    if-eqz v0, :cond_0

    .line 94525
    check-cast v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/kl;->A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/7s;->A01(JLcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;J)Lcom/facebook/ads/redexgen/X/7s;

    move-result-object v0

    return-object v0

    .line 94526
    .end local v2    # "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94527
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/kk;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94528
    move-object v3, p0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kl;->A08(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/kk;

    move-result-object v4

    .line 94529
    .local v1, "seekFrameSeeker":Lcom/facebook/ads/redexgen/X/kk;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/kl;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/kl;->A06(Lcom/facebook/ads/androidx/media3/common/Metadata;J)Lcom/facebook/ads/redexgen/X/7s;

    move-result-object v1

    .line 94530
    .local v2, "metadataSeeker":Lcom/facebook/ads/redexgen/X/kk;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/kl;->A0B:Z

    if-eqz v0, :cond_0

    .line 94531
    new-instance v0, Lcom/facebook/ads/redexgen/X/7r;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7r;-><init>()V

    return-object v0

    .line 94532
    :cond_0
    const/4 v5, 0x0

    .line 94533
    .local v3, "resultSeeker":Lcom/facebook/ads/redexgen/X/kk;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/kl;->A0D:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 94534
    const-wide/16 v10, -0x1

    .line 94535
    .local v4, "dataEndPosition":J
    if-eqz v1, :cond_6

    .line 94536
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7s;->A7l()J

    move-result-wide v6

    .line 94537
    .local v6, "durationUs":J
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7s;->A7b()J

    move-result-wide v10

    .line 94538
    .restart local v6    # "durationUs":J
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/7t;

    .line 94539
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v8

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/7t;-><init>(JJJ)V

    .line 94540
    .end local v4    # "dataEndPosition":J
    .end local v6    # "durationUs":J
    :cond_1
    :goto_1
    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "puIT5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 94541
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/Gw;->AAa()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v3, Lcom/facebook/ads/redexgen/X/kl;->A0D:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    .line 94542
    :cond_2
    iget v5, v3, Lcom/facebook/ads/redexgen/X/kl;->A0D:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "yAfIM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_5

    .line 94543
    :goto_2
    invoke-direct {v3, p1, v4}, Lcom/facebook/ads/redexgen/X/kl;->A05(Lcom/facebook/ads/redexgen/X/lN;Z)Lcom/facebook/ads/redexgen/X/7u;

    move-result-object v5

    .line 94544
    :cond_3
    return-object v5

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "MGo95V6JQFDSGlQkmGWT48KfEqhrmySi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_5

    goto :goto_2

    .line 94545
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 94546
    .end local v6
    :cond_6
    if-eqz v4, :cond_7

    .line 94547
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Gw;->A7l()J

    move-result-wide v6

    .line 94548
    .restart local v6    # "durationUs":J
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/kk;->A7b()J

    move-result-wide v10

    goto :goto_0

    .line 94549
    .end local v6    # "durationUs":J
    :cond_7
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/kl;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kl;->A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)J

    move-result-wide v6

    goto :goto_0

    .line 94550
    :cond_8
    if-eqz v1, :cond_9

    .line 94551
    move-object v5, v1

    goto :goto_1

    .line 94552
    :cond_9
    if-eqz v4, :cond_1

    .line 94553
    move-object v5, v4

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/kk;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    new-instance v10, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 94555
    .local v0, "frame":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 94556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A05:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/16 v4, 0x15

    if-eqz v0, :cond_3

    .line 94557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A01:I

    if-eq v0, v2, :cond_0

    const/16 v4, 0x24

    .line 94558
    .local v1, "xingBase":I
    :cond_0
    :goto_0
    invoke-static {v10, v4}, Lcom/facebook/ads/redexgen/X/kl;->A00(Lcom/facebook/ads/redexgen/X/4J;I)I

    move-result v2

    .line 94559
    .local v9, "seekHeader":I
    const v0, 0x58696e67

    const v3, 0x496e666f

    if-eq v2, v0, :cond_1

    if-ne v2, v3, :cond_6

    .line 94560
    .end local v2
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v7

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/7n;->A01(JJLcom/facebook/ads/redexgen/X/Gl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/7n;

    move-result-object v5

    .line 94561
    .restart local v2
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0G:Lcom/facebook/ads/redexgen/X/Gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gi;->A03()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94562
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 94563
    add-int/lit16 v0, v4, 0x8d

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 94564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v4

    const/4 v0, 0x3

    invoke-interface {p1, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 94565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94566
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kl;->A0G:Lcom/facebook/ads/redexgen/X/Gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Gi;->A04(I)Z

    .line 94567
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94568
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/7n;->AAa()Z

    move-result v0

    if-nez v0, :cond_7

    if-ne v2, v3, :cond_7

    .line 94569
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/kl;->A05(Lcom/facebook/ads/redexgen/X/lN;Z)Lcom/facebook/ads/redexgen/X/7u;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "bGvlWKvJjPQrySHefRGmEijHbVzYOxUK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "fU58RXvZc6f3KsNNOCISAUQgLzoCeDCK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    .line 94570
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A01:I

    if-eq v0, v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0xd

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94571
    :cond_6
    const v0, 0x56425249

    if-ne v2, v0, :cond_8

    .line 94572
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v7

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/7q;->A00(JJLcom/facebook/ads/redexgen/X/Gl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/7q;

    move-result-object v5

    .line 94573
    .local v2, "seeker":Lcom/facebook/ads/redexgen/X/kk;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94574
    :cond_7
    :goto_1
    return-object v5

    .line 94575
    .end local v2    # "seeker":Lcom/facebook/ads/redexgen/X/kk;
    :cond_8
    const/4 v5, 0x0

    .line 94576
    .restart local v2    # "seeker":Lcom/facebook/ads/redexgen/X/kk;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    goto :goto_1
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kl;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

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
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 94577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A09:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94578
    return-void
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kl;->A0K:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "rBULd6kp2sYKxjbrN7jKkVDhSodb4v28"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "gBWiztBtWh7JHxCzKYVaG6CraVXBuCHm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x4et
        -0x3ct
        -0x40t
        -0x2ft
        -0x3et
        -0x39t
        -0x3ct
        -0x3dt
        0x7ft
        -0x2dt
        -0x32t
        -0x32t
        0x7ft
        -0x34t
        -0x40t
        -0x33t
        -0x28t
        0x7ft
        -0x3ft
        -0x28t
        -0x2dt
        -0x3ct
        -0x2et
        -0x73t
        -0x1bt
        -0x23t
        -0x2at
        -0x21t
    .end array-data
.end method

.method public static synthetic A0C(IIIII)Z
    .locals 5

    .line 94579
    const/16 v0, 0x43

    const/4 v3, 0x2

    const/16 v1, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v3, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 v4, 0x4c

    sget-object v1, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "NxAl2v4obD3CfxY1bwrYNdaYMjSl6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne p2, v4, :cond_2

    if-ne p3, v4, :cond_2

    const/16 v0, 0x54

    if-eq p4, v0, :cond_1

    if-ne p0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0D(IJ)Z
    .locals 4

    .line 94580
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v3, v0

    const-wide/32 v1, -0x1f400

    and-long/2addr v1, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 94582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kk;->A7b()J

    move-result-wide v5

    .line 94583
    .local v2, "dataEndPosition":J
    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    .line 94584
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v2

    const-wide/16 v0, 0x4

    sub-long/2addr v5, v0

    cmp-long v0, v2, v5

    if-lez v0, :cond_0

    .line 94585
    return v4

    .line 94586
    .end local v2    # "dataEndPosition":J
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    .line 94587
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    .line 94588
    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/lN;->AGA([BIIZ)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94589
    .local v0, "e":Ljava/io/EOFException;
    :catch_0
    return v4
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/lN;Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94590
    const/4 v9, 0x0

    .line 94591
    .local v0, "validFrameCount":I
    const/4 v8, 0x0

    .line 94592
    .local v1, "candidateSynchronizedHeaderData":I
    const/4 v7, 0x0

    .line 94593
    .local v2, "peekedId3Bytes":I
    const/4 v6, 0x0

    .line 94594
    .local v3, "searchedBytes":I
    if-eqz p2, :cond_d

    const v5, 0x8000

    .line 94595
    .local v4, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 94596
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v12

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v0, v12, v10

    if-nez v0, :cond_1

    .line 94597
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0D:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 94598
    .local v5, "parseAllId3Frames":Z
    :goto_1
    if-eqz v0, :cond_b

    move-object v1, v4

    .line 94599
    .local v6, "id3FramePredicate":Lcom/facebook/ads/redexgen/X/Hc;
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0H:Lcom/facebook/ads/redexgen/X/Gk;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Gk;->A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 94600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    if-eqz v0, :cond_0

    .line 94601
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kl;->A0G:Lcom/facebook/ads/redexgen/X/Gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A06:Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gi;->A05(Lcom/facebook/ads/androidx/media3/common/Metadata;)Z

    .line 94602
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v0

    long-to-int v7, v0

    .line 94603
    if-nez p2, :cond_1

    .line 94604
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94605
    .end local v5    # "parseAllId3Frames":Z
    .end local v6    # "id3FramePredicate":Lcom/facebook/ads/redexgen/X/Hc;
    :cond_1
    :goto_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kl;->A0E(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94606
    if-lez v9, :cond_f

    .line 94607
    .end local v5
    .end local v7
    :goto_4
    if-eqz p2, :cond_2

    .line 94608
    add-int/2addr v7, v6

    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 94609
    :goto_5
    iput v8, p0, Lcom/facebook/ads/redexgen/X/kl;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_e

    .line 94610
    sget-object v2, Lcom/facebook/ads/redexgen/X/kl;->A0L:[Ljava/lang/String;

    const-string v1, "Yv6sT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 94611
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    goto :goto_5

    .line 94612
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0F:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v10

    .line 94614
    .local v5, "headerData":I
    if-eqz v8, :cond_4

    int-to-long v0, v8

    .line 94615
    invoke-static {v10, v0, v1}, Lcom/facebook/ads/redexgen/X/kl;->A0D(IJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94616
    :cond_4
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Gm;->A00(I)I

    move-result v1

    .local v7, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    .line 94617
    .end local v7    # "frameSize":I
    :cond_5
    add-int/lit8 v1, v6, 0x1

    .end local v3    # "searchedBytes":I
    .local v6, "searchedBytes":I
    if-ne v6, v5, :cond_6

    .line 94618
    if-eqz p2, :cond_10

    .line 94619
    return v2

    .line 94620
    :cond_6
    const/4 v9, 0x0

    .line 94621
    const/4 v8, 0x0

    .line 94622
    if-eqz p2, :cond_7

    .line 94623
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 94624
    add-int v0, v7, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 94625
    .end local v5    # "headerData":I
    :goto_6
    move v6, v1

    goto :goto_3

    .line 94626
    :cond_7
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    goto :goto_6

    .line 94627
    .end local v6    # "searchedBytes":I
    .restart local v3    # "searchedBytes":I
    .restart local v5    # "headerData":I
    .restart local v7    # "frameSize":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 94628
    if-ne v9, v3, :cond_a

    .line 94629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0I:Lcom/facebook/ads/redexgen/X/Gl;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/Gl;->A00(I)Z

    .line 94630
    move v8, v10

    .line 94631
    .restart local v5    # "headerData":I
    .restart local v7    # "frameSize":I
    :cond_9
    add-int/lit8 v0, v1, -0x4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    goto :goto_3

    .line 94632
    :cond_a
    const/4 v0, 0x4

    if-ne v9, v0, :cond_9

    goto :goto_4

    .line 94633
    :cond_b
    sget-object v1, Lcom/facebook/ads/redexgen/X/kl;->A0N:Lcom/facebook/ads/redexgen/X/Hc;

    goto/16 :goto_2

    .line 94634
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 94635
    :cond_d
    const/high16 v5, 0x20000

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 94636
    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 94637
    :cond_10
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kl;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static synthetic A0G()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 94638
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/kl;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/kl;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 3

    .line 94639
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kl;->A07:Lcom/facebook/ads/redexgen/X/GY;

    .line 94640
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A07:Lcom/facebook/ads/redexgen/X/GY;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A09:Lcom/facebook/ads/redexgen/X/H1;

    .line 94641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A09:Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 94642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A07:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 94643
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94644
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kl;->A0A()V

    .line 94645
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kl;->A01(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v5

    .line 94646
    .local v0, "readResult":I
    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/7t;

    if-eqz v0, :cond_0

    .line 94647
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A04:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/kl;->A03(J)J

    move-result-wide v3

    .line 94648
    .local v1, "durationUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gw;->A7l()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 94649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/7t;->A00(J)V

    .line 94650
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kl;->A07:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 94651
    .end local v1    # "durationUs":J
    :cond_0
    return v5
.end method

.method public final AGr()V
    .locals 0

    .line 94652
    return-void
.end method

.method public final AIM(JJ)V
    .locals 3

    .line 94653
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A01:I

    .line 94654
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A02:J

    .line 94655
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A04:J

    .line 94656
    iput v2, p0, Lcom/facebook/ads/redexgen/X/kl;->A00:I

    .line 94657
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/kl;->A05:J

    .line 94658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/7t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0A:Lcom/facebook/ads/redexgen/X/kk;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/7t;->A02(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0C:Z

    .line 94660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A0J:Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kl;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 94661
    :cond_0
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94662
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/kl;->A0F(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    move-result v0

    return v0
.end method
