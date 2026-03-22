.class public abstract synthetic Lcom/facebook/ads/redexgen/X/BB;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/BC;)Z
    .locals 1

    .line 30613
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/BC;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/BC;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
