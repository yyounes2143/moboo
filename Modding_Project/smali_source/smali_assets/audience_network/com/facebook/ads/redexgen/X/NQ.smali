.class public final Lcom/facebook/ads/redexgen/X/NQ;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableWebViewClient"
.end annotation


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/NB;

.field public final A02:Lcom/facebook/ads/redexgen/X/NP;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NB;Lcom/facebook/ads/redexgen/X/NP;Z)V
    .locals 1

    .line 54016
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 54017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A00:Z

    .line 54018
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NQ;->A01:Lcom/facebook/ads/redexgen/X/NB;

    .line 54019
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/NP;

    .line 54020
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/NQ;->A03:Z

    .line 54021
    return-void
.end method

.method private A00()V
    .locals 2

    .line 54022
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A03:Z

    if-eqz v0, :cond_0

    .line 54023
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/NP;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NP;->AEZ(Lcom/facebook/ads/AdError;)V

    .line 54024
    :goto_0
    return-void

    .line 54025
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A01()V

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 54026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/NP;

    if-eqz v0, :cond_0

    .line 54027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/NP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NP;->AEa()V

    .line 54028
    :cond_0
    return-void
.end method

.method private A02()V
    .locals 0

    .line 54029
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A00()V

    .line 54030
    return-void
.end method

.method private A03()V
    .locals 4

    .line 54031
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/hV;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/hV;-><init>(Lcom/facebook/ads/redexgen/X/NQ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A01:Lcom/facebook/ads/redexgen/X/NB;

    .line 54032
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A09()I

    move-result v0

    int-to-long v0, v0

    .line 54033
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54034
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/NQ;)V
    .locals 0

    .line 54035
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A03()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/NQ;)V
    .locals 0

    .line 54036
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A02()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 54037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A00:Z

    .line 54038
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A01()V

    .line 54039
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 54040
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 54041
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A03()V

    .line 54042
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 54043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A00:Z

    .line 54044
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A02()V

    .line 54045
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 54046
    sget v0, Lcom/facebook/ads/redexgen/X/Sv;->A2g:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ze;->A0D(I)V

    .line 54047
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NQ;->A00()V

    .line 54048
    const/4 v0, 0x1

    return v0
.end method
