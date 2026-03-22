.class public final Lcom/facebook/ads/redexgen/X/G9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/a4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 37045
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACu()V
    .locals 3

    .line 37046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A08(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0J:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 37047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A06(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/7P;

    if-eqz v0, :cond_0

    .line 37048
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A06(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0f(Lcom/facebook/ads/redexgen/X/4K;Ljava/lang/String;)V

    .line 37049
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:Lcom/facebook/ads/redexgen/X/4K;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0i(Lcom/facebook/ads/redexgen/X/4K;Z)V

    .line 37050
    return-void
.end method
