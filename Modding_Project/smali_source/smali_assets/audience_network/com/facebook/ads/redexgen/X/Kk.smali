.class public final Lcom/facebook/ads/redexgen/X/Kk;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zj;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zj;)V
    .locals 0

    .line 49660
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kk;->A00:Lcom/facebook/ads/redexgen/X/Zj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 49661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kk;->A00:Lcom/facebook/ads/redexgen/X/Zj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zj;->A09(Lcom/facebook/ads/redexgen/X/Zj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49662
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kk;->A00:Lcom/facebook/ads/redexgen/X/Zj;

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zj;->A06(Lcom/facebook/ads/redexgen/X/Zj;ILjava/lang/String;)V

    .line 49663
    :cond_0
    return-void
.end method
