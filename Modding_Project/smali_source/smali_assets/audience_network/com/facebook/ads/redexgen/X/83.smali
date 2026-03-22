.class public final synthetic Lcom/facebook/ads/redexgen/X/83;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8C;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8C;J)V
    .locals 0

    .line 22599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/83;->A01:Lcom/facebook/ads/redexgen/X/8C;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/83;->A00:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 22600
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/83;->A01:Lcom/facebook/ads/redexgen/X/8C;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/83;->A00:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8C;->A04(J)V

    return-void
.end method
