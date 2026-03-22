.class public final Lcom/facebook/ads/redexgen/X/E2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/E3;->A03(Lcom/facebook/ads/redexgen/X/92;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/E3;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/92;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E3;Lcom/facebook/ads/redexgen/X/92;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34483
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E2;->A00:Lcom/facebook/ads/redexgen/X/E3;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/E2;->A01:Lcom/facebook/ads/redexgen/X/92;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 1

    .line 34484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E2;->A01:Lcom/facebook/ads/redexgen/X/92;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/92;->A0O(Lcom/facebook/ads/redexgen/X/92;)V

    .line 34485
    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 1

    .line 34486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E2;->A01:Lcom/facebook/ads/redexgen/X/92;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/92;->A0O(Lcom/facebook/ads/redexgen/X/92;)V

    .line 34487
    return-void
.end method
