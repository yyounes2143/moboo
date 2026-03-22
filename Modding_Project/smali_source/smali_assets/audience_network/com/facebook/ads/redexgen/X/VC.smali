.class public final Lcom/facebook/ads/redexgen/X/VC;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ud;->A09(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SQ;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V
    .locals 0

    .line 68341
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VC;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VC;->A01:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 68342
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VC;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VC;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ud;->A08(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V

    .line 68343
    return-void
.end method
