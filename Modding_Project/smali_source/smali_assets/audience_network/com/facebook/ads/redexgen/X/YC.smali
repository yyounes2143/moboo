.class public final Lcom/facebook/ads/redexgen/X/YC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lc;->A0L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 73303
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 73304
    .local v0, "this":Lcom/facebook/ads/redexgen/X/YC;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A04(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A07:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 73305
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    .line 73306
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A7o()Ljava/lang/String;

    move-result-object v0

    .line 73307
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 73308
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/YC;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
