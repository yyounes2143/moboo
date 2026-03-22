.class public final Lcom/facebook/ads/redexgen/X/FK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ba;


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

    .line 36017
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FK;->A00:Lcom/facebook/ads/redexgen/X/FH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVolume()F
    .locals 1

    .line 36018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A00:Lcom/facebook/ads/redexgen/X/FH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FH;->A00:F

    return v0
.end method

.method public final setVolume(F)V
    .locals 1

    .line 36019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FK;->A00:Lcom/facebook/ads/redexgen/X/FH;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/FH;->A00:F

    .line 36020
    return-void
.end method
