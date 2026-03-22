.class public final Lcom/facebook/ads/redexgen/X/Oi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/R6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/OD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OD;)V
    .locals 0

    .line 56321
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oi;->A00:Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAA()Z
    .locals 1

    .line 56322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oi;->A00:Lcom/facebook/ads/redexgen/X/OD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oi;->A00:Lcom/facebook/ads/redexgen/X/OD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->goBack()V

    .line 56324
    const/4 v0, 0x1

    return v0

    .line 56325
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
