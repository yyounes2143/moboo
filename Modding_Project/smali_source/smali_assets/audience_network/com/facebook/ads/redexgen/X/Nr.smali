.class public final Lcom/facebook/ads/redexgen/X/Nr;
.super Lcom/facebook/ads/redexgen/X/Xm;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/dL;

.field public A01:Lcom/facebook/ads/redexgen/X/Xl;

.field public final A02:Lcom/facebook/ads/redexgen/X/YQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nr;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;I)V
    .locals 2

    .line 54554
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Xm;-><init>(Landroid/content/Context;)V

    .line 54555
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nr;->A00:Lcom/facebook/ads/redexgen/X/dL;

    .line 54556
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nr;->setGravity(I)V

    .line 54557
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nr;->A04()V

    .line 54558
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nr;->A00:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/YQ;

    invoke-direct {v0, v1, p4}, Lcom/facebook/ads/redexgen/X/YQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    .line 54559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nr;->A03()V

    .line 54560
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Nr;)Lcom/facebook/ads/redexgen/X/Xl;
    .locals 0

    .line 54561
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A01:Lcom/facebook/ads/redexgen/X/Xl;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Nr;)Lcom/facebook/ads/redexgen/X/YQ;
    .locals 0

    .line 54562
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nr;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 5

    .line 54563
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54564
    .local v0, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/YQ;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54565
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Lcom/facebook/ads/redexgen/X/Nr;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    .line 54566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Nr;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54567
    return-void
.end method

.method private A04()V
    .locals 4

    .line 54568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A00:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54569
    .local v0, "dummyView":Landroid/view/View;
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54570
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Nr;->addView(Landroid/view/View;)V

    .line 54571
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nr;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x4bt
        -0x22t
        -0x1ft
        -0x1bt
        -0x29t
        -0x6et
        -0x4dt
        -0x2at
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 0

    .line 54572
    return-void
.end method

.method public final A07()V
    .locals 0

    .line 54573
    return-void
.end method

.method public final A08()V
    .locals 0

    .line 54574
    return-void
.end method

.method public final A09(FI)V
    .locals 0

    .line 54575
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/My;Z)V
    .locals 0

    .line 54576
    return-void
.end method

.method public final A0B()Z
    .locals 1

    .line 54577
    const/4 v0, 0x0

    return v0
.end method

.method public getToolbarActionMode()I
    .locals 1

    .line 54578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YQ;->getToolbarActionMode()I

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 54579
    sget v0, Lcom/facebook/ads/redexgen/X/Xm;->A01:I

    return v0
.end method

.method public getToolbarListener()Lcom/facebook/ads/redexgen/X/Xl;
    .locals 1

    .line 54580
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdReportingVisible(Z)V
    .locals 0

    .line 54581
    return-void
.end method

.method public setCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 54582
    return-void
.end method

.method public setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0

    .line 54583
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .line 54584
    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .locals 1

    .line 54585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YQ;->setInitialUnskippableSeconds(I)V

    .line 54586
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/NF;)V
    .locals 1

    .line 54587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/YQ;->setInitialUnskippableSeconds(I)V

    .line 54588
    return-void
.end method

.method public setPageDetailsVisible(Z)V
    .locals 0

    .line 54589
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 54590
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 54591
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 0

    .line 54592
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 0

    .line 54593
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 0

    .line 54594
    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .locals 0

    .line 54595
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 1

    .line 54596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nr;->A02:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YQ;->setToolbarActionMode(I)V

    .line 54597
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/Xl;)V
    .locals 0

    .line 54598
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nr;->A01:Lcom/facebook/ads/redexgen/X/Xl;

    .line 54599
    return-void
.end method
