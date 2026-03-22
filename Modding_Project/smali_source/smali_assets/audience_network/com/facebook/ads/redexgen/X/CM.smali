.class public final Lcom/facebook/ads/redexgen/X/CM;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/eC;
.implements Lcom/facebook/ads/redexgen/X/eS;
.implements Lcom/facebook/ads/redexgen/X/eE;


# static fields
.field public static A0O:[B

.field public static A0P:[Ljava/lang/String;

.field public static final A0Q:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Landroid/net/Uri;

.field public A07:Landroid/view/Surface;

.field public A08:Landroid/view/View;

.field public A09:Landroid/widget/MediaController;

.field public A0A:Lcom/facebook/ads/redexgen/X/dL;

.field public A0B:Lcom/facebook/ads/redexgen/X/db;

.field public A0C:Lcom/facebook/ads/redexgen/X/eF;

.field public A0D:Lcom/facebook/ads/redexgen/X/eU;

.field public A0E:Lcom/facebook/ads/redexgen/X/eU;

.field public A0F:Lcom/facebook/ads/redexgen/X/eV;

.field public A0G:Ljava/lang/String;

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 636
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IkPvJjq0d6kyiPKTTS2lCNhYTces79dt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hRUerIi7AJ3jOkGNT2UiHpaxkSFge2bW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Avvx3DFr2S27"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gmbQyyKnf6LsZqIL76N8lXPSt8AAYSbH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tA8cc29oavr4xgkZce"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dMNAf6LzALyzJxRA4XpvvVCIX8V0s"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/CM;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 2

    .line 32537
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 32538
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    .line 32539
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    .line 32540
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0M:Z

    .line 32541
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0N:Z

    .line 32542
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0J:Z

    .line 32543
    iput v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    .line 32544
    iput v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    .line 32545
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:F

    .line 32546
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    .line 32547
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0I:Z

    .line 32548
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0H:Z

    .line 32549
    sget-object v0, Lcom/facebook/ads/redexgen/X/db;->A03:Lcom/facebook/ads/redexgen/X/db;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0B:Lcom/facebook/ads/redexgen/X/db;

    .line 32550
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0K:Z

    .line 32551
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0L:Z

    .line 32552
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 32553
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32554
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32555
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    .line 32556
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    .line 32557
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0M:Z

    .line 32558
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0N:Z

    .line 32559
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0J:Z

    .line 32560
    iput v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    .line 32561
    iput v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    .line 32562
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:F

    .line 32563
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    .line 32564
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0I:Z

    .line 32565
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0H:Z

    .line 32566
    sget-object v0, Lcom/facebook/ads/redexgen/X/db;->A03:Lcom/facebook/ads/redexgen/X/db;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0B:Lcom/facebook/ads/redexgen/X/db;

    .line 32567
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0K:Z

    .line 32568
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0L:Z

    .line 32569
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 32570
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 32571
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32572
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    .line 32573
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    .line 32574
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0M:Z

    .line 32575
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0N:Z

    .line 32576
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0J:Z

    .line 32577
    iput v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    .line 32578
    iput v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    .line 32579
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:F

    .line 32580
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    .line 32581
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0I:Z

    .line 32582
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0H:Z

    .line 32583
    sget-object v0, Lcom/facebook/ads/redexgen/X/db;->A03:Lcom/facebook/ads/redexgen/X/db;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0B:Lcom/facebook/ads/redexgen/X/db;

    .line 32584
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0K:Z

    .line 32585
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0L:Z

    .line 32586
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 32587
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/CM;)Landroid/widget/MediaController;
    .locals 0

    .line 32588
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eF;
    .locals 0

    .line 32589
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eV;
    .locals 0

    .line 32590
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0F:Lcom/facebook/ads/redexgen/X/eV;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0O:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 5

    .line 32591
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/eF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/eF;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    .line 32592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/eF;->A0H(Lcom/facebook/ads/redexgen/X/eE;)V

    .line 32593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/eF;->A0G(Lcom/facebook/ads/redexgen/X/eC;)V

    .line 32594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/eF;->A0I(Z)V

    .line 32595
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0J:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0I:Z

    if-nez v0, :cond_0

    .line 32596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v1

    .line 32597
    .local v0, "activityContext":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 32598
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    .line 32599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A08:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 32600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    new-instance v0, Lcom/facebook/ads/redexgen/X/eL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eL;-><init>(Lcom/facebook/ads/redexgen/X/CM;)V

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 32601
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 32602
    .end local v0    # "activityContext":Landroid/app/Activity;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0G:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/CM;->A0G:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32603
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A08:Landroid/view/View;

    goto :goto_0

    .line 32604
    :cond_2
    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "TO7k5EC8ZWp6tpojZW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "fS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "Pg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "vu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 32605
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0K:Z

    if-eqz v0, :cond_6

    .line 32606
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A06:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A0F(Lcom/facebook/ads/redexgen/X/cu;Landroid/net/Uri;)V

    .line 32607
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A08:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32608
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32609
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/CM;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 32610
    :cond_7
    return-void
.end method

.method private A05()V
    .locals 2

    .line 32611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-nez v0, :cond_0

    .line 32612
    return-void

    .line 32613
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A08()Lcom/facebook/ads/redexgen/X/eD;

    move-result-object v0

    .line 32614
    .local v0, "videoFormat":Lcom/facebook/ads/redexgen/X/eD;
    if-eqz v0, :cond_1

    .line 32615
    iget v1, v0, Lcom/facebook/ads/redexgen/X/eD;->A01:I

    iget v0, v0, Lcom/facebook/ads/redexgen/X/eD;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A08(II)V

    .line 32616
    :cond_1
    return-void
.end method

.method private A06()V
    .locals 2

    .line 32617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 32619
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    .line 32620
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_1

    .line 32621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A09()V

    .line 32622
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    .line 32623
    :cond_1
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    .line 32624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0N:Z

    .line 32625
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32626
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xe2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0O:[B

    return-void

    :array_0
    .array-data 1
        -0x36t
        -0xet
        -0xet
        -0x16t
        -0x11t
        -0x18t
        -0x5dt
        -0x1ct
        -0x11t
        -0x6t
        -0x1ct
        -0x4t
        -0xat
        -0x5dt
        -0x9t
        -0x15t
        -0xbt
        -0xet
        -0x6t
        -0x5dt
        -0x1ct
        -0xft
        -0x5dt
        -0x18t
        -0x5t
        -0x1at
        -0x18t
        -0xdt
        -0x9t
        -0x14t
        -0xet
        -0xft
        -0x5dt
        -0x6t
        -0x14t
        -0x9t
        -0x15t
        -0x5dt
        -0xat
        -0x18t
        -0x9t
        -0x3bt
        -0x1ct
        -0x1at
        -0x12t
        -0x16t
        -0xbt
        -0xet
        -0x8t
        -0xft
        -0x19t
        -0x39t
        -0xbt
        -0x1ct
        -0x6t
        -0x1ct
        -0x1bt
        -0x11t
        -0x18t
        -0x5dt
        -0xet
        -0xft
        -0x5dt
        -0x2ft
        -0xet
        -0x8t
        -0x16t
        -0x1ct
        -0x9t
        -0x5dt
        -0x1ct
        -0x1bt
        -0xet
        -0x7t
        -0x18t
        -0x4ft
        -0x5dt
        -0xat
        -0xet
        -0x5dt
        -0x6t
        -0x18t
        -0x5dt
        -0xat
        -0x14t
        -0x11t
        -0x18t
        -0xft
        -0x9t
        -0x11t
        -0x4t
        -0x5dt
        -0x14t
        -0x16t
        -0xft
        -0xet
        -0xbt
        -0x18t
        -0x5dt
        -0x14t
        -0x9t
        -0x4ft
        -0x16t
        0x12t
        0x12t
        0xat
        0xft
        0x8t
        -0x3dt
        0x4t
        0xft
        0x1at
        0x4t
        0x1ct
        0x16t
        -0x3dt
        0x17t
        0xbt
        0x15t
        0x12t
        0x1at
        -0x3dt
        0x4t
        0x11t
        -0x3dt
        0x8t
        0x1bt
        0x6t
        0x8t
        0x13t
        0x17t
        0xct
        0x12t
        0x11t
        -0x3dt
        0x1at
        0xct
        0x17t
        0xbt
        -0x3dt
        0x16t
        0x8t
        0x17t
        -0x17t
        0x12t
        0x15t
        0x8t
        0xat
        0x15t
        0x12t
        0x18t
        0x11t
        0x7t
        -0x3dt
        0x12t
        0x11t
        -0x3dt
        -0xft
        0x12t
        0x18t
        0xat
        0x4t
        0x17t
        -0x3dt
        0x4t
        0x5t
        0x12t
        0x19t
        0x8t
        -0x2ft
        -0x3dt
        0x16t
        0x12t
        -0x3dt
        0x1at
        0x8t
        -0x3dt
        0x16t
        0xct
        0xft
        0x8t
        0x11t
        0x17t
        0xft
        0x1ct
        -0x3dt
        0xct
        0xat
        0x11t
        0x12t
        0x15t
        0x8t
        -0x3dt
        0xct
        0x17t
        -0x2ft
        -0xbt
        0x8t
        0x3t
        0x4t
        0xet
        -0x41t
        0x12t
        0x13t
        0x0t
        0x13t
        0x4t
        -0x41t
        0x2t
        0x7t
        0x0t
        0xdt
        0x6t
        0x4t
        0x3t
        -0x41t
        0x13t
        0xet
        -0x41t
        -0x3ct
        -0x3et
        -0x35t
        -0x3et
        -0x31t
        -0x3at
        -0x40t
    .end array-data
.end method

.method private A08(II)V
    .locals 1

    .line 32627
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    if-eq p2, v0, :cond_1

    .line 32628
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    .line 32629
    iput p2, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    .line 32630
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    if-eqz v0, :cond_1

    .line 32631
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->requestLayout()V

    .line 32632
    :cond_1
    return-void
.end method

.method public static A09()Z
    .locals 1

    .line 32633
    invoke-static {}, Lcom/facebook/ads/redexgen/X/eF;->A03()Z

    move-result v0

    return v0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V
    .locals 4

    .line 32817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    if-eq p1, v0, :cond_2

    .line 32818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A05()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SV;->AAF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc4

    const/16 v1, 0x17

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32820
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    .line 32821
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_1

    .line 32822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0N:Z

    .line 32823
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0F:Lcom/facebook/ads/redexgen/X/eV;

    if-eqz v0, :cond_2

    .line 32824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0F:Lcom/facebook/ads/redexgen/X/eV;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/eV;->AFt(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32825
    :cond_2
    return-void
.end method


# virtual methods
.method public final synthetic A0A()V
    .locals 1

    .line 32634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    .line 32635
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32636
    return-void

    .line 32637
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->A9V()V

    .line 32638
    return-void
.end method

.method public final A9V()V
    .locals 2

    .line 32639
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0H:Z

    if-nez v0, :cond_0

    .line 32640
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->AG7(ZI)V

    .line 32641
    :cond_0
    return-void
.end method

.method public final A9i()Z
    .locals 1

    .line 32642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9j()Z
    .locals 1

    .line 32643
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0N:Z

    return v0
.end method

.method public final AAT()Z
    .locals 1

    .line 32644
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0M:Z

    return v0
.end method

.method public final AEe(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 32645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->ABx(Ljava/lang/String;)V

    .line 32646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 32647
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    .line 32648
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3a(I)V

    .line 32649
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A03:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 32651
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A1N:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 32652
    const/16 v2, 0xdb

    const/4 v1, 0x7

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 32653
    return-void
.end method

.method public final AEf(ZI)V
    .locals 7

    .line 32654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-nez v0, :cond_0

    .line 32655
    return-void

    .line 32656
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 32657
    :cond_1
    :goto_0
    return-void

    .line 32658
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CM;->A05()V

    .line 32659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A04:J

    .line 32660
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setRequestedVolume(F)V

    .line 32661
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A05:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/CM;->A05:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A07()J

    move-result-wide v1

    cmp-long v0, v5, v1

    if-gez v0, :cond_2

    .line 32662
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A05:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/eF;->A0D(J)V

    .line 32663
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/CM;->A05:J

    .line 32664
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A06()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/CM;->A0N:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "T7dswaxt6nrXidjLTysunwDPvSX4Ru7O"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ANtZP5BaeS0Nfv6aTfoZkiJnjx34FJZx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    .line 32665
    :goto_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "dNFvbzP2EYglZVOCcO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "3r7lyS1P0Mh4AObuDTaZ0iezAfx5hfrS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    goto :goto_1

    .line 32666
    :pswitch_1
    if-eqz p1, :cond_4

    .line 32667
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32668
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 32669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/eF;->A0I(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32670
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "0npepmR7M4IL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "iLUr5jfc2zzHXCQiIz3oIHQjifgBE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez p1, :cond_7

    .line 32671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A0A()V

    .line 32672
    :cond_7
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/CM;->A0N:Z

    goto/16 :goto_0

    .line 32673
    :cond_8
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_1

    .line 32674
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A07:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32675
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "MPZySUBjU8eQIDiJ8j"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v3, v0, :cond_1

    .line 32676
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0B:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->AJM(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 32677
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    goto/16 :goto_0

    .line 32678
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CM;->A05()V

    .line 32679
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    if-ltz v0, :cond_1

    .line 32680
    iget v2, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    .line 32681
    .local v0, "seekFrom":I
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    .line 32682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0F:Lcom/facebook/ads/redexgen/X/eV;

    if-eqz v0, :cond_1

    .line 32683
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0F:Lcom/facebook/ads/redexgen/X/eV;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->getCurrentPosition()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/eV;->AF9(II)V

    goto/16 :goto_0

    .line 32684
    :pswitch_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32685
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final AFq(IIIF)V
    .locals 0

    .line 32686
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CM;->A08(II)V

    .line 32687
    return-void
.end method

.method public final AG7(ZI)V
    .locals 2

    .line 32688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/LH;->A3W(I)V

    .line 32689
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    .line 32690
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0M:Z

    .line 32691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    .line 32692
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A0I(Z)V

    .line 32693
    :goto_0
    return-void

    .line 32694
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    goto :goto_0
.end method

.method public final AJH(I)V
    .locals 2

    .line 32695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->ABy(I)V

    .line 32696
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A09:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32697
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->AJU(I)V

    .line 32698
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A05:J

    .line 32699
    return-void
.end method

.method public final AJM(Lcom/facebook/ads/redexgen/X/db;I)V
    .locals 4

    .line 32700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/LH;->A3h(I)V

    .line 32701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0M:Z

    .line 32702
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    .line 32703
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0B:Lcom/facebook/ads/redexgen/X/db;

    .line 32704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-nez v0, :cond_1

    .line 32705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A06:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setup(Landroid/net/Uri;)V

    .line 32706
    :cond_0
    :goto_0
    return-void

    .line 32707
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A07:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_0

    .line 32708
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A0I(Z)V

    .line 32709
    sget-object v3, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "Wi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9L"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AJU(I)V
    .locals 1

    .line 32710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->A3j(I)V

    .line 32711
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    .line 32712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    .line 32713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A0B()V

    .line 32714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A09()V

    .line 32715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    .line 32716
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32717
    return-void
.end method

.method public final destroy()V
    .locals 0

    .line 32718
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CM;->A06()V

    .line 32719
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 32720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A06()J

    move-result-wide v1

    long-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    .line 32721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-nez v0, :cond_0

    .line 32722
    const/4 v0, 0x0

    return v0

    .line 32723
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A07()J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 32724
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A04:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/db;
    .locals 1

    .line 32725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0B:Lcom/facebook/ads/redexgen/X/db;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/eU;
    .locals 1

    .line 32726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/eU;
    .locals 1

    .line 32727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0E:Lcom/facebook/ads/redexgen/X/eU;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 32728
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 32729
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 32730
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 32731
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 32732
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 32733
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32734
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32735
    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A03:Lcom/facebook/ads/redexgen/X/eU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setVideoState(Lcom/facebook/ads/redexgen/X/eU;)V

    .line 32736
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->AJU(I)V

    .line 32737
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 32738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 32739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 32740
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    .line 32741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-nez v0, :cond_1

    .line 32742
    return-void

    .line 32743
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A0E(Landroid/view/Surface;)V

    .line 32744
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0M:Z

    if-nez v0, :cond_2

    .line 32745
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0B:Lcom/facebook/ads/redexgen/X/db;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->AJM(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 32746
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 32747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 32748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 32749
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Landroid/view/Surface;

    .line 32750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    .line 32751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eF;->A0E(Landroid/view/Surface;)V

    .line 32752
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_1

    .line 32753
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->AG7(ZI)V

    .line 32754
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 32755
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 11

    .line 32756
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32757
    return-void

    .line 32758
    :cond_0
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A0P:[Ljava/lang/String;

    const-string v1, "Md"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "f0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A08:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v4, v0, :cond_2

    .line 32759
    return-void

    .line 32760
    :cond_2
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/CM;->A0L:Z

    if-nez v0, :cond_3

    .line 32761
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/CM;->A0L:Z

    .line 32762
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AIF()V

    .line 32763
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    .line 32764
    .local v10, "encoding_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->getCurrentPosition()I

    move-result v0

    int-to-long v6, v0

    .line 32765
    .local p1, "playback_pts":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32766
    .local p3, "unix_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->getVolume()F

    move-result v10

    .line 32767
    .local v1, "volume":F
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/CM;->A0F:Lcom/facebook/ads/redexgen/X/eV;

    if-eqz v0, :cond_4

    .line 32768
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/CM;->A0F:Lcom/facebook/ads/redexgen/X/eV;

    invoke-interface/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/eV;->ADK(JJJF)V

    .line 32769
    :cond_4
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 4

    .line 32770
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 32771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-nez v0, :cond_0

    .line 32772
    return-void

    .line 32773
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32774
    return-void

    .line 32775
    :cond_1
    if-nez p1, :cond_5

    .line 32776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_3

    .line 32777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0H()Lcom/facebook/ads/redexgen/X/SO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SO;->A01()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 32778
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_4

    .line 32779
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/eK;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/eK;-><init>(Lcom/facebook/ads/redexgen/X/CM;)V

    .line 32780
    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32781
    :cond_3
    :goto_0
    return-void

    .line 32782
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->A9V()V

    goto :goto_0

    .line 32783
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0M:Z

    if-nez v0, :cond_3

    .line 32784
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0B:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->AJM(Lcom/facebook/ads/redexgen/X/db;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 3

    .line 32785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    .line 32786
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CM;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    .line 32787
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/eF;->A0D(J)V

    .line 32788
    :goto_0
    return-void

    .line 32789
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A05:J

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 32790
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 32791
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32792
    :cond_0
    :goto_0
    return-void

    .line 32793
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32794
    sget-object v3, Lcom/facebook/ads/redexgen/X/CM;->A0Q:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x66

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 32795
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0H:Z

    .line 32796
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 32797
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A08:Landroid/view/View;

    .line 32798
    new-instance v0, Lcom/facebook/ads/redexgen/X/eN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eN;-><init>(Lcom/facebook/ads/redexgen/X/CM;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32799
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 32800
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 32801
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 32802
    :cond_0
    :goto_0
    return-void

    .line 32803
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32804
    sget-object v3, Lcom/facebook/ads/redexgen/X/CM;->A0Q:Ljava/lang/String;

    const/16 v2, 0x66

    const/16 v1, 0x5e

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 32805
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0J:Z

    .line 32806
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0I:Z

    if-nez v0, :cond_0

    .line 32807
    new-instance v0, Lcom/facebook/ads/redexgen/X/eM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eM;-><init>(Lcom/facebook/ads/redexgen/X/CM;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CM;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32808
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 32809
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:F

    .line 32810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A08:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0D:Lcom/facebook/ads/redexgen/X/eU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A04:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_0

    .line 32811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/eF;->A0C(F)V

    .line 32812
    :cond_0
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 32813
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0K:Z

    .line 32814
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0

    .line 32815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0G:Ljava/lang/String;

    .line 32816
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/eV;)V
    .locals 0

    .line 32826
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A0F:Lcom/facebook/ads/redexgen/X/eV;

    .line 32827
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 1

    .line 32828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3Z()V

    .line 32829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0C:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    .line 32830
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CM;->A06()V

    .line 32831
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A06:Landroid/net/Uri;

    .line 32832
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/CM;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 32833
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CM;->A04()V

    .line 32834
    return-void
.end method
