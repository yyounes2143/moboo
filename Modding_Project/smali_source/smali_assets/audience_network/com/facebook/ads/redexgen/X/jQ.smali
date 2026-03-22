.class public final Lcom/facebook/ads/redexgen/X/jQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Ks<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88852
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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 88853
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88854
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 88855
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public final A55(Ljava/io/File;Lcom/facebook/ads/redexgen/X/LA;)V
    .locals 0

    .line 88856
    return-void
.end method
