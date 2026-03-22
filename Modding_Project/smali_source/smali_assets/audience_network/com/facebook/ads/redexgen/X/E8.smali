.class public final Lcom/facebook/ads/redexgen/X/E8;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/E1;->A0g(Lcom/facebook/ads/redexgen/X/dT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/E1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 0

    .line 34525
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E8;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 34526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E8;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/E1;->A0E()Lcom/facebook/ads/redexgen/X/DJ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 34527
    return-void
.end method
