.class public final Lcom/facebook/ads/redexgen/X/4X;
.super Lcom/facebook/ads/redexgen/X/DN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 13329
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 9

    .line 13330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0x(Lcom/facebook/ads/redexgen/X/4K;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13331
    return-void

    .line 13332
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A11(Lcom/facebook/ads/redexgen/X/4K;Z)Z

    .line 13333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 13334
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 13335
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0h()D

    move-result-wide v1

    double-to-float v0, v1

    .line 13336
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wa;->A00(F)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    .line 13337
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 13338
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MH;->A0A()Ljava/lang/String;

    move-result-object v8

    .line 13339
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/LH;->AJw(Ljava/lang/String;IZZLjava/lang/String;)V

    .line 13340
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0d(Lcom/facebook/ads/redexgen/X/4K;I)V

    .line 13341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0E(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/KL;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KL;->setVisibility(I)V

    .line 13342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0E(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/KL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0q(I)V

    .line 13343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0E(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/KL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KL;->bringToFront()V

    .line 13344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4X;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0c(Lcom/facebook/ads/redexgen/X/4K;)V

    .line 13345
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 13346
    check-cast p1, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4X;->A00(Lcom/facebook/ads/redexgen/X/DO;)V

    return-void
.end method
