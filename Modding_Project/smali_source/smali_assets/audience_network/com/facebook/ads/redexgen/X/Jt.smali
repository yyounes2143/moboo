.class public final Lcom/facebook/ads/redexgen/X/Jt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5f;->A05()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5f;)V
    .locals 0

    .line 46621
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/5f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACp()V
    .locals 2

    .line 46622
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/5f;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5f;->A0B(Lcom/facebook/ads/redexgen/X/5f;Z)Z

    .line 46623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/5f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5f;->A00(Lcom/facebook/ads/redexgen/X/5f;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/5f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5f;->A00(Lcom/facebook/ads/redexgen/X/5f;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/5f;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 46625
    :cond_0
    return-void
.end method

.method public final AEn(F)V
    .locals 3

    .line 46626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/5f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5f;->A00(Lcom/facebook/ads/redexgen/X/5f;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/5f;

    .line 46628
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

    .line 46629
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:Lcom/facebook/ads/redexgen/X/5f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5f;->A00(Lcom/facebook/ads/redexgen/X/5f;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressImmediate(F)V

    .line 46630
    .end local v1    # "percentage":F
    :cond_0
    return-void
.end method
