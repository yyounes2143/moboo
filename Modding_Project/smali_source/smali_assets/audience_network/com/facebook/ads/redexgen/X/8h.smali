.class public final Lcom/facebook/ads/redexgen/X/8h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPositionParameters"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/ob;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ob;ZJJ)V
    .locals 0

    .line 23422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23423
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8h;->A02:Lcom/facebook/ads/redexgen/X/ob;

    .line 23424
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/8h;->A03:Z

    .line 23425
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/8h;->A01:J

    .line 23426
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/8h;->A00:J

    .line 23427
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/ob;ZJJLcom/facebook/ads/redexgen/X/8Z;)V
    .locals 0

    .line 23428
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/8h;-><init>(Lcom/facebook/ads/redexgen/X/ob;ZJJ)V

    return-void
.end method
