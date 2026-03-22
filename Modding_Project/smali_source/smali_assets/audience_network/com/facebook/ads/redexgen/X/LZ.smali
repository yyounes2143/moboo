.class public final Lcom/facebook/ads/redexgen/X/LZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/YT;
    }
.end annotation


# static fields
.field public static A0D:[B


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/EG;

.field public A02:Lcom/facebook/ads/redexgen/X/3i;

.field public A03:Ljava/lang/String;

.field public final A04:Lcom/facebook/ads/redexgen/X/dL;

.field public final A05:Lcom/facebook/ads/redexgen/X/US;

.field public final A06:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A07:Lcom/facebook/ads/redexgen/X/YT;

.field public final A08:Lcom/facebook/ads/redexgen/X/E1;

.field public final A09:Lcom/facebook/ads/redexgen/X/DX;

.field public final A0A:Lcom/facebook/ads/redexgen/X/DV;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DR;

.field public final A0C:Lcom/facebook/ads/redexgen/X/DP;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LZ;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YT;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 5

    .line 50547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50548
    new-instance v0, Lcom/facebook/ads/redexgen/X/5x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5x;-><init>(Lcom/facebook/ads/redexgen/X/LZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A0C:Lcom/facebook/ads/redexgen/X/DP;

    .line 50549
    new-instance v0, Lcom/facebook/ads/redexgen/X/5w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5w;-><init>(Lcom/facebook/ads/redexgen/X/LZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A0B:Lcom/facebook/ads/redexgen/X/DR;

    .line 50550
    new-instance v0, Lcom/facebook/ads/redexgen/X/5v;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5v;-><init>(Lcom/facebook/ads/redexgen/X/LZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A09:Lcom/facebook/ads/redexgen/X/DX;

    .line 50551
    new-instance v0, Lcom/facebook/ads/redexgen/X/5t;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5t;-><init>(Lcom/facebook/ads/redexgen/X/LZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A0A:Lcom/facebook/ads/redexgen/X/DV;

    .line 50552
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 50553
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/LZ;->A05:Lcom/facebook/ads/redexgen/X/US;

    .line 50554
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LZ;->A07:Lcom/facebook/ads/redexgen/X/YT;

    .line 50555
    new-instance v0, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/E1;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    .line 50556
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3D;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3D;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 50557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    .line 50558
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v4

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A0C:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A0B:Lcom/facebook/ads/redexgen/X/DR;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A09:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v3, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A0A:Lcom/facebook/ads/redexgen/X/DV;

    aput-object v0, v3, v1

    .line 50559
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 50560
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/LZ;->A06:Lcom/facebook/ads/redexgen/X/Xn;

    .line 50561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/E1;->setIsFullScreen(Z)V

    .line 50562
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->setVolume(F)V

    .line 50563
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50564
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    invoke-interface {p4, v0, v1}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 50566
    new-instance v1, Lcom/facebook/ads/redexgen/X/Xv;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Xv;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50567
    .local v1, "closeButton":Lcom/facebook/ads/redexgen/X/Xv;
    new-instance v0, Lcom/facebook/ads/redexgen/X/YR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YR;-><init>(Lcom/facebook/ads/redexgen/X/LZ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xv;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50568
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xv;->getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 50569
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/LZ;)Lcom/facebook/ads/redexgen/X/Xn;
    .locals 0

    .line 50570
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A06:Lcom/facebook/ads/redexgen/X/Xn;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/LZ;)Lcom/facebook/ads/redexgen/X/YT;
    .locals 0

    .line 50571
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A07:Lcom/facebook/ads/redexgen/X/YT;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LZ;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x66

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

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LZ;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x38t
        0x39t
        0x22t
        0x3dt
        0x21t
        0x2ct
        0x34t
        0x7at
        0x75t
        0x70t
        0x7ct
        0x77t
        0x6dt
        0x4dt
        0x76t
        0x72t
        0x7ct
        0x77t
        0x14t
        0x12t
        0x4t
        0x2ft
        0x0t
        0x15t
        0x8t
        0x17t
        0x4t
        0x22t
        0x15t
        0x0t
        0x23t
        0x14t
        0x15t
        0x15t
        0xet
        0xft
        0x37t
        0x28t
        0x25t
        0x24t
        0x2et
        0x8t
        0x2ft
        0x35t
        0x24t
        0x33t
        0x32t
        0x35t
        0x28t
        0x35t
        0x20t
        0x2dt
        0x4t
        0x37t
        0x24t
        0x2ft
        0x35t
        0x51t
        0x4et
        0x43t
        0x42t
        0x48t
        0x6bt
        0x48t
        0x40t
        0x40t
        0x42t
        0x55t
        0x74t
        0x6bt
        0x66t
        0x67t
        0x6dt
        0x4ft
        0x52t
        0x46t
        0x67t
        0x78t
        0x75t
        0x74t
        0x7et
        0x42t
        0x74t
        0x74t
        0x7at
        0x45t
        0x78t
        0x7ct
        0x74t
        0x3ft
        0x20t
        0x2dt
        0x2ct
        0x26t
        0x1ct
        0x1bt
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .locals 1

    .line 50572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E1;->setVideoProgressReportIntervalMs(I)V

    .line 50573
    return-void
.end method

.method public final A05(Landroid/view/View;)V
    .locals 1

    .line 50574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E1;->setControlsAnchorView(Landroid/view/View;)V

    .line 50575
    return-void
.end method

.method public final AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 11

    .line 50576
    const/16 v2, 0x8

    const/16 v1, 0xb

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_4

    .line 50577
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A03:Ljava/lang/String;

    .line 50578
    :goto_0
    const/16 v2, 0x13

    const/16 v1, 0x12

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50579
    .local v0, "ctaText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Lcom/facebook/ads/redexgen/X/cl;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/cl;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)V

    .line 50581
    .local v1, "ctaButton":Lcom/facebook/ads/redexgen/X/cl;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50582
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    .line 50583
    .local v3, "density":F
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 50584
    .local v4, "margin":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 50585
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50586
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50587
    new-instance v0, Lcom/facebook/ads/redexgen/X/YS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YS;-><init>(Lcom/facebook/ads/redexgen/X/LZ;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A06:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 50589
    .end local v1    # "ctaButton":Lcom/facebook/ads/redexgen/X/cl;
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "density":F
    .end local v4    # "margin":I
    :cond_0
    const/16 v2, 0x4d

    const/16 v1, 0xd

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A00:I

    .line 50590
    new-instance v4, Lcom/facebook/ads/redexgen/X/3i;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/LZ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/LZ;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/LZ;->A03:Ljava/lang/String;

    .line 50591
    const/16 v3, 0x3a

    const/16 v2, 0xb

    const/16 v1, 0x41

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/3i;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/LZ;->A02:Lcom/facebook/ads/redexgen/X/3i;

    .line 50592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/U7;->A1v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50593
    new-instance v1, Lcom/facebook/ads/redexgen/X/EG;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LZ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LZ;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/LZ;->A03:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/LZ;->A02:Lcom/facebook/ads/redexgen/X/3i;

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/EG;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Dc;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A01:Lcom/facebook/ads/redexgen/X/EG;

    .line 50594
    :goto_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    const/16 v3, 0x45

    const/16 v2, 0x8

    const/16 v1, 0x64

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/E1;->setVideoMPD(Ljava/lang/String;)V

    .line 50595
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    const/16 v3, 0x5a

    const/16 v2, 0x8

    const/16 v1, 0x2f

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/E1;->setVideoURI(Ljava/lang/String;)V

    .line 50596
    iget v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A00:I

    if-lez v1, :cond_1

    .line 50597
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A00:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/E1;->A0d(I)V

    .line 50598
    :cond_1
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/16 v1, 0x2b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50599
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A04:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 50600
    :cond_2
    return-void

    .line 50601
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A01:Lcom/facebook/ads/redexgen/X/EG;

    goto :goto_1

    .line 50602
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A03:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final AEV(Z)V
    .locals 5

    .line 50603
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LZ;->A06:Lcom/facebook/ads/redexgen/X/Xn;

    new-instance v3, Lcom/facebook/ads/redexgen/X/DT;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/DT;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Xn;->A4c(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    .line 50604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0a()V

    .line 50605
    return-void
.end method

.method public final AF0(Z)V
    .locals 5

    .line 50606
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LZ;->A06:Lcom/facebook/ads/redexgen/X/Xn;

    new-instance v3, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/DS;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Xn;->A4c(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    .line 50607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50608
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A04:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x12

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 50609
    :cond_0
    return-void
.end method

.method public final AIB(Landroid/os/Bundle;)V
    .locals 0

    .line 50610
    return-void
.end method

.method public final getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 50611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 50612
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 5

    .line 50613
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LZ;->A06:Lcom/facebook/ads/redexgen/X/Xn;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    .line 50614
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getCurrentPositionInMillis()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/DL;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/DL;-><init>(II)V

    .line 50615
    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LZ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Xn;->A4c(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    .line 50616
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A02:Lcom/facebook/ads/redexgen/X/3i;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getCurrentPositionInMillis()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0j(I)V

    .line 50617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A01:Lcom/facebook/ads/redexgen/X/EG;

    if-eqz v0, :cond_0

    .line 50618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A01:Lcom/facebook/ads/redexgen/X/EG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EG;->A08()V

    .line 50619
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0e(I)V

    .line 50620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A08:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0Z()V

    .line 50621
    return-void
.end method
