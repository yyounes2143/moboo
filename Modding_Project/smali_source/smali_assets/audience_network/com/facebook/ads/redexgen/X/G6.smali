.class public final Lcom/facebook/ads/redexgen/X/G6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/G2;->A0g(ILcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/Cw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Vt;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/G2;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Cw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G2;ILcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Vt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37013
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G6;->A02:Lcom/facebook/ads/redexgen/X/G2;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/G6;->A03:Lcom/facebook/ads/redexgen/X/Cw;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/G6;->A01:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACp()V
    .locals 1

    .line 37014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A01:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->run()V

    .line 37015
    return-void
.end method

.method public final AEn(F)V
    .locals 3

    .line 37016
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    .line 37017
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A02:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgress(F)V

    .line 37018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A03:Lcom/facebook/ads/redexgen/X/Cw;

    if-eqz v0, :cond_0

    .line 37019
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G6;->A03:Lcom/facebook/ads/redexgen/X/Cw;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G6;->A00:I

    int-to-float v1, v0

    sub-float/2addr v1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Cw;->A07(I)V

    .line 37020
    :cond_0
    return-void
.end method
