.class public final Lcom/facebook/ads/redexgen/X/FM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FL;->A06()Lcom/facebook/ads/redexgen/X/3r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YY;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/FL;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/cz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/cz;Lcom/facebook/ads/redexgen/X/YY;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36088
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FM;->A02:Lcom/facebook/ads/redexgen/X/cz;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/YY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AHo()V
    .locals 4

    .line 36089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FL;->A0C(Lcom/facebook/ads/redexgen/X/FL;)V

    .line 36090
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A02:Lcom/facebook/ads/redexgen/X/cz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/YY;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FL;->A04(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/cz;Lcom/facebook/ads/redexgen/X/YY;)Lcom/facebook/ads/redexgen/X/Xo;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/FL;->A03(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/Xo;)Lcom/facebook/ads/redexgen/X/Xo;

    .line 36091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FL;->A00(Lcom/facebook/ads/redexgen/X/FL;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A00:Lcom/facebook/ads/redexgen/X/R0;

    if-eqz v0, :cond_0

    .line 36092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FL;->A02(Lcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/Xo;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FL;->A00(Lcom/facebook/ads/redexgen/X/FL;)Landroid/content/Intent;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FL;->A01(Lcom/facebook/ads/redexgen/X/FL;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FL;->A00:Lcom/facebook/ads/redexgen/X/R0;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xo;->AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V

    .line 36093
    :cond_0
    return-void
.end method
