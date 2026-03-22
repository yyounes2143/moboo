.class public final Lcom/facebook/ads/redexgen/X/Yv;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/O6;

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;

.field public final A02:Lcom/facebook/ads/redexgen/X/Yf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2430
    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yv;->A03:I

    .line 2431
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yv;->A04:I

    .line 2432
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yv;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/Yf;Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 6

    .line 73991
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Yv;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/Yf;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 73992
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/Yf;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 7

    .line 73993
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73994
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yv;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 73995
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Yv;->A00:Lcom/facebook/ads/redexgen/X/O6;

    .line 73996
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Yv;->A02:Lcom/facebook/ads/redexgen/X/Yf;

    .line 73997
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Yv;->setOrientation(I)V

    .line 73998
    const/4 v0, -0x2

    const/4 v5, -0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73999
    .local v1, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 74000
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/Yv;->A01(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 74001
    .local v2, "headerView":Landroid/view/View;
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 74002
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74003
    .local v5, "separator":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74004
    const v0, -0x9f9890

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 74005
    invoke-virtual {p0, v2, v4}, Lcom/facebook/ads/redexgen/X/Yv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74006
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Yv;->addView(Landroid/view/View;)V

    .line 74007
    .end local v2    # "headerView":Landroid/view/View;
    .end local v5    # "separator":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yv;->A00:Lcom/facebook/ads/redexgen/X/O6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O6;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yv;->A00:Lcom/facebook/ads/redexgen/X/O6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O6;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/facebook/ads/redexgen/X/Yv;->A00(Lcom/facebook/ads/redexgen/X/XX;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 74009
    .local v0, "subHeaderView":Landroid/view/View;
    sget v1, Lcom/facebook/ads/redexgen/X/Yv;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yv;->A05:I

    invoke-virtual {v2, v3, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 74010
    invoke-virtual {p0, v2, v4}, Lcom/facebook/ads/redexgen/X/Yv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74011
    .end local v0    # "subHeaderView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yv;->A03()Lcom/facebook/ads/redexgen/X/Z1;

    move-result-object v1

    .line 74012
    .local v0, "optionsView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/Yv;->A05:I

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 74013
    invoke-virtual {p0, v1, v4}, Lcom/facebook/ads/redexgen/X/Yv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74014
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/XX;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 74015
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74016
    .local v0, "iconView":Landroid/widget/ImageView;
    const v2, -0x9f9890

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74017
    sget v1, Lcom/facebook/ads/redexgen/X/Yv;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yv;->A04:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74018
    .local v2, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74019
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74020
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74021
    .local v3, "textView":Landroid/widget/TextView;
    const/16 v0, 0xe

    const/4 v4, 0x1

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 74022
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74023
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74024
    .local v1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74025
    sget v0, Lcom/facebook/ads/redexgen/X/Yv;->A05:I

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74026
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 74027
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yv;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74028
    .local v4, "subHeaderView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74029
    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74030
    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74031
    return-object v0
.end method

.method private A01(Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 74032
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74033
    .local v0, "arrowImageView":Landroid/widget/ImageView;
    const v0, -0x9f9890

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74034
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0C:Lcom/facebook/ads/redexgen/X/XX;

    .line 74035
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74036
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74037
    sget v2, Lcom/facebook/ads/redexgen/X/Yv;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yv;->A05:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/Yv;->A05:I

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 74038
    sget v1, Lcom/facebook/ads/redexgen/X/Yv;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yv;->A03:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74039
    .local v1, "arrowParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(Lcom/facebook/ads/redexgen/X/Yv;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74040
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yv;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74041
    .local v2, "titleView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 74042
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74043
    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 74044
    const v0, -0xe3e1df

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74045
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74046
    .local v5, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yv;->A03:I

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74047
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74048
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yv;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74049
    .local v3, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74050
    invoke-virtual {v0, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74051
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74052
    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Yv;)Lcom/facebook/ads/redexgen/X/Yf;
    .locals 0

    .line 74053
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yv;->A02:Lcom/facebook/ads/redexgen/X/Yf;

    return-object p0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/Z1;
    .locals 6

    .line 74054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yv;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Z1;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Z1;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 74055
    .local v0, "reportOptionsView":Lcom/facebook/ads/redexgen/X/Z1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yv;->A00:Lcom/facebook/ads/redexgen/X/O6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O6;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/O6;

    .line 74056
    .local v2, "reason":Lcom/facebook/ads/redexgen/X/O6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yv;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 74057
    .local v3, "chipView":Lcom/facebook/ads/redexgen/X/Yh;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/O6;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 74058
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yu;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Yu;-><init>(Lcom/facebook/ads/redexgen/X/Yv;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/O6;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74059
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/Z1;->addView(Landroid/view/View;)V

    .line 74060
    .end local v2    # "reason":Lcom/facebook/ads/redexgen/X/O6;
    .end local v3    # "chipView":Lcom/facebook/ads/redexgen/X/Yh;
    goto :goto_0

    .line 74061
    :cond_0
    return-object v5
.end method
