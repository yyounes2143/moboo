.class public final Lcom/facebook/ads/redexgen/X/5V;
.super Lcom/facebook/ads/redexgen/X/DR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5Q;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5Q;)V
    .locals 0

    .line 15482
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5V;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DR;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Y;)V
    .locals 2

    .line 15483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5V;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(Lcom/facebook/ads/redexgen/X/5Q;)Lcom/facebook/ads/redexgen/X/FH;

    move-result-object v0

    .line 15484
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0O()Lcom/facebook/ads/redexgen/X/bZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5V;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    .line 15485
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/bZ;->AFm(Landroid/view/View;)V

    .line 15486
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 15487
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5V;->A00(Lcom/facebook/ads/redexgen/X/3Y;)V

    return-void
.end method
