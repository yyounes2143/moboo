.class public abstract Lcom/facebook/ads/redexgen/X/YI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ST;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/SQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;)V
    .locals 0

    .line 73370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73371
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    .line 73372
    return-void
.end method


# virtual methods
.method public final A5S()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TQ;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A6o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73374
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T5;->A02()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A8D()Ljava/lang/String;
    .locals 1

    .line 73375
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T5;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A8F()Ljava/lang/String;
    .locals 1

    .line 73376
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rr;->A00()Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A03()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final AAL()Z
    .locals 1

    .line 73377
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WH;->A00()Lcom/facebook/ads/redexgen/X/WH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WH;->A03()Z

    move-result v0

    return v0
.end method
