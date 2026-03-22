.class public final Lcom/facebook/ads/redexgen/X/fq;
.super Lcom/facebook/ads/redexgen/X/MQ;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/Qz;

.field public final A02:Lcom/facebook/ads/redexgen/X/6M;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2760
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "G2rh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Fb5x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6CyVQJjLjUxkB4NOtEwwqOuY7kB2daf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "v2svMG5ZVzKjVXyH1MXvdM9krQWCKsNq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oRWr7RpHwOoI3beQIRyDA09DO9LlUwST"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SjgxBMhR0kRV74MEQavsGpgIJGrbvWLl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8l9W"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lapvzpZuNASF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fq;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fq;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qz;)V
    .locals 1

    .line 81599
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MQ;-><init>()V

    .line 81600
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qz;->A09()Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Lcom/facebook/ads/redexgen/X/6M;

    .line 81601
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    .line 81602
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/fq;)Landroid/view/View;
    .locals 0

    .line 81603
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/fq;)Lcom/facebook/ads/redexgen/X/Qz;
    .locals 0

    .line 81604
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/fq;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x10

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
    .locals 4

    const/16 v0, 0x1a

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/fq;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/fq;->A04:[Ljava/lang/String;

    const-string v1, "ScK1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/fq;->A03:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x45t
        0x67t
        0x68t
        0x68t
        0x69t
        0x72t
        0x26t
        0x76t
        0x74t
        0x63t
        0x75t
        0x63t
        0x68t
        0x72t
        0x26t
        0x68t
        0x73t
        0x6at
        0x6at
        0x26t
        0x67t
        0x62t
        0x50t
        0x6ft
        0x63t
        0x71t
    .end array-data
.end method


# virtual methods
.method public final A0C()V
    .locals 1

    .line 81605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4M()V

    .line 81606
    new-instance v0, Lcom/facebook/ads/redexgen/X/fs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fs;-><init>(Lcom/facebook/ads/redexgen/X/fq;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vg;)V

    .line 81607
    return-void
.end method

.method public final A0D()V
    .locals 1

    .line 81608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4P()V

    .line 81609
    new-instance v0, Lcom/facebook/ads/redexgen/X/fr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fr;-><init>(Lcom/facebook/ads/redexgen/X/fq;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vg;)V

    .line 81610
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 4

    .line 81611
    if-eqz p1, :cond_7

    .line 81612
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Lcom/facebook/ads/redexgen/X/6M;

    sget-object v2, Lcom/facebook/ads/redexgen/X/fq;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/fq;->A04:[Ljava/lang/String;

    const-string v1, "eqHc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4O()V

    .line 81613
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    .line 81614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 81615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    .line 81616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ki;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Y9;

    if-eqz v0, :cond_2

    .line 81617
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    .line 81618
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A05()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A0A()Lcom/facebook/ads/redexgen/X/V4;

    move-result-object v0

    .line 81619
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V8;->A01(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/V4;)V

    .line 81620
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A08()Lcom/facebook/ads/redexgen/X/72;

    move-result-object v0

    .line 81621
    .local v0, "controller":Lcom/facebook/ads/redexgen/X/72;
    if-eqz v0, :cond_3

    .line 81622
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0L()V

    .line 81623
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/ft;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ft;-><init>(Lcom/facebook/ads/redexgen/X/fq;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vg;)V

    .line 81624
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qz;->A0B(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 81625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    .line 81626
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81627
    new-instance v2, Lcom/facebook/ads/redexgen/X/Zm;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Zm;-><init>()V

    .line 81628
    .local v1, "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/Zm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Qz;->A0D(Lcom/facebook/ads/redexgen/X/Zm;)V

    .line 81629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Zm;->A0C(Ljava/lang/String;)V

    .line 81630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    .line 81631
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 81632
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Zm;->A0B(Ljava/lang/String;)V

    .line 81633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A08()Lcom/facebook/ads/redexgen/X/72;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    .line 81634
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A08()Lcom/facebook/ads/redexgen/X/72;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0J()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 81635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    .line 81636
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A08()Lcom/facebook/ads/redexgen/X/72;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0J()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TF;->A0C()J

    move-result-wide v0

    .line 81637
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Zm;->A09(J)V

    .line 81638
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ki;

    if-eqz v0, :cond_5

    .line 81639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ki;

    .line 81640
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ki;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    .line 81641
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Zm;->A0A(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 81642
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/R7;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/R7;-><init>(Lcom/facebook/ads/redexgen/X/fq;Lcom/facebook/ads/redexgen/X/Zm;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 81644
    .end local v1    # "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/Zm;
    :cond_6
    return-void

    .line 81645
    .end local v0    # "controller":Lcom/facebook/ads/redexgen/X/72;
    :cond_7
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fq;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/MP;)V
    .locals 2

    .line 81646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A08()Lcom/facebook/ads/redexgen/X/72;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4N(Z)V

    .line 81647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A08()Lcom/facebook/ads/redexgen/X/72;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A08()Lcom/facebook/ads/redexgen/X/72;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0M()V

    .line 81649
    :cond_0
    return-void

    .line 81650
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 5

    .line 81651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A02:Lcom/facebook/ads/redexgen/X/6M;

    .line 81652
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fq;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    .line 81653
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A04()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v2

    .line 81654
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 81655
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V1;->A04()Ljava/lang/String;

    move-result-object v0

    .line 81656
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 81657
    new-instance v0, Lcom/facebook/ads/redexgen/X/fu;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/fu;-><init>(Lcom/facebook/ads/redexgen/X/fq;Lcom/facebook/ads/redexgen/X/V1;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vg;)V

    .line 81658
    return-void
.end method
