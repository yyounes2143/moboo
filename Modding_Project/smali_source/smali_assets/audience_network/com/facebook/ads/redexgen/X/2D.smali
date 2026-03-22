.class public final Lcom/facebook/ads/redexgen/X/2D;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/or;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:I

.field public A0I:I

.field public A0J:I

.field public A0K:J

.field public A0L:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

.field public A0M:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

.field public A0N:Lcom/facebook/ads/androidx/media3/common/Metadata;

.field public A0O:Ljava/lang/Object;

.field public A0P:Ljava/lang/String;

.field public A0Q:Ljava/lang/String;

.field public A0R:Ljava/lang/String;

.field public A0S:Ljava/lang/String;

.field public A0T:Ljava/lang/String;

.field public A0U:Ljava/lang/String;

.field public A0V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public A0W:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9457
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A03:I

    .line 9458
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A0B:I

    .line 9459
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A09:I

    .line 9460
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0K:J

    .line 9461
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A0J:I

    .line 9462
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A08:I

    .line 9463
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:F

    .line 9464
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A01:F

    .line 9465
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A0G:I

    .line 9466
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A04:I

    .line 9467
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A0E:I

    .line 9468
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A0A:I

    .line 9469
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A02:I

    .line 9470
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A0H:I

    .line 9471
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2D;->A0I:I

    .line 9472
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A05:I

    .line 9473
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 2

    .line 9474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9475
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0T:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0R:Ljava/lang/String;

    .line 9476
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0U:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0S:Ljava/lang/String;

    .line 9477
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0V:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0T:Ljava/lang/String;

    .line 9478
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0H:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0F:I

    .line 9479
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0C:I

    .line 9480
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A03:I

    .line 9481
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0D:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0B:I

    .line 9482
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0P:Ljava/lang/String;

    .line 9483
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0P:Lcom/facebook/ads/androidx/media3/common/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0N:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 9484
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0S:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0Q:Ljava/lang/String;

    .line 9485
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0U:Ljava/lang/String;

    .line 9486
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A09:I

    .line 9487
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0X:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0V:Ljava/util/List;

    .line 9488
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0M:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 9489
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0M:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0K:J

    .line 9490
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0J:I

    .line 9491
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A08:I

    .line 9492
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:F

    .line 9493
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0F:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0D:I

    .line 9494
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A01:F

    .line 9495
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0Y:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0W:[B

    .line 9496
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0I:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0G:I

    .line 9497
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0L:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 9498
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A04:I

    .line 9499
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0E:I

    .line 9500
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0A:I

    .line 9501
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A06:I

    .line 9502
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A07:I

    .line 9503
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A02:I

    .line 9504
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0J:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0H:I

    .line 9505
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0K:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0I:I

    .line 9506
    iget v0, p1, Lcom/facebook/ads/redexgen/X/or;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A05:I

    .line 9507
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0Q:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0O:Ljava/lang/Object;

    .line 9508
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/2C;)V
    .locals 0

    .line 9509
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2D;-><init>(Lcom/facebook/ads/redexgen/X/or;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/2D;)F
    .locals 0

    .line 9510
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/2D;)F
    .locals 0

    .line 9511
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A01:F

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9512
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A09:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9513
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0J:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9514
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A08:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9515
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0D:I

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9516
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0G:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9517
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A04:I

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9518
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0E:I

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9519
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0A:I

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9520
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A06:I

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9521
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A07:I

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9522
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A02:I

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9523
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0H:I

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9524
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0I:I

    return p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9525
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A05:I

    return p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9526
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0F:I

    return p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9527
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0C:I

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9528
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A03:I

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/2D;)I
    .locals 0

    .line 9529
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0B:I

    return p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/2D;)J
    .locals 1

    .line 9530
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0K:J

    return-wide v0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/2D;)Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    .locals 0

    .line 9531
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0L:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    return-object p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/2D;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .locals 0

    .line 9532
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0M:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    return-object p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/2D;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 0

    .line 9533
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0N:Lcom/facebook/ads/androidx/media3/common/Metadata;

    return-object p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/2D;)Ljava/lang/Object;
    .locals 0

    .line 9534
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0O:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/2D;)Ljava/lang/String;
    .locals 0

    .line 9535
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0R:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/2D;)Ljava/lang/String;
    .locals 0

    .line 9536
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0Q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/2D;)Ljava/lang/String;
    .locals 0

    .line 9537
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0U:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/2D;)Ljava/lang/String;
    .locals 0

    .line 9538
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0S:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/2D;)Ljava/lang/String;
    .locals 0

    .line 9539
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0T:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/2D;)Ljava/lang/String;
    .locals 0

    .line 9540
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/2D;)Ljava/util/List;
    .locals 0

    .line 9541
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0V:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/2D;)[B
    .locals 0

    .line 9542
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0W:[B

    return-object p0
.end method


# virtual methods
.method public final A0X(F)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9543
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:F

    .line 9544
    return-object p0
.end method

.method public final A0Y(F)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9545
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A01:F

    .line 9546
    return-object p0
.end method

.method public final A0Z(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9547
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A02:I

    .line 9548
    return-object p0
.end method

.method public final A0a(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9549
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A03:I

    .line 9550
    return-object p0
.end method

.method public final A0b(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9551
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A04:I

    .line 9552
    return-object p0
.end method

.method public final A0c(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9553
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A05:I

    .line 9554
    return-object p0
.end method

.method public final A0d(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9555
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A06:I

    .line 9556
    return-object p0
.end method

.method public final A0e(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9557
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A07:I

    .line 9558
    return-object p0
.end method

.method public final A0f(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9559
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A08:I

    .line 9560
    return-object p0
.end method

.method public final A0g(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 1

    .line 9561
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A0R:Ljava/lang/String;

    .line 9562
    return-object p0
.end method

.method public final A0h(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9563
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A09:I

    .line 9564
    return-object p0
.end method

.method public final A0i(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9565
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0A:I

    .line 9566
    return-object p0
.end method

.method public final A0j(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9567
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0B:I

    .line 9568
    return-object p0
.end method

.method public final A0k(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9569
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0C:I

    .line 9570
    return-object p0
.end method

.method public final A0l(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9571
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0D:I

    .line 9572
    return-object p0
.end method

.method public final A0m(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9573
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0E:I

    .line 9574
    return-object p0
.end method

.method public final A0n(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9575
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0F:I

    .line 9576
    return-object p0
.end method

.method public final A0o(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9577
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0G:I

    .line 9578
    return-object p0
.end method

.method public final A0p(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9579
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0H:I

    .line 9580
    return-object p0
.end method

.method public final A0q(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9581
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0I:I

    .line 9582
    return-object p0
.end method

.method public final A0r(I)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9583
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0J:I

    .line 9584
    return-object p0
.end method

.method public final A0s(J)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9585
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0K:J

    .line 9586
    return-object p0
.end method

.method public final A0t(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9587
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0L:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 9588
    return-object p0
.end method

.method public final A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Processing CryptoType for callers that don\'t know about it"
    .end annotation

    .line 9589
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0M:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 9590
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A05:I

    if-nez v0, :cond_0

    .line 9591
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0c(I)Lcom/facebook/ads/redexgen/X/2D;

    .line 9592
    :cond_0
    return-object p0
.end method

.method public final A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9593
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0N:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 9594
    return-object p0
.end method

.method public final A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9595
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0P:Ljava/lang/String;

    .line 9596
    return-object p0
.end method

.method public final A0x(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9597
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0Q:Ljava/lang/String;

    .line 9598
    return-object p0
.end method

.method public final A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9599
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0R:Ljava/lang/String;

    .line 9600
    return-object p0
.end method

.method public final A0z(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9601
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0S:Ljava/lang/String;

    .line 9602
    return-object p0
.end method

.method public final A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9603
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0T:Ljava/lang/String;

    .line 9604
    return-object p0
.end method

.method public final A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9605
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0U:Ljava/lang/String;

    .line 9606
    return-object p0
.end method

.method public final A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/facebook/ads/redexgen/X/2D;"
        }
    .end annotation

    .line 9607
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0V:Ljava/util/List;

    .line 9608
    return-object p0
.end method

.method public final A13([B)Lcom/facebook/ads/redexgen/X/2D;
    .locals 0

    .line 9609
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A0W:[B

    .line 9610
    return-object p0
.end method

.method public final A14()Lcom/facebook/ads/redexgen/X/or;
    .locals 2

    .line 9611
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/or;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/or;-><init>(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2C;)V

    return-object v0
.end method
