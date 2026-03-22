.class public final Lcom/facebook/ads/redexgen/X/OI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZY;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/OD;->A0E()Lcom/facebook/ads/redexgen/X/ZY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OD;)V
    .locals 0

    .line 55400
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AES(Ljava/lang/String;)V
    .locals 2

    .line 55401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/OD;->A0C:Lcom/facebook/ads/redexgen/X/ZP;

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 55402
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/OD;->A05:Z

    .line 55403
    return-void
.end method

.method public final AEU(Ljava/lang/String;)V
    .locals 2

    .line 55404
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/OD;->A05:Z

    .line 55405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZO;->setUrl(Ljava/lang/String;)V

    .line 55406
    return-void
.end method

.method public final AEq(I)V
    .locals 1

    .line 55407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/OD;->A05:Z

    if-eqz v0, :cond_0

    .line 55408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OD;->A0C:Lcom/facebook/ads/redexgen/X/ZP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 55409
    :cond_0
    return-void
.end method

.method public final AEt(Ljava/lang/String;)V
    .locals 1

    .line 55410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZO;->setTitle(Ljava/lang/String;)V

    .line 55411
    return-void
.end method

.method public final AEw()V
    .locals 2

    .line 55412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OI;->A00:Lcom/facebook/ads/redexgen/X/OD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/OD;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->ACf(I)V

    .line 55413
    return-void
.end method
