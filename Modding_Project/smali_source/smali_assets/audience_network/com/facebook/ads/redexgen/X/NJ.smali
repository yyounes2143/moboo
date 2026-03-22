.class public final Lcom/facebook/ads/redexgen/X/NJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NI;->A0X(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NI;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53982
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/NJ;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACp()V
    .locals 2

    .line 53983
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A0U(Lcom/facebook/ads/redexgen/X/NI;Z)Z

    .line 53984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NI;->A0V()V

    .line 53985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NI;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 53986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/NI;->A07:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/NI;->A06:Lcom/facebook/ads/redexgen/X/dI;

    if-eqz v0, :cond_0

    .line 53987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/NI;->A06:Lcom/facebook/ads/redexgen/X/dI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dI;->A05()V

    .line 53988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NI;->A0N(Lcom/facebook/ads/redexgen/X/NI;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LX;-><init>()V

    .line 53989
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LX;->A6d()Ljava/lang/String;

    move-result-object v0

    .line 53990
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 53991
    :cond_0
    return-void
.end method

.method public final AEn(F)V
    .locals 3

    .line 53992
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 53993
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgress(F)V

    .line 53994
    return-void
.end method
