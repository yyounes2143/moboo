.class public final Lcom/facebook/ads/redexgen/X/Wb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TX;


# static fields
.field public static A02:Landroid/content/pm/PackageInfo;

.field public static A03:Z

.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:[Lcom/facebook/ads/redexgen/X/LK;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/S5;

.field public final A01:Lcom/facebook/ads/redexgen/X/SQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2225
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "txu4RBo63YQ5Q7SoAp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BY8ga9ljLbuWBmJa1ktUn6UmPorDtudq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oIcH05TUMC1H4eRB0f575BffOzLV6s"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RDV9o0Xs0wR3bMJwiMoqv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Drf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fWBbnfM052TaJjbz2mNIhyXx2yjBcv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vwrAcDNdoQtjOaT8FPnJSektvmYH0bUo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "A7bgPIcOUjT1m5u12vt0AimohlYQKPcw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wb;->A02()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/ads/redexgen/X/Wb;->A03:Z

    .line 2226
    const/16 v0, 0x9

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/LK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A16:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A0k:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A17:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A1F:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A11:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A13:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A2R:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A2S:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    sget-object v0, Lcom/facebook/ads/redexgen/X/LK;->A2T:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A06:[Lcom/facebook/ads/redexgen/X/LK;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;ZLcom/facebook/ads/redexgen/X/S5;)V
    .locals 1

    .line 71148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71149
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71150
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Wb;->A00:Lcom/facebook/ads/redexgen/X/S5;

    .line 71151
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/TT;->A08(Lcom/facebook/ads/redexgen/X/SQ;ZLjava/lang/String;)V

    .line 71152
    return-void
.end method

.method public static declared-synchronized A00(Lcom/facebook/ads/redexgen/X/SQ;)Landroid/content/pm/PackageInfo;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/Wb;

    monitor-enter v1

    .line 71153
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Wb;->A03:Z

    if-nez v0, :cond_0

    .line 71154
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ww;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wb;->A02:Landroid/content/pm/PackageInfo;

    .line 71155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Wb;->A03:Z

    .line 71156
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wb;->A02:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71157
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wb;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3f

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
    .locals 4

    const/16 v3, 0x262

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "e8Iif6peCxlhmB6JTHauJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "U2Egyo0LhTV3FJWkcb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wb;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x62t
        -0x46t
        -0x55t
        -0x53t
        -0x53t
        -0x51t
        -0x43t
        -0x43t
        -0x4dt
        -0x54t
        -0x4dt
        -0x4at
        -0x4dt
        -0x42t
        -0x3dt
        -0x37t
        -0x51t
        -0x48t
        -0x55t
        -0x54t
        -0x4at
        -0x51t
        -0x52t
        -0x1at
        -0xdt
        -0x1at
        -0xft
        -0xct
        -0x14t
        -0x45t
        -0x36t
        -0x36t
        -0x27t
        -0x39t
        -0x3dt
        -0x38t
        -0x27t
        -0x33t
        -0x42t
        -0x3bt
        -0x27t
        -0x30t
        -0x41t
        -0x34t
        -0x33t
        -0x3dt
        -0x37t
        -0x38t
        -0x26t
        -0x14t
        -0x1ft
        -0x26t
        -0x14t
        -0x19t
        -0x7t
        -0x11t
        -0x16t
        -0xet
        0x5t
        0x5t
        0x3t
        -0x6t
        -0xdt
        0x6t
        0x5t
        -0x6t
        0x0t
        -0x1t
        0x10t
        -0x6t
        -0xbt
        -0x7t
        0x0t
        -0x5t
        -0x5t
        -0x4t
        0x9t
        0x16t
        0xbt
        0x6t
        0x2t
        -0x4t
        0x5t
        0x16t
        -0x4t
        0xft
        0xbt
        0x9t
        -0x8t
        0xat
        -0x7ct
        -0x75t
        -0x7at
        -0x7at
        -0x79t
        -0x6ct
        -0x5ft
        -0x6at
        -0x6ft
        -0x73t
        -0x79t
        -0x70t
        -0x5ft
        -0x6at
        -0x6bt
        -0x5ft
        -0x71t
        -0x6bt
        -0x1at
        -0x7t
        -0xet
        -0x18t
        -0x10t
        -0x17t
        -0x6et
        -0x70t
        -0x6et
        -0x69t
        -0x6ct
        -0x49t
        -0x4bt
        -0x3ct
        -0x3ct
        -0x47t
        -0x48t
        -0x2dt
        -0x43t
        -0x48t
        -0x39t
        -0x60t
        -0x62t
        -0x51t
        -0x51t
        -0x5at
        -0x5et
        -0x51t
        -0x20t
        -0x23t
        -0x10t
        -0x23t
        -0x5t
        -0x14t
        -0x12t
        -0x15t
        -0x21t
        -0x1ft
        -0x11t
        -0x11t
        -0x1bt
        -0x16t
        -0x1dt
        -0x5t
        -0x15t
        -0x14t
        -0x10t
        -0x1bt
        -0x15t
        -0x16t
        -0x11t
        -0x78t
        -0x7bt
        -0x68t
        -0x7bt
        -0x5dt
        -0x6ct
        -0x6at
        -0x6dt
        -0x79t
        -0x77t
        -0x69t
        -0x69t
        -0x73t
        -0x6et
        -0x75t
        -0x5dt
        -0x6dt
        -0x6ct
        -0x68t
        -0x73t
        -0x6dt
        -0x6et
        -0x69t
        -0x5dt
        -0x79t
        -0x6dt
        -0x67t
        -0x6et
        -0x68t
        -0x6at
        -0x63t
        -0x68t
        -0x6bt
        -0x58t
        -0x6bt
        -0x4dt
        -0x5ct
        -0x5at
        -0x5dt
        -0x69t
        -0x67t
        -0x59t
        -0x59t
        -0x63t
        -0x5et
        -0x65t
        -0x4dt
        -0x5dt
        -0x5ct
        -0x58t
        -0x63t
        -0x5dt
        -0x5et
        -0x59t
        -0x4dt
        -0x59t
        -0x58t
        -0x6bt
        -0x58t
        -0x67t
        -0x47t
        -0x46t
        -0x3dt
        -0x38t
        -0x42t
        -0x37t
        -0x32t
        -0x29t
        -0x1at
        -0x21t
        -0x21t
        -0x2at
        -0x23t
        -0x10t
        -0x2ct
        -0x20t
        -0x1dt
        -0x2at
        -0x10t
        -0x2at
        -0x19t
        -0x2at
        -0x21t
        -0x1bt
        -0x1ct
        -0x19t
        -0xat
        -0x11t
        -0x11t
        -0x1at
        -0x13t
        0x0t
        -0x13t
        -0x10t
        -0x18t
        -0x18t
        -0x1at
        -0x1bt
        -0x51t
        -0x36t
        -0x2et
        -0x2bt
        -0x32t
        -0x33t
        -0x77t
        -0x23t
        -0x28t
        -0x77t
        -0x35t
        -0x22t
        -0x2et
        -0x2bt
        -0x33t
        -0x77t
        -0x22t
        -0x24t
        -0x32t
        -0x25t
        -0x77t
        -0x23t
        -0x28t
        -0x2ct
        -0x32t
        -0x29t
        -0x60t
        -0x67t
        -0x55t
        -0x49t
        -0x63t
        -0x50t
        -0x59t
        -0x58t
        -0x5ct
        -0x67t
        -0x4ft
        -0x63t
        -0x56t
        -0x6t
        -0xbt
        -0x9t
        -0xet
        -0x39t
        -0x3et
        -0x23t
        -0x3ft
        -0x41t
        -0x3ft
        -0x3at
        -0x3dt
        -0x23t
        -0x2et
        -0x2ft
        -0x23t
        -0x35t
        -0x2ft
        -0x45t
        -0x4at
        -0x2ft
        -0x3bt
        -0x3ft
        -0x39t
        -0x3ct
        -0x4bt
        -0x49t
        -0x18t
        -0x13t
        -0xet
        -0xdt
        -0x20t
        -0x15t
        -0x15t
        -0x1ct
        -0xft
        -0x68t
        -0x65t
        -0x71t
        -0x73t
        -0x68t
        -0x6ft
        0x1t
        -0xbt
        -0x1t
        -0x7t
        -0x4bt
        -0x53t
        -0x54t
        -0x4ft
        -0x57t
        -0x44t
        -0x4ft
        -0x49t
        -0x4at
        -0x39t
        -0x45t
        -0x53t
        -0x46t
        -0x42t
        -0x4ft
        -0x55t
        -0x53t
        -0xat
        -0x13t
        -0x4t
        -0x1t
        -0x9t
        -0x6t
        -0xdt
        0x7t
        -0x4t
        0x1t
        -0x8t
        -0x13t
        -0x52t
        -0x5et
        -0x4ct
        -0x55t
        -0x4ct
        -0x4et
        -0x42t
        -0x4ct
        -0x4et
        -0x5ct
        -0x4ft
        -0x42t
        -0x58t
        -0x5dt
        -0x64t
        -0x67t
        -0x67t
        -0x62t
        -0x71t
        -0x72t
        -0x4at
        -0x4at
        -0x3dt
        -0x59t
        -0x50t
        -0x53t
        -0x57t
        -0x4et
        -0x48t
        -0x3dt
        -0x49t
        -0x58t
        -0x51t
        -0x3dt
        -0x46t
        -0x57t
        -0x4at
        -0x49t
        -0x53t
        -0x4dt
        -0x4et
        0x2t
        0x2t
        0xft
        -0xdt
        -0x1t
        -0x2t
        -0xat
        -0x7t
        -0x9t
        0xft
        0x4t
        0x3t
        0xft
        -0x3t
        0x3t
        -0x6t
        -0x6t
        0x7t
        -0x13t
        0x0t
        -0x4t
        -0x6t
        -0x17t
        -0x5t
        -0x59t
        -0x59t
        -0x4ct
        -0x62t
        -0x58t
        -0x4ct
        -0x65t
        -0x59t
        -0x5ct
        -0x5et
        -0x4ct
        -0x58t
        -0x66t
        -0x59t
        -0x55t
        -0x62t
        -0x68t
        -0x66t
        -0x6ft
        -0x6ft
        -0x62t
        -0x6et
        -0x7ct
        -0x6ft
        -0x6bt
        -0x78t
        -0x7et
        -0x7ct
        -0x62t
        -0x6et
        -0x7dt
        -0x76t
        -0x62t
        -0x6bt
        -0x7ct
        -0x6ft
        -0x6et
        -0x78t
        -0x72t
        -0x73t
        -0x2at
        -0x28t
        -0x36t
        -0x1dt
        -0x36t
        -0x3at
        -0x1dt
        -0x3bt
        -0x2ct
        -0x2ct
        -0x1dt
        -0x33t
        -0x2et
        -0x29t
        -0x28t
        -0x3bt
        -0x30t
        -0x30t
        -0x37t
        -0x38t
        -0x6dt
        -0x6bt
        -0x79t
        -0x60t
        -0x79t
        -0x7dt
        -0x60t
        -0x7et
        -0x6ft
        -0x6ft
        -0x60t
        -0x69t
        -0x7at
        -0x6dt
        -0x6ct
        -0x76t
        -0x70t
        -0x71t
        -0x11t
        -0x21t
        -0x12t
        -0x1ft
        -0x1ft
        -0x16t
        -0x5t
        -0x1ct
        -0x1ft
        -0x1bt
        -0x1dt
        -0x1ct
        -0x10t
        -0xat
        -0x1at
        -0xbt
        -0x18t
        -0x18t
        -0xft
        0x2t
        -0x6t
        -0x14t
        -0x19t
        -0x9t
        -0x15t
        -0x1bt
        -0x2at
        -0x23t
        -0xft
        -0x2bt
        -0x2dt
        -0x1et
        -0x2dt
        -0x2ct
        -0x25t
        -0x22t
        -0x25t
        -0x1at
        -0x15t
        -0x41t
        -0x50t
        -0x49t
        -0x35t
        -0x47t
        -0x53t
        -0x46t
        -0x53t
        -0x4dt
        -0x4ft
        -0x50t
        -0x35t
        -0x51t
        -0x53t
        -0x51t
        -0x4ct
        -0x4ft
        -0x9t
        -0x17t
        -0x9t
        -0x9t
        -0x13t
        -0xdt
        -0xet
        0x3t
        -0x8t
        -0x13t
        -0xft
        -0x17t
        0x11t
        0xat
        0x5t
        0x10t
        0x15t
        -0x6at
        -0x6ct
        -0x7at
        -0x6dt
        -0x60t
        -0x7et
        -0x78t
        -0x7at
        -0x71t
        -0x6bt
        -0x3bt
        -0x50t
        -0x45t
        -0x41t
        -0x50t
        -0x3ft
        -0x50t
        -0x44t
        -0x3et
        -0x3ct
        -0x35t
        -0x3et
        -0x3et
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/TL;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/TL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71158
    .local p1, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 71159
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/TL;->AAX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71160
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b4

    const/16 v1, 0x12

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71161
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/TL;->A7F()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71162
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/TL;->A7F()Ljava/lang/String;

    move-result-object v3

    .line 71163
    const/16 v2, 0x187

    const/16 v1, 0x15

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71164
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71165
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71166
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "qhmjNI7uMFHuEfCbgrNi3HvbFW0uqLeT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "rAF5k5sPuv4hj6bjGKLvAsDqqwbdtY33"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TN;->A03(Lcom/facebook/ads/redexgen/X/cu;)Ljava/lang/String;

    move-result-object v3

    .line 71167
    .local v0, "remoteRenderingSdkVersion":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 71168
    const/16 v2, 0x1c6

    const/16 v1, 0x16

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71169
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71170
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TN;->A02(Lcom/facebook/ads/redexgen/X/cu;)Ljava/lang/String;

    move-result-object v4

    .line 71171
    .local v1, "remoteRenderingExtras":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 71172
    const/16 v2, 0x1ab

    const/16 v1, 0x9

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71173
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A0D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71175
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TN;->A01(Lcom/facebook/ads/redexgen/X/cu;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 71176
    .local v2, "remoteRenderingConfigTs":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "Mj9TvIbv6bgZbZ2pKznECnYI7EK5ROuc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "5qjAp4YjV3Q6sbLE0XRdgT3gO1lX1tGk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 71177
    const/16 v2, 0x19c

    const/16 v1, 0xf

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71178
    .end local v0    # "remoteRenderingSdkVersion":Ljava/lang/String;
    .end local v1    # "remoteRenderingExtras":Ljava/lang/String;
    .end local v2    # "remoteRenderingConfigTs":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TO;->A01(Lcom/facebook/ads/redexgen/X/cu;)Ljava/lang/String;

    move-result-object v3

    .line 71180
    .local v0, "cache":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 71181
    const/16 v2, 0x72

    const/4 v1, 0x5

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71182
    .end local v0    # "cache":Ljava/lang/String;
    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04()Ljava/lang/String;
    .locals 1

    .line 71183
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TW;->A00()Lcom/facebook/ads/redexgen/X/Ws;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A05(Lcom/facebook/ads/redexgen/X/TV;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/TV;)Ljava/lang/String;
    .locals 8

    .line 71184
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A08(Lcom/facebook/ads/redexgen/X/SQ;ZLjava/lang/String;)V

    .line 71185
    const/4 v5, 0x0

    .line 71186
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 71187
    .local v1, "base64":Landroid/util/Base64OutputStream;
    const/4 v3, 0x0

    .line 71188
    .local v2, "zip":Ljava/util/zip/DeflaterOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 71189
    const/4 v7, 0x0

    new-instance v0, Landroid/util/Base64OutputStream;

    invoke-direct {v0, v5, v7}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v0

    .line 71190
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 71191
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wb;->A06()Ljava/util/Map;

    move-result-object v2

    .line 71192
    .local v3, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rr;->A00()Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rr;->A07(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 71194
    :cond_0
    const/16 v6, 0x128

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 71195
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rr;->A00()Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rp;->A03()Ljava/lang/String;

    move-result-object v1

    .line 71196
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71197
    const/16 v6, 0x24b

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v1, v6}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71198
    invoke-static {v1, v6, v7}, Lcom/facebook/ads/redexgen/X/Tb;->A06(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/SQ;Z)Ljava/lang/String;

    move-result-object v1

    .line 71199
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71201
    const/16 v6, 0x77

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71202
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/MW;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/MW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/MW;->A0K()Ljava/lang/String;

    move-result-object v1

    .line 71203
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71204
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 71205
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/TV;->A32(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71207
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 71208
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 71209
    .local v5, "envParameters":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 71210
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 71211
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x2e

    invoke-static {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71212
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 71213
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 71214
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71215
    :catch_0
    return-object v0

    .line 71216
    :catch_1
    move-exception v6

    .line 71217
    :try_start_2
    const/16 v2, 0x101

    const/16 v1, 0x1a

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "base64":Landroid/util/Base64OutputStream;
    .end local v2    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .end local p2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71218
    .end local v3    # "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "envParameters":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71219
    .end local v3
    .restart local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "base64":Landroid/util/Base64OutputStream;
    .restart local v2    # "zip":Ljava/util/zip/DeflaterOutputStream;
    .restart local p2
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "YYekAclIzhra9Pv39zprUDIkOoogCrwo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 71220
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 71221
    :cond_5
    if-eqz v4, :cond_6

    .line 71222
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 71223
    :cond_6
    if-eqz v5, :cond_7

    .line 71224
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 71225
    :catch_2
    :cond_7
    throw v6
.end method

.method public final synthetic A06()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TU;->A00(Lcom/facebook/ads/redexgen/X/TX;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A7q(Lcom/facebook/ads/redexgen/X/TL;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/TL;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71226
    move-object v4, p0

    if-eqz p1, :cond_12

    .line 71227
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/TL;->A71()Ljava/lang/String;

    move-result-object v7

    .line 71228
    .local v2, "bundleOverride":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_11

    move-object v6, v7

    .line 71229
    .local v3, "bundle":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71230
    const/4 v1, 0x1

    .line 71231
    .local v4, "blockInit":Z
    .restart local v4    # "blockInit":Z
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/TT;->A08(Lcom/facebook/ads/redexgen/X/SQ;ZLjava/lang/String;)V

    .line 71232
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T5;->A0B(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 71233
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T5;->A08(Landroid/content/Context;)V

    .line 71234
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71235
    .local v5, "environmentAdParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, v3, v7}, Lcom/facebook/ads/redexgen/X/TQ;->A03(Lcom/facebook/ads/redexgen/X/SQ;Ljava/util/Map;Ljava/lang/String;)V

    .line 71236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x14c

    const/4 v1, 0x6

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71237
    sget v9, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    .line 71238
    .local v6, "density":F
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 71239
    .local v7, "screenWidth":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71240
    .local v8, "screenHeight":I
    const/16 v2, 0xdb

    const/4 v1, 0x7

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71241
    int-to-float v0, v5

    div-float/2addr v0, v9

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x20f

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71242
    int-to-float v0, v8

    div-float/2addr v0, v9

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x202

    const/16 v1, 0xd

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71243
    const/16 v2, 0x39

    const/16 v1, 0xe

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rr;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71244
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rr;->A00()Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A02()Lcom/facebook/ads/redexgen/X/Ro;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ro;->name()Ljava/lang/String;

    move-result-object v5

    .line 71245
    const/16 v2, 0x13a

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71246
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rr;->A00()Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A01()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 71247
    const/16 v2, 0x12c

    const/16 v1, 0xe

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71248
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    new-instance v5, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v5, v0, v7}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V

    .line 71249
    .local v9, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/T6;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Tb;->A03(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/T6;)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x6c

    const/4 v1, 0x6

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71250
    const/16 v2, 0x81

    const/4 v1, 0x7

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/T6;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71251
    const/16 v2, 0x152

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/T6;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71252
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71253
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TT;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Wi;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Wi;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 71254
    const/16 v2, 0x181

    const/4 v1, 0x6

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71255
    const/16 v2, 0x143

    const/16 v1, 0x9

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/T6;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71256
    const/16 v2, 0x21b

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WU;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71257
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71258
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XE;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XD;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/XD;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 71259
    const/16 v2, 0x167

    const/16 v1, 0xc

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71260
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71261
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A09()Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TP;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A03(D)Ljava/lang/String;

    move-result-object v7

    .line 71262
    const/16 v2, 0x23a

    const/16 v1, 0xc

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71263
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/TT;->A06(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;Ljava/util/Map;)V

    .line 71264
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/Wj;->A03(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71265
    .local v10, "appCerts":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 71266
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71267
    :cond_0
    const/16 v2, 0x246

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_f

    .line 71268
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/TL;->AAb()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 71269
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/TL;->AAb()Ljava/lang/Boolean;

    move-result-object v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_18

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "32RBgLNf778xvD9weLhwI46Snl5hrv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "IyuqHiwE4txdUinr9J2yO2mEn55tsE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71270
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71271
    :goto_3
    if-eqz p1, :cond_e

    .line 71272
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/TL;->A8O()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 71273
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/TL;->A8O()Ljava/lang/String;

    move-result-object v8

    .line 71274
    .local p0, "mediationService":Ljava/lang/String;
    .restart local p0    # "mediationService":Ljava/lang/String;
    :goto_4
    if-eqz v8, :cond_1

    .line 71275
    const/16 v10, 0x156

    const/16 v9, 0x11

    const/16 v7, 0x29

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "lzJ4Ecl31LKhf9GNtdySIIM2KCn5d6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "MfUCKgpZ3l00IXdOSEBXHLe94uIrQG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v10, v9, v7}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71276
    :cond_1
    :goto_5
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/T6;->A0C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 71277
    const/4 v2, 0x2

    const/16 v1, 0x15

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71278
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/T6;->A03()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 71279
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/T6;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 71280
    const/16 v2, 0x1d

    const/16 v1, 0x13

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71281
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71282
    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/TM;->A05(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71283
    const/16 v2, 0x255

    const/16 v1, 0x9

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71284
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T5;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wr;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x17

    const/4 v1, 0x6

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71285
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U6;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71286
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A05()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SV;->A7z()Ljava/lang/String;

    move-result-object v5

    .line 71287
    .local p1, "fbLoginASID":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 71288
    const/16 v2, 0x35

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71289
    .end local p1    # "fbLoginASID":Ljava/lang/String;
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A05()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SV;->A8U()Ljava/lang/String;

    move-result-object v5

    .line 71290
    .local p1, "oculusUserId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 71291
    const/16 v2, 0x173

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71292
    :cond_4
    const/4 v8, 0x0

    .line 71293
    .local p2, "dataProcessingOptions":Lcom/facebook/ads/redexgen/X/Se;
    if-eqz p1, :cond_5

    .line 71294
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_18

    .line 71295
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "QL1vZoGO1wQ14zpGXE2Sg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "5V9s84iDx7Ocfd5gsL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/TL;->A7e(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Se;

    move-result-object v8

    .line 71296
    :cond_5
    if-nez v8, :cond_6

    .line 71297
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A07()Lcom/facebook/ads/redexgen/X/Sh;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_18

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "UvZ2k7gEJDaOAPFQ7LljUQwSSHt3Qj5l"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "lsSUyvw0Epval1a8yRy7YtOStWYNlmUT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/Sh;->A7c()Lcom/facebook/ads/redexgen/X/Se;

    move-result-object v8

    .line 71298
    :cond_6
    const/16 v2, 0xbe

    const/16 v1, 0x1d

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x9f

    const/16 v1, 0x1f

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v7

    .end local v2    # "bundleOverride":Ljava/lang/String;
    .local p5, "bundleOverride":Ljava/lang/String;
    const/16 v2, 0x88

    const/16 v1, 0x17

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_c

    .line 71299
    .end local v3    # "bundle":Ljava/lang/String;
    .local p6, "bundle":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Se;->A08()Ljava/lang/String;

    move-result-object v0

    .line 71300
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71301
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Se;->A05()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71302
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71303
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Se;->A06()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71304
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71305
    :goto_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71306
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/MW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0K()Ljava/lang/String;

    move-result-object v5

    .line 71307
    const/16 v2, 0x77

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71308
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Wb;->A00:Lcom/facebook/ads/redexgen/X/S5;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/S5;->A03(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/lang/String;

    move-result-object v5

    .line 71309
    .local v2, "bidderTokenExtras":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 71310
    const/16 v2, 0x47

    const/16 v1, 0x13

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71311
    :cond_7
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "xfpBh2d17TpisnhOgc4FARMiGoOeOma4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/UA;->A0D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71312
    :goto_7
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XG;->A00()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A07(J)Ljava/lang/String;

    move-result-object v5

    .line 71313
    const/16 v2, 0x5a

    const/16 v1, 0x12

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71314
    :cond_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71315
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A04()Lcom/facebook/ads/redexgen/X/ST;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ST;->A9e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 71316
    const/16 v2, 0x11b

    const/16 v1, 0xd

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71317
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sp;->A0H(Lcom/facebook/ads/redexgen/X/SQ;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xf4

    const/16 v1, 0xd

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71319
    .local v3, "coreEventsSB":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/facebook/ads/redexgen/X/Wb;->A06:[Lcom/facebook/ads/redexgen/X/LK;

    .line 71320
    .local p3, "coreEvents":[Lcom/facebook/ads/redexgen/X/LK;
    const/4 v6, 0x0

    .local p4, "i":I
    .end local v2    # "bidderTokenExtras":Ljava/lang/String;
    .local p7, "bidderTokenExtras":Ljava/lang/String;
    :goto_8
    array-length v8, v7

    const/4 v9, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "zWUmLpLkv5ZkeLP8Nx8FR5P0NkpI1z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rR6LCigUl1U30r1W401qlH7SB9R1I9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v6, v8, :cond_13

    .line 71321
    :goto_9
    aget-object v0, v7, v6

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LK;->A03()I

    move-result v0

    add-int/lit16 v0, v0, 0xfa0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71322
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-eq v6, v0, :cond_9

    .line 71323
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71324
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    if-ge v6, v8, :cond_13

    goto :goto_9

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "SgB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/UA;->A0D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7

    .line 71325
    .end local p6
    .restart local v3    # "coreEventsSB":Ljava/lang/StringBuilder;
    .end local v3    # "coreEventsSB":Ljava/lang/StringBuilder;
    .restart local p6
    :cond_c
    const/16 v2, 0x25e

    const/4 v1, 0x4

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71326
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71327
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_d
    invoke-static {v10, v9, v7}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 71328
    .end local p0    # "mediationService":Ljava/lang/String;
    :cond_e
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A05()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SV;->A8N()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 71329
    :cond_f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    .line 71330
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A05(Lcom/facebook/ads/redexgen/X/SQ;)Z

    move-result v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_19

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "M1q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 71331
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 71332
    .end local v4    # "blockInit":Z
    :cond_10
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0n(Landroid/content/Context;)Z

    move-result v1

    goto/16 :goto_2

    .line 71333
    :cond_11
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 71334
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 71335
    .end local p4
    :cond_13
    const/16 v2, 0xe2

    const/16 v1, 0x12

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71336
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wb;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 71337
    .local v2, "fbPackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_15

    :goto_a
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .end local v3
    .local p8, "coreEventsSB":Ljava/lang/StringBuilder;
    const/16 v2, 0x1dc

    const/16 v1, 0x14

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71338
    if-eqz v6, :cond_14

    .line 71339
    iget v0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x1f0

    const/16 v1, 0x12

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71340
    :cond_14
    invoke-direct {v4, p1, v3}, Lcom/facebook/ads/redexgen/X/Wb;->A03(Lcom/facebook/ads/redexgen/X/TL;Ljava/util/Map;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71341
    :cond_15
    const/4 v9, 0x0

    goto :goto_a

    .line 71342
    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wb;->A05:[Ljava/lang/String;

    const-string v1, "GvfG5gBfjM6hmXKTNV25n"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "CjMBMD2IWFco7mVmEr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 71343
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Wb;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TO;->A02(Lcom/facebook/ads/redexgen/X/cu;)Ljava/util/Map;

    move-result-object v4

    .line 71344
    .local v3, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_17

    .line 71345
    const/16 v2, 0x229

    const/16 v1, 0x11

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Wr;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71346
    .end local v3    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    return-object v3

    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
