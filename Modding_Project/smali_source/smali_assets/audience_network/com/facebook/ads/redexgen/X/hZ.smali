.class public final Lcom/facebook/ads/redexgen/X/hZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableAdCacheListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/NB;

.field public final A01:Lcom/facebook/ads/redexgen/X/NP;

.field public final A02:Lcom/facebook/ads/redexgen/X/SF;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NP;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/NB;Z)V
    .locals 0

    .line 85193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85194
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hZ;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 85195
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hZ;->A01:Lcom/facebook/ads/redexgen/X/NP;

    .line 85196
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/hZ;->A02:Lcom/facebook/ads/redexgen/X/SF;

    .line 85197
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Lcom/facebook/ads/redexgen/X/NB;

    .line 85198
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/hZ;->A04:Z

    .line 85199
    return-void
.end method

.method private final A00()V
    .locals 5

    .line 85200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 85201
    .local v0, "precacheWebView":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 85202
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Lcom/facebook/ads/redexgen/X/NB;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hZ;->A01:Lcom/facebook/ads/redexgen/X/NP;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A04:Z

    new-instance v1, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/NQ;-><init>(Lcom/facebook/ads/redexgen/X/NB;Lcom/facebook/ads/redexgen/X/NP;Z)V

    .line 85203
    .local v1, "playableWebViewClient":Lcom/facebook/ads/redexgen/X/NQ;
    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Lcom/facebook/ads/redexgen/X/NB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85205
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/NQ;->A04(Lcom/facebook/ads/redexgen/X/NQ;)V

    .line 85206
    return-void
.end method

.method private A01(Z)V
    .locals 2

    .line 85207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Lcom/facebook/ads/redexgen/X/NB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0A()Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/NC;->A05:Lcom/facebook/ads/redexgen/X/NC;

    if-ne v1, v0, :cond_0

    .line 85208
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hZ;->A00()V

    .line 85209
    return-void

    .line 85210
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Lcom/facebook/ads/redexgen/X/NB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0F()Ljava/lang/String;

    move-result-object v1

    .line 85211
    .local v0, "markupUrlResult":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 85212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hZ;->A02:Lcom/facebook/ads/redexgen/X/SF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Lcom/facebook/ads/redexgen/X/NB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85213
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A00:Lcom/facebook/ads/redexgen/X/NB;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NB;->A0K(Ljava/lang/String;)V

    .line 85214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A01:Lcom/facebook/ads/redexgen/X/NP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NP;->AEa()V

    .line 85215
    return-void
.end method


# virtual methods
.method public final ACh()V
    .locals 2

    .line 85216
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hZ;->A04:Z

    if-eqz v0, :cond_0

    .line 85217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hZ;->A01:Lcom/facebook/ads/redexgen/X/NP;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NP;->AEZ(Lcom/facebook/ads/AdError;)V

    .line 85218
    :goto_0
    return-void

    .line 85219
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hZ;->A01(Z)V

    goto :goto_0
.end method

.method public final ACq()V
    .locals 1

    .line 85220
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hZ;->A01(Z)V

    .line 85221
    return-void
.end method
