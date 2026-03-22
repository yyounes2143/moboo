.class public final Lcom/facebook/ads/redexgen/X/Lr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lc;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YY;ZLcom/facebook/ads/redexgen/X/cz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 51301
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACI()V
    .locals 2

    .line 51302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0f(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0Q(Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 51304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 51305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 51306
    :cond_0
    return-void
.end method

.method public final AE7()V
    .locals 2

    .line 51307
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0i(Lcom/facebook/ads/redexgen/X/Lc;Z)Z

    .line 51308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A05(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Wd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    .line 51309
    return-void
.end method

.method public final AE8()V
    .locals 2

    .line 51310
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0i(Lcom/facebook/ads/redexgen/X/Lc;Z)Z

    .line 51311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A05(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Wd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A06()Z

    .line 51312
    return-void
.end method
