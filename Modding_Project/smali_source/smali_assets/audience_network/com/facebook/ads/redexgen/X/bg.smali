.class public final Lcom/facebook/ads/redexgen/X/bg;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bg;->A03()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 76997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76998
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/String;

    .line 76999
    iput p3, p0, Lcom/facebook/ads/redexgen/X/bg;->A00:I

    .line 77000
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77001
    const/16 v2, 0x5b

    const/4 v1, 0x5

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bg;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 77002
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bg;->A01:Ljava/lang/String;

    .line 77003
    return-void

    .line 77004
    :cond_0
    const/16 v2, 0x56

    const/4 v1, 0x5

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bg;->A01(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Sw;
    .locals 2

    .line 77005
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 77006
    .local v0, "exception":Lcom/facebook/ads/redexgen/X/Sw;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bg;->A02()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A07(Lorg/json/JSONObject;)V

    .line 77007
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A05(I)V

    .line 77008
    return-object v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bg;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()Lorg/json/JSONObject;
    .locals 6

    .line 77009
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 77010
    .local v0, "additionalInfo":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x38

    const/16 v1, 0xe

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bg;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/bg;->A00:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77011
    const/16 v2, 0x46

    const/16 v1, 0xd

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bg;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77012
    const/16 v2, 0x28

    const/16 v1, 0x10

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bg;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bg;->A01:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77013
    :catch_0
    move-exception v4

    .line 77014
    .local v1, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bg;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9

    const/16 v1, 0x1f

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77015
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v5
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bg;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x58t
        -0x49t
        -0x50t
        -0x50t
        -0x2dt
        -0x35t
        -0x35t
        -0x37t
        -0x2at
        -0x4at
        -0x31t
        -0x3et
        -0x3dt
        -0x33t
        -0x3at
        -0x7ft
        -0x2bt
        -0x30t
        -0x7ft
        -0x3ct
        -0x2dt
        -0x3at
        -0x3et
        -0x2bt
        -0x3at
        -0x7ft
        -0x3et
        -0x3bt
        -0x3bt
        -0x36t
        -0x2bt
        -0x36t
        -0x30t
        -0x31t
        -0x3et
        -0x33t
        -0x56t
        -0x31t
        -0x39t
        -0x30t
        -0x1ct
        -0x19t
        -0x1et
        -0x1at
        -0xbt
        -0x18t
        -0x1ct
        -0x9t
        -0x14t
        -0x7t
        -0x18t
        -0x1et
        -0x9t
        -0x4t
        -0xdt
        -0x18t
        -0x2ct
        -0x29t
        -0x2et
        -0x27t
        -0x1et
        -0x1bt
        -0x20t
        -0x2ct
        -0x19t
        -0x2et
        -0x19t
        -0x14t
        -0x1dt
        -0x28t
        0x10t
        0x13t
        0xet
        0x21t
        0x14t
        0x20t
        0x24t
        0x14t
        0x22t
        0x23t
        0xet
        0x18t
        0x13t
        -0x1at
        -0xbt
        -0x12t
        -0x27t
        -0x23t
        -0x2ft
        -0x29t
        -0x2bt
        -0x6t
        -0x13t
        -0x18t
        -0x17t
        -0xdt
    .end array-data
.end method


# virtual methods
.method public final A04(ILjava/lang/String;)V
    .locals 4

    .line 77016
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A00()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    .line 77017
    .local v0, "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    if-eqz v0, :cond_0

    .line 77018
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/16 v2, 0x53

    const/4 v1, 0x3

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bg;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/bg;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Sw;

    move-result-object v0

    invoke-interface {v3, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 77019
    :cond_0
    return-void
.end method
