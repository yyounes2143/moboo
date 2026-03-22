.class public final Lcom/facebook/ads/redexgen/X/gu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/gt;->A5L(Lcom/facebook/ads/redexgen/X/gv;)Lcom/facebook/ads/redexgen/X/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gv;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/gt;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gt;Lcom/facebook/ads/redexgen/X/gv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83835
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gu;->A01:Lcom/facebook/ads/redexgen/X/gt;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/gu;->A00:Lcom/facebook/ads/redexgen/X/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5K(Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/hD;Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/Nm;
    .locals 7

    .line 83836
    new-instance v1, Lcom/facebook/ads/redexgen/X/gs;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gu;->A00:Lcom/facebook/ads/redexgen/X/gv;

    .line 83837
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A05()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gu;->A00:Lcom/facebook/ads/redexgen/X/gv;

    move-object v6, p3

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/gs;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/gv;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/hD;Lcom/facebook/ads/redexgen/X/Nh;)V

    .line 83838
    return-object v1
.end method
