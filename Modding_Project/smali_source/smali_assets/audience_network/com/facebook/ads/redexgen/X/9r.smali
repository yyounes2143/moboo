.class public final Lcom/facebook/ads/redexgen/X/9r;
.super Lcom/facebook/ads/redexgen/X/om;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClippingProperties"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/9r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 578
    new-instance v0, Lcom/facebook/ads/redexgen/X/2J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2J;-><init>()V

    .line 579
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2J;->A0B()Lcom/facebook/ads/redexgen/X/9r;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/9r;

    .line 580
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2J;)V
    .locals 1

    .line 28658
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/om;-><init>(Lcom/facebook/ads/redexgen/X/2J;Lcom/facebook/ads/redexgen/X/2F;)V

    .line 28659
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2J;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 0

    .line 28660
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9r;-><init>(Lcom/facebook/ads/redexgen/X/2J;)V

    return-void
.end method
