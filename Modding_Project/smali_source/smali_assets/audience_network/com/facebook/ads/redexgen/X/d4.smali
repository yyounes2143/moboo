.class public final Lcom/facebook/ads/redexgen/X/d4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/d3;
    }
.end annotation


# static fields
.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/KE;

.field public final A01:Lcom/facebook/ads/redexgen/X/Ml;

.field public final A02:Lcom/facebook/ads/redexgen/X/Mw;

.field public final A03:Lcom/facebook/ads/redexgen/X/N0;

.field public final A04:Lcom/facebook/ads/redexgen/X/N9;

.field public final A05:Lcom/facebook/ads/redexgen/X/dL;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ua;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2617
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/d4;->A09:I

    .line 2618
    const/high16 v1, 0x42900000    # 72.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/d4;->A07:I

    .line 2619
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/d4;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;)V
    .locals 2

    .line 78594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78595
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d4;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 78596
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    .line 78597
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A01:Lcom/facebook/ads/redexgen/X/Ml;

    .line 78598
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A02:Lcom/facebook/ads/redexgen/X/Mw;

    .line 78599
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A04:Lcom/facebook/ads/redexgen/X/N9;

    .line 78600
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A03:Lcom/facebook/ads/redexgen/X/N0;

    .line 78601
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/KE;)Landroid/view/View;
    .locals 12

    .line 78602
    new-instance v6, Lcom/facebook/ads/redexgen/X/aQ;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/d4;->A05:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A01:Lcom/facebook/ads/redexgen/X/Ml;

    .line 78603
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/aQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;ZZZ)V

    .line 78604
    .local v0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/aQ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A02:Lcom/facebook/ads/redexgen/X/Mw;

    .line 78605
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A02:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A04()Ljava/lang/String;

    move-result-object v8

    .line 78606
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/aQ;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 78607
    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/aQ;->setAlignment(I)V

    .line 78608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A05:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v5, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78609
    .local v2, "imageView":Lcom/facebook/ads/redexgen/X/aK;
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 78610
    const/16 v0, 0x32

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    .line 78611
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d4;->A05:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78612
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 78613
    .local v4, "downloadImageTask":Lcom/facebook/ads/redexgen/X/KZ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A04:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 78614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A05:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78615
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78616
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78617
    sget v2, Lcom/facebook/ads/redexgen/X/d4;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/d4;->A07:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78618
    .local v1, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78619
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78620
    .local v6, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/d4;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/d4;->A08:I

    invoke-virtual {v2, v4, v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78621
    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78622
    if-eqz p1, :cond_0

    .line 78623
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 78624
    invoke-virtual {v3, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78625
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/KE;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78626
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 78627
    :cond_0
    return-object v3
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/6g;
    .locals 6

    .line 78628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A05:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v5, Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/6g;-><init>(Landroid/content/Context;)V

    .line 78629
    .local v0, "mScreenshotsRecyclerView":Lcom/facebook/ads/redexgen/X/6g;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/d4;->A05:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/gI;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/gI;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/6g;->setLayoutManager(Lcom/facebook/ads/redexgen/X/QO;)V

    .line 78630
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/d4;->A05:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A03:Lcom/facebook/ads/redexgen/X/N0;

    .line 78631
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A02()Ljava/util/List;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/d4;->A09:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d4;->A00:Lcom/facebook/ads/redexgen/X/KE;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Eb;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Eb;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/List;ILcom/facebook/ads/redexgen/X/KE;)V

    .line 78632
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    .line 78633
    return-object v5
.end method

.method private final A02()Lcom/facebook/ads/redexgen/X/d3;
    .locals 1

    .line 78634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A03:Lcom/facebook/ads/redexgen/X/N0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78635
    sget-object v0, Lcom/facebook/ads/redexgen/X/d3;->A03:Lcom/facebook/ads/redexgen/X/d3;

    return-object v0

    .line 78636
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/d3;->A02:Lcom/facebook/ads/redexgen/X/d3;

    return-object v0
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/KE;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/KE;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/d3;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 78637
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d4;->A00:Lcom/facebook/ads/redexgen/X/KE;

    .line 78638
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/d4;->A02()Lcom/facebook/ads/redexgen/X/d3;

    move-result-object v3

    .line 78639
    .local v0, "endCardViewType":Lcom/facebook/ads/redexgen/X/d3;
    sget-object v1, Lcom/facebook/ads/redexgen/X/d2;->A00:[I

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/d3;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 78640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d4;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/d4;->A00(Lcom/facebook/ads/redexgen/X/KE;)Landroid/view/View;

    move-result-object v2

    .line 78641
    .local v1, "endCardView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/d4;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0S:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 78642
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 78643
    .end local v1    # "endCardView":Landroid/view/View;
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/d4;->A01()Lcom/facebook/ads/redexgen/X/6g;

    move-result-object v2

    .line 78644
    .restart local v1    # "endCardView":Landroid/view/View;
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
