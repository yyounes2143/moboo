.class public final Lcom/facebook/ads/redexgen/X/EV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ew;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/dI;->A05()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dI;)V
    .locals 0

    .line 34931
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGQ()V
    .locals 2

    .line 34932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dI;->A00(Lcom/facebook/ads/redexgen/X/dI;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dI;->A00(Lcom/facebook/ads/redexgen/X/dI;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    .line 34934
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dI;->A01(Lcom/facebook/ads/redexgen/X/dI;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A8w()Ljava/lang/String;

    move-result-object v0

    .line 34935
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 34936
    :cond_0
    return-void
.end method

.method public final AGS(Lcom/facebook/ads/redexgen/X/ey;)V
    .locals 2

    .line 34937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dI;->A00(Lcom/facebook/ads/redexgen/X/dI;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34938
    return-void

    .line 34939
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ey;->A00()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dI;->A00(Lcom/facebook/ads/redexgen/X/dI;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    .line 34941
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dI;->A01(Lcom/facebook/ads/redexgen/X/dI;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A8x()Ljava/lang/String;

    move-result-object v0

    .line 34942
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 34943
    :goto_0
    return-void

    .line 34944
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dI;->A00(Lcom/facebook/ads/redexgen/X/dI;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/dI;

    .line 34945
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dI;->A01(Lcom/facebook/ads/redexgen/X/dI;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A8w()Ljava/lang/String;

    move-result-object v0

    .line 34946
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    goto :goto_0
.end method
