.class public final Lcom/facebook/ads/redexgen/X/bp;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicWebViewClient"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bt;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2527
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6FWFK2Rjg5lzc4YxuKyAM2pjdKcDgsPX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X8DXQa0II"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SNpKLA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Qdf29haAswqAmNE65waVoEZq7xKg2wdQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zoYtBkcpJPqvxBhZCETS8Gv12yQPTvJi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ExNOaNYHlEOFqs215y0dlBgemejMJNEa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gJ6ZUqdzTjndwEo8cFEFcqem1uRbclUa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bp;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bp;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bt;)V
    .locals 0

    .line 77211
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/bt;Lcom/facebook/ads/redexgen/X/bm;)V
    .locals 0

    .line 77212
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bp;-><init>(Lcom/facebook/ads/redexgen/X/bt;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/bp;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bp;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bp;->A02:[Ljava/lang/String;

    const-string v1, "pKC7szj5R0qBwTmNDTYZuLrnbbbgOopj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x21

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bp;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x62t
        0x63t
        0x75t
        0x65t
        0x74t
        0x6ft
        0x76t
        0x72t
        0x6ft
        0x69t
        0x68t
        0x7ct
        0x71t
        0x7ct
        0x5bt
        0x6at
        0x79t
        0x6bt
        0x70t
        0x6t
        0x11t
        0x11t
        0xct
        0x11t
        0x20t
        0xct
        0x7t
        0x6t
        0x5at
        0x5dt
        0x4at
        0x55t
        0x5ft
        0x53t
        0x52t
        0x12t
        0x55t
        0x5ft
        0x53t
        0xdt
        0x11t
        0x11t
        0x15t
        0x3at
        0x0t
        0x17t
        0x17t
        0xat
        0x17t
        0x13t
        0x11t
        0xat
        0xct
        0x11t
        0xat
        0x17t
        0x1at
        0x6at
        0x6dt
        0x73t
    .end array-data
.end method

.method private A02(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 77213
    if-eqz p4, :cond_0

    .line 77214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0S()V

    .line 77215
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A04(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0Q:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 77216
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 77217
    .local v0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x13

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77218
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77219
    const/16 v2, 0x39

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77220
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77221
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A03(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/LH;->A66(Ljava/lang/String;)V

    .line 77222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A05(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/bg;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Sv;->A16:I

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/bg;->A04(ILjava/lang/String;)V

    .line 77223
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 77224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A04(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0R:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 77225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A03(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A00(Lcom/facebook/ads/redexgen/X/bt;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->A67(J)V

    .line 77226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0S()V

    .line 77227
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bt;->A0J(Lcom/facebook/ads/redexgen/X/bt;Z)Z

    .line 77228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0G(Lcom/facebook/ads/redexgen/X/bt;)V

    .line 77229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A07(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/br;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A07(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/br;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/br;->AFx()V

    .line 77231
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 77233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    .line 77234
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/bp;->A02(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 77235
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 6

    .line 77236
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 77237
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77238
    const/4 v0, 0x1

    invoke-direct {p0, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A02(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 77239
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 6

    .line 77240
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 77241
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0xb

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77242
    return-void

    .line 77243
    :cond_0
    if-eqz p3, :cond_1

    .line 77244
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v5

    .line 77245
    .local v0, "statusCode":I
    .restart local v0    # "statusCode":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v2, 0x27

    const/16 v1, 0xa

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/bp;->A02(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 77246
    return-void

    .line 77247
    .end local v0    # "statusCode":I
    :cond_1
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 5

    .line 77248
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 77249
    .local v0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xb

    const/16 v1, 0x8

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77250
    const/16 v2, 0x31

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77251
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77252
    .local v1, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A03(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/bp;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bp;->A02:[Ljava/lang/String;

    const-string v1, "cKmn9F08G0LbJgt48cswTZGSotGQ5jj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/LH;->A62(Ljava/lang/String;)V

    .line 77253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A01(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bu;->A04(Ljava/lang/String;)V

    .line 77254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A08(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/bs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A08(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/bs;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bs;->AEm()V

    .line 77256
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/bp;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/bp;->A02:[Ljava/lang/String;

    const-string v1, "Jr1n"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 77257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    .line 77258
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A03(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    .line 77259
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A02(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/SF;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    .line 77260
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A09(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/bt;

    .line 77261
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bt;->A01(Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1O()Z

    move-result v0

    .line 77262
    invoke-static {v3, v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/c4;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/SF;Landroid/webkit/WebResourceRequest;Lcom/facebook/ads/redexgen/X/c2;Z)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
