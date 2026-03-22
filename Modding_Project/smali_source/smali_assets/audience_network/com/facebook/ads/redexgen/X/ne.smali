.class public final Lcom/facebook/ads/redexgen/X/ne;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4w;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5H;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100982
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ne;-><init>(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 100983
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5H;)V
    .locals 0

    .line 100984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100985
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ne;->A00:Lcom/facebook/ads/redexgen/X/5H;

    .line 100986
    return-void
.end method


# virtual methods
.method public final A5A()Lcom/facebook/ads/redexgen/X/nl;
    .locals 2

    .line 100987
    new-instance v1, Lcom/facebook/ads/redexgen/X/17;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/17;-><init>()V

    .line 100988
    .local v0, "fileDataSource":Lcom/facebook/ads/redexgen/X/17;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ne;->A00:Lcom/facebook/ads/redexgen/X/5H;

    if-eqz v0, :cond_0

    .line 100989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ne;->A00:Lcom/facebook/ads/redexgen/X/5H;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 100990
    :cond_0
    return-object v1
.end method
