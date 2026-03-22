.class public final Lcom/facebook/ads/redexgen/X/YK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/So;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/SQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;)V
    .locals 0

    .line 73392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73393
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    .line 73394
    return-void
.end method


# virtual methods
.method public final A7r()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73395
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TY;->A00()Lcom/facebook/ads/redexgen/X/TY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YK;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/TY;->A02(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final AAZ()Z
    .locals 1

    .line 73396
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WS;->A04()Z

    move-result v0

    return v0
.end method
