.class public abstract Lcom/facebook/ads/redexgen/X/Ze;
.super Landroid/webkit/WebView;
.source ""


# static fields
.field public static A01:[B

.field public static final A02:Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2464
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ze;->A0C()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Ze;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ze;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 74999
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 75000
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Ze;->A0E(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 75001
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 75002
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 75003
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ze;->A0E(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 75004
    return-void
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ze;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ze;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1ft
        -0x4t
        0x4t
        0x7t
        0x0t
        -0x1t
        -0x45t
        0xft
        0xat
        -0x45t
        0x4t
        0x9t
        0x4t
        0xft
        0x4t
        -0x4t
        0x7t
        0x4t
        0x15t
        0x0t
        -0x45t
        -0x22t
        0xat
        0xat
        0x6t
        0x4t
        0x0t
        -0x18t
        -0x4t
        0x9t
        -0x4t
        0x2t
        0x0t
        0xdt
        -0x37t
        -0x46t
        -0x47t
        -0x7dt
        -0x3at
        -0x2bt
        -0x3ct
        -0x2at
        -0x35t
        -0x38t
        -0x39t
        0x3ft
        0x36t
        0x4bt
        0x36t
        0x48t
        0x38t
        0x47t
        0x3et
        0x45t
        0x49t
        0xft
        -0x4t
        -0x16t
        -0x19t
        -0x1ct
        -0x5t
        -0x12t
        -0x16t
        -0x4t
    .end array-data
.end method

.method public static A0D(I)V
    .locals 5

    .line 75005
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A00()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    .line 75006
    .local v0, "context":Lcom/facebook/ads/redexgen/X/cu;
    if-eqz v0, :cond_0

    .line 75007
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v4

    const/16 v2, 0x23

    const/16 v1, 0xa

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A0B(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 75008
    const/16 v2, 0x38

    const/16 v1, 0x8

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 75009
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/SQ;)V
    .locals 4

    .line 75010
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ze;->A0G()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ze;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 75011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ze;->A0H()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ze;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75012
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Zk;->A04(Landroid/webkit/WebView;)V

    .line 75013
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ze;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75014
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ze;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 75015
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ze;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 75016
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A05()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SV;->AAF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75017
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ze;->setWebContentsDebuggingEnabled(Z)V

    .line 75018
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Ze;->setHorizontalScrollBarEnabled(Z)V

    .line 75019
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Ze;->setHorizontalScrollbarOverlay(Z)V

    .line 75020
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Ze;->setVerticalScrollBarEnabled(Z)V

    .line 75021
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Ze;->setVerticalScrollbarOverlay(Z)V

    .line 75022
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75023
    .local v0, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ze;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75024
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private A0F(Ljava/lang/String;)V
    .locals 4

    .line 75025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    const/16 v1, 0xb

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ze;->loadUrl(Ljava/lang/String;)V

    .line 75026
    return-void
.end method


# virtual methods
.method public abstract A0G()Landroid/webkit/WebChromeClient;
.end method

.method public abstract A0H()Landroid/webkit/WebViewClient;
.end method

.method public final A0I(Ljava/lang/String;)V
    .locals 1

    .line 75027
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ze;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75028
    .local v0, "ise":Ljava/lang/IllegalStateException;
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ze;->A0F(Ljava/lang/String;)V

    .line 75029
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 75030
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 75031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:Z

    .line 75032
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 75033
    return-void
.end method
