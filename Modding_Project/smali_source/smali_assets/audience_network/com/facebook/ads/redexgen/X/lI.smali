.class public Lcom/facebook/ads/redexgen/X/lI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/Gv;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 96481
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/lI;-><init>(JJ)V

    .line 96482
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .line 96483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96484
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:J

    .line 96485
    const-wide/16 v1, 0x0

    cmp-long v0, p3, v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gx;->A04:Lcom/facebook/ads/redexgen/X/Gx;

    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/lI;->A01:Lcom/facebook/ads/redexgen/X/Gv;

    .line 96486
    return-void

    .line 96487
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    goto :goto_0
.end method


# virtual methods
.method public final A7l()J
    .locals 2

    .line 96488
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A00:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 1

    .line 96489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lI;->A01:Lcom/facebook/ads/redexgen/X/Gv;

    return-object v0
.end method

.method public final AAa()Z
    .locals 1

    .line 96490
    const/4 v0, 0x0

    return v0
.end method
