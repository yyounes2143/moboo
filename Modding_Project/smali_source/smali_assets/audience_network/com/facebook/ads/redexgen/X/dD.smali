.class public final Lcom/facebook/ads/redexgen/X/dD;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public final A05:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79122
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79123
    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A01:I

    .line 79124
    const/16 v0, 0x2d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A02:I

    .line 79125
    const/16 v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A00:I

    .line 79126
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dD;->A00()V

    .line 79127
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A05:I

    .line 79128
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dD;->A01()V

    .line 79129
    return-void
.end method

.method private A00()V
    .locals 4

    .line 79130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/dD;->setOrientation(I)V

    .line 79131
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/dD;->setGravity(I)V

    .line 79132
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A04:Landroid/widget/TextView;

    .line 79133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A04:Landroid/widget/TextView;

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79134
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A04:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79135
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A04:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79136
    const/4 v3, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79137
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A00:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A04:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/dD;->addView(Landroid/view/View;)V

    .line 79140
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A03:Landroid/widget/TextView;

    .line 79141
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79142
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79143
    .local v1, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A03:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/dD;->addView(Landroid/view/View;)V

    .line 79146
    return-void
.end method

.method private A01()V
    .locals 2

    .line 79147
    iget v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A05:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A01:I

    .line 79148
    iget v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A05:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A02:I

    .line 79149
    iget v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A05:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A00:I

    .line 79150
    return-void
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/a9;)Lcom/facebook/ads/redexgen/X/dD;
    .locals 4

    .line 79151
    iget v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A01:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79152
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/dD;->A02:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/dD;->A02:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79153
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/a9;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79154
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/dD;->addView(Landroid/view/View;I)V

    .line 79155
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dD;
    .locals 1

    .line 79156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79157
    return-object p0
.end method

.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dD;
    .locals 1

    .line 79158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dD;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79159
    return-object p0
.end method
