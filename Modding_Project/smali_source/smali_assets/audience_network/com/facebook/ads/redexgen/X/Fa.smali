.class public final synthetic Lcom/facebook/ads/redexgen/X/Fa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:J

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Fn;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Fn;IJ)V
    .locals 0

    .line 36414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fa;->A02:Lcom/facebook/ads/redexgen/X/Fn;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:I

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Fa;->A01:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 36415
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fa;->A02:Lcom/facebook/ads/redexgen/X/Fn;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:I

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A01:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Fn;->A03(IJ)V

    return-void
.end method
