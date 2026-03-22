.class public final Lcom/facebook/ads/redexgen/X/jP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Ks<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A3p(Ljava/io/File;Lcom/facebook/ads/redexgen/X/LA;)Lcom/facebook/ads/redexgen/X/Kr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/facebook/ads/redexgen/X/LA;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Kr<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88849
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LB;->A05(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 88850
    .local v0, "cacheUrlFromFile":Ljava/lang/String;
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A55(Ljava/io/File;Lcom/facebook/ads/redexgen/X/LA;)V
    .locals 0

    .line 88851
    return-void
.end method
