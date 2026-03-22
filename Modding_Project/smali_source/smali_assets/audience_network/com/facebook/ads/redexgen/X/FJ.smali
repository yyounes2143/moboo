.class public final Lcom/facebook/ads/redexgen/X/FJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FH;)V
    .locals 0

    .line 36011
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:Lcom/facebook/ads/redexgen/X/FH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFc(I)V
    .locals 2

    .line 36012
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:Lcom/facebook/ads/redexgen/X/FH;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0G(Lcom/facebook/ads/redexgen/X/FH;IZ)V

    .line 36013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:Lcom/facebook/ads/redexgen/X/FH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0K(Lcom/facebook/ads/redexgen/X/FH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:Lcom/facebook/ads/redexgen/X/FH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0E(Lcom/facebook/ads/redexgen/X/FH;)V

    .line 36015
    :goto_0
    return-void

    .line 36016
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:Lcom/facebook/ads/redexgen/X/FH;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/FH;->A0F(Lcom/facebook/ads/redexgen/X/FH;I)V

    goto :goto_0
.end method
