.class public final Lcom/facebook/ads/redexgen/X/Fy;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/cT;
    }
.end annotation


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;

.field public static final A0N:Landroid/widget/RelativeLayout$LayoutParams;

.field public static final A0O:I

.field public static final A0P:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/a8;

.field public A04:Lcom/facebook/ads/redexgen/X/Hr;

.field public A05:Lcom/facebook/ads/redexgen/X/dI;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/hw;

.field public final A0B:Lcom/facebook/ads/redexgen/X/R6;

.field public final A0C:Lcom/facebook/ads/redexgen/X/SF;

.field public final A0D:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0E:Lcom/facebook/ads/redexgen/X/US;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A0G:Lcom/facebook/ads/redexgen/X/XC;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Xm;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0J:Lcom/facebook/ads/redexgen/X/YY;

.field public final A0K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/cR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 700
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2u2dP7fJh3RTJE0f5j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "V84xfC9vRBWBw28ag3Wa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AJ9OWsf0IOCB9JkMwpi03POlIdxFWB0O"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "t4KHUJW6pNylT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "agpCzVGtSfjd9ImL9ArnGOWeGltiI7KT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yQxi0n265GvpKMbNVeZVKXQg4YYx4N"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9gQlnw56"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rIoCFSW2UJYE3I7OlTOsSCWVSaoSra"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fy;->A0G()V

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fy;->A0N:Landroid/widget/RelativeLayout$LayoutParams;

    .line 701
    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Fy;->A0O:I

    .line 702
    const/high16 v1, 0x42800000    # 64.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Fy;->A0P:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 5

    .line 36537
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0K:Ljava/util/ArrayList;

    .line 36539
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    .line 36540
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    .line 36541
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    .line 36542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A06:Z

    .line 36543
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:I

    .line 36544
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    .line 36545
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    .line 36546
    new-instance v0, Lcom/facebook/ads/redexgen/X/G1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/G1;-><init>(Lcom/facebook/ads/redexgen/X/Fy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0B:Lcom/facebook/ads/redexgen/X/R6;

    .line 36547
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    .line 36548
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    .line 36549
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/US;

    .line 36550
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36551
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/SF;

    .line 36552
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    .line 36553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36554
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/US;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    .line 36555
    new-instance v0, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XC;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0G:Lcom/facebook/ads/redexgen/X/XC;

    .line 36556
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0G:Lcom/facebook/ads/redexgen/X/XC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XB;->A02:Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 36557
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36558
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1A()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/dI;

    invoke-direct {v0, v4, v2, v1, p6}, Lcom/facebook/ads/redexgen/X/dI;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xn;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A05:Lcom/facebook/ads/redexgen/X/dI;

    .line 36559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A05()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    .line 36560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1U()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 36561
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36562
    .local v1, "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/Fy;->A0P:I

    sget v1, Lcom/facebook/ads/redexgen/X/Fy;->A0O:I

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 36563
    .restart local v1    # "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36564
    return-void

    .line 36565
    .end local v1    # "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private A00()I
    .locals 6

    .line 36566
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 36567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    .line 36568
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36569
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1t()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 36570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36571
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:I

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0V(ZI)V

    .line 36572
    return v4

    .line 36573
    :cond_0
    return v3

    .line 36574
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    .line 36575
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1J()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36576
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1t()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    .line 36577
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1K()Z

    move-result v0

    if-nez v0, :cond_2

    .line 36578
    return v3

    .line 36579
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0W()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "AFu5VcCLRWlCVSPev3Ny5pnjuJiPpe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Nhy8N08k5Vw4Z8hL9UmI1FpStaZ0OS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    .line 36580
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1J()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36581
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1t()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    .line 36582
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1I()Z

    move-result v0

    if-nez v0, :cond_5

    .line 36583
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A26()Z

    move-result v0

    if-nez v0, :cond_4

    .line 36584
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    .line 36585
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:I

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0V(ZI)V

    .line 36586
    return v1

    .line 36587
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "s0FLaM76nMM9Qr7TZwL2usTxvSsXcmqy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "fT84jb4om2WjLoB8b8HhBoC0fCgiLofU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hr;->A1I()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36588
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4p()V

    .line 36590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1D()V

    .line 36591
    const/4 v0, 0x3

    return v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "A7yRQ8ZNY7QUzDAYMeY8X6eQmfD57M"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "dEOP0V0Fm3EsPKfzbtzpY8oiy2RB1y"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hr;->A1I()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 36592
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0X()Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Y()Z

    move-result v0

    if-nez v0, :cond_9

    .line 36593
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0F()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    .line 36594
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "ldx0hXy1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "A9K45C3zzpDFd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v4

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36595
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/50;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0W()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36596
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:I

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0V(ZI)V

    .line 36597
    const/4 v0, 0x5

    return v0

    .line 36598
    :cond_a
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A07:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 36599
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Fy;->A0K(I)V

    .line 36600
    const/4 v0, 0x6

    return v0
.end method

.method private A01(I)I
    .locals 4

    .line 36601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36602
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A26()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 36603
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "SFVCTE3Hv2F6eV4jkYzgVN3BuZvLlt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "be2ILDbetBMqGPrAeiZBpkZxeTc1wp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hw;->A21()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 36604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A21()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36605
    :goto_0
    return v0

    .line 36606
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A0m()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Fy;I)I
    .locals 1

    .line 36607
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    return v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 36608
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/Ua;
    .locals 0

    .line 36609
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    return-object p0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/Xm;
    .locals 11

    .line 36610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1U()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36611
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x2

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;IIZ)V

    .line 36612
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    .restart local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setFullscreen(Z)V

    .line 36613
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fz;-><init>(Lcom/facebook/ads/redexgen/X/Fy;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Xl;)V

    .line 36614
    return-object v4

    .line 36615
    .end local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    const/4 v0, 0x2

    new-instance v4, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;I)V

    goto :goto_0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/Xm;
    .locals 0

    .line 36616
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/Xn;
    .locals 0

    .line 36617
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/YY;
    .locals 0

    .line 36618
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Fy;)Lcom/facebook/ads/redexgen/X/Hr;
    .locals 0

    .line 36619
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    return-object p0
.end method

.method private A0A(ZI)Lcom/facebook/ads/redexgen/X/Hr;
    .locals 32

    .line 36620
    move-object/from16 v0, p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/G0;

    move/from16 v10, p2

    invoke-direct {v1, v0, v10}, Lcom/facebook/ads/redexgen/X/G0;-><init>(Lcom/facebook/ads/redexgen/X/Fy;I)V

    .line 36621
    .local v12, "chainedChildAdListener":Lcom/facebook/ads/redexgen/X/cT;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v14

    .line 36622
    .local p2, "curBundle":Lcom/facebook/ads/redexgen/X/hy;
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/hy;->A2K()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36623
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    new-instance v2, Lcom/facebook/ads/redexgen/X/cS;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/cS;-><init>(Lcom/facebook/ads/redexgen/X/Fy;)V

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Xm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36624
    :cond_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36625
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/hw;->A25()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v4, v2

    const/4 v2, 0x4

    aget-object v4, v4, v2

    const/16 v2, 0x13

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_7

    sget-object v4, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v3, "c3gdOFv01Kz0ZnyucW"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    const-string v3, "uUEmXxf6IoafQfC48jcO"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    if-lez v6, :cond_3

    const/16 v27, 0x1

    .line 36626
    .local v10, "suppressImpression":Z
    :goto_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36627
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/hw;->A24()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    if-lez v2, :cond_2

    const/16 v28, 0x1

    .line 36628
    .local v11, "suppressEncryptedCPMNotification":Z
    :goto_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/hw;->A1z()Ljava/lang/String;

    move-result-object v4

    .line 36629
    .local v14, "chainingParamsJsonStr":Ljava/lang/String;
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/Fy;->A0Z(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36630
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Fy;->A01(I)I

    move-result v21

    .line 36631
    .local v16, "unskippableSeconds":I
    if-nez v21, :cond_1

    .line 36632
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Fy;->setUnskippableSecondsComplete(Z)V

    .line 36633
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A06:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 36634
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/LH;->AIb(I)V

    .line 36635
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/facebook/ads/redexgen/X/LH;->A4n(Ljava/lang/String;)V

    .line 36636
    new-instance v9, Lcom/facebook/ads/redexgen/X/50;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/US;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36637
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v22

    .end local v14    # "chainingParamsJsonStr":Ljava/lang/String;
    .local v15, "chainingParamsJsonStr":Ljava/lang/String;
    move-object v10, v8

    move-object v11, v7

    move v12, v6

    move-object v13, v5

    move-object v14, v14

    move-object v15, v4

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move/from16 v18, v27

    move/from16 v19, v28

    move-object/from16 v20, v1

    invoke-direct/range {v9 .. v22}, Lcom/facebook/ads/redexgen/X/50;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;ILcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/Ua;ZZLcom/facebook/ads/redexgen/X/cT;II)V

    .line 36638
    return-object v9

    .line 36639
    :cond_2
    const/16 v28, 0x0

    goto :goto_1

    .line 36640
    :cond_3
    const/16 v27, 0x0

    goto :goto_0

    .line 36641
    .end local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .end local v16    # "unskippableSeconds":I
    .restart local v14    # "chainingParamsJsonStr":Ljava/lang/String;
    .end local v14    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    :cond_4
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Mp;->A0T()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 36642
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A07:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 36643
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/LH;->AIb(I)V

    .line 36644
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/facebook/ads/redexgen/X/LH;->A4n(Ljava/lang/String;)V

    .line 36645
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Mo;->A1U()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36646
    new-instance v15, Lcom/facebook/ads/redexgen/X/4K;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/US;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/SF;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    iget v11, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    .line 36647
    invoke-direct {v0, v11}, Lcom/facebook/ads/redexgen/X/Fy;->A01(I)I

    move-result v29

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36648
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v30

    .end local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .local v9, "chainingParamsJsonStr":Ljava/lang/String;
    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v14

    move-object/from16 v20, v6

    move-object/from16 v21, v5

    move/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move/from16 v25, v10

    move/from16 v26, v27

    move/from16 v27, v28

    move-object/from16 v28, v1

    invoke-direct/range {v15 .. v30}, Lcom/facebook/ads/redexgen/X/4K;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/YY;ILcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;IZZLcom/facebook/ads/redexgen/X/cT;II)V

    .line 36649
    return-object v15

    .line 36650
    .end local v9    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .end local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v9    # "chainingParamsJsonStr":Ljava/lang/String;
    :cond_5
    new-instance v15, Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/US;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/SF;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    iget v11, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    .line 36651
    invoke-direct {v0, v11}, Lcom/facebook/ads/redexgen/X/Fy;->A01(I)I

    move-result v29

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36652
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v30

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v14

    move-object/from16 v20, v6

    move-object/from16 v21, v5

    move/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move/from16 v25, v10

    move/from16 v26, v27

    move/from16 v27, v28

    move-object/from16 v28, v1

    invoke-direct/range {v15 .. v30}, Lcom/facebook/ads/redexgen/X/4Z;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/YY;ILcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;IZZLcom/facebook/ads/redexgen/X/cT;II)V

    .line 36653
    return-object v15

    .line 36654
    .end local v9    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .end local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v9    # "chainingParamsJsonStr":Ljava/lang/String;
    :cond_6
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A07:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 36655
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/LH;->AIb(I)V

    .line 36656
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/facebook/ads/redexgen/X/LH;->A4n(Ljava/lang/String;)V

    .line 36657
    new-instance v11, Lcom/facebook/ads/redexgen/X/4n;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/US;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0C:Lcom/facebook/ads/redexgen/X/SF;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0F:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36658
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/hw;->A0m()I

    move-result v21

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36659
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/hw;->A1t()I

    move-result v23

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36660
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/hw;->A1v()I

    move-result v25

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36661
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/hw;->A26()Z

    move-result v26

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    .line 36662
    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Fy;->A01(I)I

    move-result v30

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36663
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v31

    move/from16 v24, p1

    move-object/from16 v29, v1

    move/from16 v17, v6

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move/from16 v22, v10

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v31}, Lcom/facebook/ads/redexgen/X/4n;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/YY;ILcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xm;IIIZIZZZLcom/facebook/ads/redexgen/X/cT;II)V

    .line 36664
    return-object v11

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fy;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0C()V
    .locals 2

    .line 36665
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A00()I

    move-result v1

    .line 36666
    .local v0, "skipReason":I
    if-eqz v1, :cond_0

    .line 36667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->A4q(I)V

    .line 36668
    :cond_0
    return-void
.end method

.method private A0D()V
    .locals 8

    .line 36669
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    add-int/lit8 v0, v0, -0x1

    .line 36670
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 36671
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36672
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/US;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    add-int/lit8 v0, v0, -0x1

    .line 36673
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    .line 36674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->getAdViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    .line 36675
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v6

    .line 36676
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "pDlFeLBfyToKKboIUgGc0hC9I32LVeJD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3B6yIVnUpbF0PBycHqRFA1bh2UEjPzxQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v7

    :cond_0
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 36677
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v0

    .line 36678
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/US;->AAt(Ljava/lang/String;Ljava/util/Map;)V

    .line 36679
    :cond_1
    return-void

    .line 36680
    :cond_2
    move-object v0, v7

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E()V
    .locals 5

    .line 36681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 36682
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "ALooRHp0AOPErSNB2N5ax0GYeQeSWGkg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Jojrpwo5bfgl2L1NDhbRQaPRUafbLI0W"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36683
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    add-int/lit8 v1, v0, -0x1

    .line 36684
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hw;->A27(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v3

    .line 36686
    .local v1, "dataBundleForAdIdx":Lcom/facebook/ads/redexgen/X/hy;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "SYmrADrPyc9xENaNAh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "82lRVJ32R9K27GgHKLOx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A2J()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressSpinnerInvisible(Z)V

    .line 36687
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/hy;->A2B(Z)V

    .line 36688
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0M(I)V

    .line 36689
    .end local v1    # "dataBundleForAdIdx":Lcom/facebook/ads/redexgen/X/hy;
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F()V
    .locals 11

    .line 36690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4o()V

    .line 36691
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    .line 36692
    new-instance v4, Lcom/facebook/ads/redexgen/X/a8;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0E:Lcom/facebook/ads/redexgen/X/US;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    .line 36693
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v9

    iget v10, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:I

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/a8;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;II)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A03:Lcom/facebook/ads/redexgen/X/a8;

    .line 36694
    const/4 v5, 0x0

    .line 36695
    .local v1, "firstBlurredStyle":Lcom/facebook/ads/redexgen/X/cR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/cR;

    .line 36696
    .local v3, "s":Lcom/facebook/ads/redexgen/X/cR;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/cR;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/cR;->A06:I

    if-ne v1, v0, :cond_0

    .line 36697
    move-object v5, v2

    .line 36698
    :cond_1
    const/4 v4, 0x0

    if-eqz v5, :cond_5

    .line 36699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A03:Lcom/facebook/ads/redexgen/X/a8;

    invoke-direct {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/Fy;->A0L(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/cR;)V

    .line 36700
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Fy;->A0U(Z)V

    .line 36701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    instance-of v0, v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 36702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    check-cast v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/N9;)V

    .line 36703
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_4

    .line 36704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 36705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1B()V

    .line 36706
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    .line 36707
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A03:Lcom/facebook/ads/redexgen/X/a8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 36708
    const/16 v1, 0x44e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A03:Lcom/facebook/ads/redexgen/X/a8;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 36709
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fy;->A03:Lcom/facebook/ads/redexgen/X/a8;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4, v0}, Lcom/facebook/ads/redexgen/X/Fy;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 36710
    return-void

    .line 36711
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "8vyvfMLKM55zirtuKFzVGEL0IOO7sZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ODibu6eYSRbNQzGgUnvrLUj83p1fS4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v5, :cond_2

    .line 36712
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A03:Lcom/facebook/ads/redexgen/X/a8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0K:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0L(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/cR;)V

    goto :goto_0
.end method

.method public static A0G()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fy;->A0L:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x67t
        -0x18t
        -0x21t
        -0x67t
        -0x1t
        0x22t
        -0x22t
    .end array-data
.end method

.method private final A0H()V
    .locals 2

    .line 36713
    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/XB;

    .line 36714
    .local v0, "mode":Lcom/facebook/ads/redexgen/X/XB;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0G:Lcom/facebook/ads/redexgen/X/XC;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 36715
    return-void
.end method

.method private declared-synchronized A0I()V
    .locals 2

    monitor-enter p0

    .line 36716
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A6d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 36717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A05:Lcom/facebook/ads/redexgen/X/dI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dI;->A05()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36718
    monitor-exit p0

    return-void

    .line 36719
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Fy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0J(F)V
    .locals 6

    .line 36720
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A01(I)I

    move-result v0

    int-to-float v5, v0

    .line 36721
    .local v0, "unskippableSeconds":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A26()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    int-to-float v2, v0

    add-float/2addr v2, p1

    .line 36722
    .local v2, "seenCurrentPosMS":F
    const/4 v1, 0x0

    cmpl-float v0, v5, v1

    if-lez v0, :cond_2

    .line 36723
    div-float/2addr v2, v5

    .line 36724
    .local v5, "seenPercentage":F
    .restart local v5    # "seenPercentage":F
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A06:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A26()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36725
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A06:Z

    .line 36726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressImmediate(F)V

    .line 36727
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgress(F)V

    .line 36728
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    if-nez v0, :cond_1

    .line 36729
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Fy;->setUnskippableSecondsComplete(Z)V

    .line 36730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36731
    :cond_1
    return-void

    .line 36732
    .end local v5    # "seenPercentage":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 36733
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A01:I

    goto :goto_0
.end method

.method private A0K(I)V
    .locals 2

    .line 36734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->A4l(I)V

    .line 36735
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Fy;->setUnskippableSecondsComplete(Z)V

    .line 36736
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0I()V

    .line 36737
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0D()V

    .line 36738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0J:Lcom/facebook/ads/redexgen/X/YY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A7o()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 36739
    return-void
.end method

.method private A0L(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/cR;)V
    .locals 4

    .line 36740
    iget v1, p2, Lcom/facebook/ads/redexgen/X/cR;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/cR;->A06:I

    if-ne v1, v0, :cond_0

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/cR;->A03:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36741
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/cR;->A03:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 36742
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/cR;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setFullscreen(Z)V

    .line 36743
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/cR;->A02:Lcom/facebook/ads/redexgen/X/My;

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/cR;->A04:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->A0A(Lcom/facebook/ads/redexgen/X/My;Z)V

    .line 36744
    return-void

    .line 36745
    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/cR;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "6Qw2GncBlIK9qwoUetngT0jkAnHCQL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "iVxLMdIUnWJTFKOlNtOcmcGRsmSn6x"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/hy;)V
    .locals 2

    .line 36746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    instance-of v0, v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    if-eqz v0, :cond_0

    .line 36747
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0Z(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 36748
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    check-cast v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    .line 36749
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/N9;)V

    .line 36750
    :cond_0
    :goto_0
    return-void

    .line 36751
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    check-cast v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/N9;)V

    goto :goto_0
.end method

.method private final A0N(Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 2

    .line 36752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0B:Lcom/facebook/ads/redexgen/X/R6;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A0A(Lcom/facebook/ads/redexgen/X/R6;)V

    .line 36753
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 36754
    .local v0, "orientation":I
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:I

    .line 36755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A23()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Fy;->A0V(ZI)V

    .line 36756
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0H()V

    .line 36757
    return-void
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 0

    .line 36758
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0C()V

    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 0

    .line 36759
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0E()V

    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/Fy;F)V
    .locals 0

    .line 36760
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0J(F)V

    return-void
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/Fy;I)V
    .locals 0

    .line 36761
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0K(I)V

    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/Fy;Z)V
    .locals 0

    .line 36762
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0U(Z)V

    return-void
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/Fy;ZI)V
    .locals 0

    .line 36763
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fy;->A0V(ZI)V

    return-void
.end method

.method private A0U(Z)V
    .locals 6

    .line 36764
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0X()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0W()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Y()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "abX2oERzf98UggHhJlwc5xOu8ehA434Q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mcfqurarHSiAo6r6yfyhrMyo3UPU5OrE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    const/4 v1, 0x1

    .line 36765
    .local v0, "willShowCombinedEndCards":Z
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0W()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 36766
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Fy;->setUnskippableSecondsComplete(Z)V

    .line 36767
    if-eqz p1, :cond_0

    .line 36768
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 36769
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "6hDdRvQvhZI2wvmWyf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "dfELTL2TgrvtcbRt37j2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36770
    :goto_1
    return-void

    .line 36771
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "JMDiVFyp4yY8WixxdBAiYWzIdfNljSYZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "DEcXsd0kn675y00aYcKTg0COR2JcG3d3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "uCb48oA3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "eCwSqnipc7icS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_1

    .line 36772
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0V(ZI)V
    .locals 7

    .line 36773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_0

    .line 36774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1B()V

    .line 36775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->removeAllViews()V

    .line 36776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 36777
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1U()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 36778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 36779
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36780
    .local v0, "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Fy;->A0P:I

    sget v0, Lcom/facebook/ads/redexgen/X/Fy;->A0O:I

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 36781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Fy;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36782
    .end local v0    # "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0W()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 36783
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Fy;->setUnskippableSecondsComplete(Z)V

    .line 36784
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0X()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36785
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fy;->A0F()V

    .line 36786
    return-void

    .line 36787
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Fy;->A0K(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 36788
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "b6hirdpqFqEpTGRF7TvzfLNB23PEQW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Y5Eb3FssofDa3ImZpKtnPvm2BrdUNN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 36789
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A26()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36790
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Fy;->setUnskippableSecondsComplete(Z)V

    .line 36791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressImmediate(F)V

    .line 36792
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    .line 36793
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A01()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    .line 36794
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fy;->A0M:[Ljava/lang/String;

    const-string v1, "SeXhCWKDArfU2xbUHE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "icHjaKCGoPIgSTYVXjnx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36795
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1y()Ljava/lang/String;

    move-result-object v0

    .line 36796
    invoke-interface {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->AAD(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 36797
    .local v0, "isLoaded":Z
    if-nez v0, :cond_5

    .line 36798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4m()V

    .line 36799
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0K(I)V

    .line 36800
    return-void

    .line 36801
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fy;->A0A(ZI)Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object v2

    .line 36802
    .local v3, "contentView":Lcom/facebook/ads/redexgen/X/Hr;
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    .line 36803
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1F(Z)V

    .line 36804
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Fy;->setupToolbarForAd(Lcom/facebook/ads/redexgen/X/Hr;)V

    .line 36805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Fy;->A0N:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Fy;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 36806
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    .line 36807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1E()V

    .line 36808
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0W()Z
    .locals 2

    .line 36809
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0X()Z
    .locals 2

    .line 36810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1t()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0Y()Z
    .locals 1

    .line 36811
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A07:Z

    return v0
.end method

.method public static A0Z(Lcom/facebook/ads/redexgen/X/hy;)Z
    .locals 0

    .line 36812
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/Fy;)Z
    .locals 0

    .line 36813
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    return p0
.end method

.method private setupToolbarForAd(Lcom/facebook/ads/redexgen/X/Hr;)V
    .locals 7

    .line 36849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    if-nez v0, :cond_0

    .line 36850
    return-void

    .line 36851
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Fy;->A06:Z

    .line 36852
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    .line 36853
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v2

    .line 36854
    .local v1, "adDataBundleDataBundleForAdIdx":Lcom/facebook/ads/redexgen/X/hy;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A01(I)I

    move-result v5

    .line 36855
    .local v2, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    instance-of v0, v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    if-eqz v0, :cond_3

    .line 36856
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    check-cast v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    .line 36857
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/hy;->A1t()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D(Lcom/facebook/ads/redexgen/X/dL;I)V

    .line 36858
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    check-cast v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    .line 36859
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v1

    .line 36860
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 36861
    invoke-virtual {v4, v1, v0, v5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;I)V

    .line 36862
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hr;->getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/cR;

    move-result-object v1

    .line 36863
    .local v3, "fullscreenAdStyle":Lcom/facebook/ads/redexgen/X/cR;
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/Fy;->A0L(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/cR;)V

    .line 36864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36865
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/16 v0, 0x5a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A00:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    .line 36866
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36867
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 36868
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A08:Z

    if-eqz v0, :cond_2

    .line 36869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36870
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Fy;->A0M(Lcom/facebook/ads/redexgen/X/hy;)V

    .line 36871
    return-void

    .line 36872
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Nr;

    if-eqz v0, :cond_1

    .line 36873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0H:Lcom/facebook/ads/redexgen/X/Xm;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Nr;->setInitialUnskippableSeconds(I)V

    goto :goto_0
.end method


# virtual methods
.method public final AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 2

    .line 36814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0I:Lcom/facebook/ads/redexgen/X/Xn;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Fy;->A0N:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 36815
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Fy;->A0N(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 36816
    return-void
.end method

.method public final AEV(Z)V
    .locals 1

    .line 36817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_0

    .line 36818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hr;->A1G(Z)V

    .line 36819
    :cond_0
    return-void
.end method

.method public final AF0(Z)V
    .locals 1

    .line 36820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_0

    .line 36821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hr;->A1H(Z)V

    .line 36822
    :cond_0
    return-void
.end method

.method public final AIB(Landroid/os/Bundle;)V
    .locals 0

    .line 36823
    return-void
.end method

.method public getContentView()Lcom/facebook/ads/redexgen/X/Hr;
    .locals 1

    .line 36824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    return-object v0
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 36825
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 36826
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 36827
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 36828
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A02:I

    .line 36829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_0

    .line 36830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hr;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 36831
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/50;

    if-eqz v0, :cond_1

    .line 36832
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/cR;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0L(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/cR;)V

    .line 36833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0M(Lcom/facebook/ads/redexgen/X/hy;)V

    .line 36834
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 36835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_0

    .line 36836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1B()V

    .line 36837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    .line 36838
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A01()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0A:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->A4r(Ljava/lang/String;)V

    .line 36839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A0G:Lcom/facebook/ads/redexgen/X/XC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XC;->A03()V

    .line 36840
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36841
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 0

    .line 36842
    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/dI;)V
    .locals 0

    .line 36843
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A05:Lcom/facebook/ads/redexgen/X/dI;

    .line 36844
    return-void
.end method

.method public setUnskippableSecondsComplete(Z)V
    .locals 2

    .line 36845
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    .line 36846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    if-eqz v0, :cond_0

    .line 36847
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fy;->A04:Lcom/facebook/ads/redexgen/X/Hr;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fy;->A09:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hr;->A1F(Z)V

    .line 36848
    :cond_0
    return-void
.end method
