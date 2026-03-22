.class public final Lcom/facebook/ads/redexgen/X/cb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3r;->A0H(Lcom/facebook/ads/redexgen/X/UZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3r;)V
    .locals 0

    .line 78099
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cb;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 78100
    .local v0, "this":Lcom/facebook/ads/redexgen/X/cb;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/cb;->A00:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/G2;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/cb;->A00:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A0A:Lcom/facebook/ads/redexgen/X/YY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A7o()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 78101
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/cb;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
