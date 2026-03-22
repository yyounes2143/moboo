.class public final Lcom/facebook/ads/redexgen/X/AS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecMetadata"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/AO;

.field public A01:Lcom/facebook/ads/redexgen/X/hv;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AO;Lcom/facebook/ads/redexgen/X/hv;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 29403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29404
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AS;->A00:Lcom/facebook/ads/redexgen/X/AO;

    .line 29405
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AS;->A01:Lcom/facebook/ads/redexgen/X/hv;

    .line 29406
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AS;->A02:Ljava/lang/String;

    .line 29407
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/AS;->A04:Z

    .line 29408
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/AS;->A03:Z

    .line 29409
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/AS;->A05:Z

    .line 29410
    return-void
.end method
