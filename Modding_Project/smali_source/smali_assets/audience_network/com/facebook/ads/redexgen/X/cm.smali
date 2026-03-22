.class public final Lcom/facebook/ads/redexgen/X/cm;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I


# instance fields
.field public A00:Landroid/widget/TextView;

.field public A01:Landroid/widget/TextView;

.field public A02:Lcom/facebook/ads/redexgen/X/aK;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2585
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    .line 2586
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cm;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 78160
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78161
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cm;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 78162
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cm;->A00(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78163
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 7

    .line 78164
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/cm;->setGravity(I)V

    .line 78165
    new-instance v0, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A02:Lcom/facebook/ads/redexgen/X/aK;

    .line 78166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A02:Lcom/facebook/ads/redexgen/X/aK;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/aK;->setFullCircleCorners(Z)V

    .line 78167
    sget v2, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78168
    .local v1, "pageImageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/cm;->A05:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A02:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/cm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78170
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78171
    .local v3, "pageInfoView":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78172
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Landroid/widget/TextView;

    .line 78173
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78174
    .local v5, "pageNameViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Landroid/widget/TextView;

    invoke-static {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 78175
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 78177
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A01:Landroid/widget/TextView;

    .line 78178
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cm;->A01:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 78179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A01:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78181
    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/cm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78182
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 78183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cm;->A02:Lcom/facebook/ads/redexgen/X/aK;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aK;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78186
    return-void
.end method

.method public final A02(II)V
    .locals 1

    .line 78187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78189
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 3

    .line 78190
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cm;->A02:Lcom/facebook/ads/redexgen/X/aK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78191
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/KZ;
    sget v1, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    .line 78192
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 78193
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/N9;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78194
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cm;->A01:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/N9;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78195
    return-void
.end method
