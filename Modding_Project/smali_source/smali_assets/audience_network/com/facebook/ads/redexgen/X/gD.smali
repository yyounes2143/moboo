.class public abstract Lcom/facebook/ads/redexgen/X/gD;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/gE;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2770
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bd;->A00()Lcom/facebook/ads/redexgen/X/Bd;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gD;->A00:Lcom/facebook/ads/redexgen/X/gE;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gE;)V
    .locals 0

    .line 82074
    if-eqz p0, :cond_0

    .line 82075
    sput-object p0, Lcom/facebook/ads/redexgen/X/gD;->A00:Lcom/facebook/ads/redexgen/X/gE;

    .line 82076
    return-void

    .line 82077
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
