.class public final Lcom/facebook/ads/redexgen/X/Jq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5d;->A0A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5d;)V
    .locals 0

    .line 46500
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Lcom/facebook/ads/redexgen/X/5d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACp()V
    .locals 2

    .line 46501
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Lcom/facebook/ads/redexgen/X/5d;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5d;->A0H(Lcom/facebook/ads/redexgen/X/5d;Z)Z

    .line 46502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Lcom/facebook/ads/redexgen/X/5d;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5d;->A00(Lcom/facebook/ads/redexgen/X/5d;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Lcom/facebook/ads/redexgen/X/5d;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5d;->A00(Lcom/facebook/ads/redexgen/X/5d;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Lcom/facebook/ads/redexgen/X/5d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5d;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 46504
    :cond_0
    return-void
.end method

.method public final AEn(F)V
    .locals 3

    .line 46505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Lcom/facebook/ads/redexgen/X/5d;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5d;->A00(Lcom/facebook/ads/redexgen/X/5d;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Lcom/facebook/ads/redexgen/X/5d;

    .line 46507
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdInfo()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A00()J

    move-result-wide v1

    long-to-float v0, v1

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 46508
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jq;->A00:Lcom/facebook/ads/redexgen/X/5d;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5d;->A00(Lcom/facebook/ads/redexgen/X/5d;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressImmediate(F)V

    .line 46509
    .end local v1    # "percentage":F
    :cond_0
    return-void
.end method
