.class public final Lcom/facebook/ads/redexgen/X/VL;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/VJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VJ;)V
    .locals 0

    .line 68973
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 68974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A00(Lcom/facebook/ads/redexgen/X/VJ;)I

    .line 68975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A01(Lcom/facebook/ads/redexgen/X/VJ;)J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 68976
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A01(Lcom/facebook/ads/redexgen/X/VJ;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68977
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A0B()V

    .line 68978
    return-void
.end method
