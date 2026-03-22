.class public final Lcom/facebook/ads/redexgen/X/0k;
.super Lcom/facebook/ads/redexgen/X/7k;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4J;

.field public final A01:Lcom/facebook/ads/redexgen/X/Jv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 16
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "epLQ4LbruRQu4TauEDrO5bv5Gt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lRHUrkH9gFGX2N51jXHSI4WiLesC2sz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FQaGWX09aBSonO1KXWblQ89ZNSDo33Hs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Tkmuz5Wj47OzYTdqGDI6w0S24YPshGEJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sgOZPElMCLLZtQnBcWUjhEzDIZNKx3Aa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fl5M4MkFrWZTay9Eb0GxyqH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "d522uHqhkgB6wqoRNygeE3zqn3vb1GZ9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ktGThckFXvstcJxcyByVYeW6HtIWaGJ1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0k;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0k;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 5050
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7k;-><init>(Ljava/lang/String;)V

    .line 5051
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 5052
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Jv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A01:Lcom/facebook/ads/redexgen/X/Jv;

    .line 5053
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;)I
    .locals 5

    .line 5054
    const/4 v1, -0x1

    .line 5055
    .local v0, "foundEvent":I
    const/4 v4, 0x0

    .line 5056
    .local v1, "currentInputPosition":I
    :goto_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 5057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    .line 5058
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    move-result-object v3

    .line 5059
    .local v2, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 5060
    const/4 v1, 0x0

    goto :goto_0

    .line 5061
    :cond_0
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5062
    const/4 v1, 0x2

    goto :goto_0

    .line 5063
    :cond_1
    const/16 v2, 0x2c

    const/4 v1, 0x4

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5064
    const/4 v1, 0x1

    goto :goto_0

    .line 5065
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 5066
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 5067
    return v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0k;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x58

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0k;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x1at
        0x49t
        0x4et
        0x43t
        0x56t
        0x5ft
        0x1at
        0x58t
        0x56t
        0x55t
        0x59t
        0x51t
        0x1at
        0x4dt
        0x5bt
        0x49t
        0x1at
        0x5ct
        0x55t
        0x4ft
        0x54t
        0x5et
        0x1at
        0x5bt
        0x5ct
        0x4et
        0x5ft
        0x48t
        0x1at
        0x4et
        0x52t
        0x5ft
        0x1at
        0x5ct
        0x53t
        0x48t
        0x49t
        0x4et
        0x1at
        0x59t
        0x4ft
        0x5ft
        0x14t
        0x6ct
        0x6dt
        0x76t
        0x67t
        0x58t
        0x5ft
        0x52t
        0x47t
        0x4et
        0x35t
        0x7t
        0x0t
        0x14t
        0x16t
        0x16t
        0x26t
        0x7t
        0x1t
        0xdt
        0x6t
        0x7t
        0x10t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 1

    .line 5068
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5069
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/J7;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 5071
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5072
    .local v0, "definedStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A04(Lcom/facebook/ads/redexgen/X/4J;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/2i; {:try_start_0 .. :try_end_0} :catch_0

    .line 5073
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5074
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5075
    .local v1, "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0k;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v5

    .local v3, "event":I
    if-eqz v5, :cond_6

    .line 5076
    const/4 v6, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/0k;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0k;->A03:[Ljava/lang/String;

    const-string v1, "xiLYwX29jkzhCedrUoNIffc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "YvTJvYd1hKFZiQGGAeLzXV3lAN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v5, v6, :cond_3

    .line 5077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0k;->A03(Lcom/facebook/ads/redexgen/X/4J;)V

    goto :goto_1

    .line 5078
    :cond_3
    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    .line 5079
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    .line 5081
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0k;->A01:Lcom/facebook/ads/redexgen/X/Jv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A0F(Lcom/facebook/ads/redexgen/X/4J;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5082
    :cond_4
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    .line 5083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0k;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KB;->A0A(Lcom/facebook/ads/redexgen/X/4J;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    .line 5084
    .local v2, "cueInfo":Lcom/facebook/ads/redexgen/X/K3;
    if-eqz v0, :cond_1

    .line 5085
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5086
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5087
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/k3;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/k3;-><init>(Ljava/util/List;)V

    return-object v0

    .line 5088
    .end local v1    # "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    .end local v3    # "event":I
    :catch_0
    move-exception v1

    .line 5089
    .local v1, "e":Lcom/facebook/ads/redexgen/X/2i;
    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
