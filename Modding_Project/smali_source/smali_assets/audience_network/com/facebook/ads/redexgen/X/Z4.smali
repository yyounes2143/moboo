.class public final Lcom/facebook/ads/redexgen/X/Z4;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Z6;

.field public final A01:Landroid/graphics/Bitmap;

.field public final A02:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Z6;ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 74121
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74122
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0M:Lcom/facebook/ads/redexgen/X/XX;

    .line 74123
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A01:Landroid/graphics/Bitmap;

    .line 74124
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0N:Lcom/facebook/ads/redexgen/X/XX;

    .line 74125
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A02:Landroid/graphics/Bitmap;

    .line 74126
    sget-object v0, Lcom/facebook/ads/redexgen/X/Z6;->A03:Lcom/facebook/ads/redexgen/X/Z6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A00:Lcom/facebook/ads/redexgen/X/Z6;

    .line 74127
    sget-object v0, Lcom/facebook/ads/redexgen/X/Z6;->A03:Lcom/facebook/ads/redexgen/X/Z6;

    if-ne p3, v0, :cond_0

    .line 74128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Z4;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74129
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/Z4;->A00(Landroid/os/Handler;Ljava/lang/Integer;)V

    .line 74130
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z2;

    invoke-direct {v0, p0, p5, p2, p4}, Lcom/facebook/ads/redexgen/X/Z2;-><init>(Lcom/facebook/ads/redexgen/X/Z4;Landroid/view/View$OnClickListener;Landroid/os/Handler;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Z4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74131
    return-void

    .line 74132
    :cond_0
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Z4;->A00:Lcom/facebook/ads/redexgen/X/Z6;

    .line 74133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A01:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Z4;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private A00(Landroid/os/Handler;Ljava/lang/Integer;)V
    .locals 3

    .line 74134
    new-instance v2, Lcom/facebook/ads/redexgen/X/Z3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Z3;-><init>(Lcom/facebook/ads/redexgen/X/Z4;)V

    .line 74135
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 74136
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74137
    return-void
.end method


# virtual methods
.method public final synthetic A01()V
    .locals 1

    .line 74138
    sget-object v0, Lcom/facebook/ads/redexgen/X/Z6;->A02:Lcom/facebook/ads/redexgen/X/Z6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A00:Lcom/facebook/ads/redexgen/X/Z6;

    .line 74139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A01:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Z4;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74140
    return-void
.end method

.method public final synthetic A02(Landroid/view/View$OnClickListener;Landroid/os/Handler;ILandroid/view/View;)V
    .locals 2

    .line 74141
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z4;->A00:Lcom/facebook/ads/redexgen/X/Z6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Z6;->A03:Lcom/facebook/ads/redexgen/X/Z6;

    if-ne v1, v0, :cond_0

    .line 74142
    invoke-interface {p1, p4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 74143
    :goto_0
    return-void

    .line 74144
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Z6;->A03:Lcom/facebook/ads/redexgen/X/Z6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A00:Lcom/facebook/ads/redexgen/X/Z6;

    .line 74145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z4;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Z4;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74146
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/Z4;->A00(Landroid/os/Handler;Ljava/lang/Integer;)V

    goto :goto_0
.end method
