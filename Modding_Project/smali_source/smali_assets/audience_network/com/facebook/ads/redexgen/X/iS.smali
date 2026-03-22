.class public final Lcom/facebook/ads/redexgen/X/iS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;
.implements Lcom/facebook/ads/redexgen/X/NG;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/RewardData;

.field public A02:Lcom/facebook/ads/redexgen/X/Ma;

.field public A03:Lcom/facebook/ads/redexgen/X/Mb;

.field public A04:Lcom/facebook/ads/redexgen/X/NH;

.field public A05:Lcom/facebook/ads/redexgen/X/dL;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;

.field public A09:Z

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2974
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Tri2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1D6RXHNY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CY2J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FG3HLf7FRck3Q4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aTw9XxKg19aD2PWH35UjlgQd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aN0Sboz7ddtAAnQUWG6qQ4oJRDDzSUBt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pWs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iS;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86297
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A0A:Ljava/lang/String;

    return-void
.end method

.method private A00()I
    .locals 4

    .line 86298
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 86299
    const/16 v2, 0xc2

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/dL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 86300
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 86301
    .local v1, "rotation":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iS;->A02()Lcom/facebook/ads/redexgen/X/Zt;

    move-result-object v1

    .line 86302
    .local v2, "adOrientation":Lcom/facebook/ads/redexgen/X/Zt;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Zt;->A05:Lcom/facebook/ads/redexgen/X/Zt;

    if-ne v1, v0, :cond_0

    .line 86303
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const-string v1, "b7o"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Q7inAkPu5HYVeU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 86304
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Zt;->A03:Lcom/facebook/ads/redexgen/X/Zt;

    if-ne v1, v0, :cond_2

    .line 86305
    packed-switch v2, :pswitch_data_0

    .line 86306
    const/4 v0, 0x0

    return v0

    .line 86307
    :pswitch_0
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const-string v1, "bcp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "BEZRNTMscmchpM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 86308
    :cond_2
    packed-switch v2, :pswitch_data_1

    .line 86309
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const-string v1, "VdY7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "KFhl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 86310
    :pswitch_1
    const/16 v0, 0x9

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/Vb;
    .locals 1

    .line 86311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NH;->A0E()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/Zt;
    .locals 1

    .line 86312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NH;->A0F()Lcom/facebook/ads/redexgen/X/Zt;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iS;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 86313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A09:Z

    .line 86314
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xc8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iS;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x7t
        0x6t
        -0x41t
        0xct
        -0x48t
        0xbt
        0xct
        -0x7t
        0xat
        0xct
        -0x48t
        -0x27t
        0xdt
        -0x4t
        0x1t
        -0x3t
        0x6t
        -0x5t
        -0x3t
        -0x1at
        -0x3t
        0xct
        0xft
        0x7t
        0xat
        0x3t
        -0x27t
        -0x5t
        0xct
        0x1t
        0xet
        0x1t
        0xct
        0x11t
        -0x3at
        -0x48t
        -0x1bt
        -0x7t
        0x3t
        -0x3t
        -0x48t
        0xbt
        0xdt
        0xat
        -0x3t
        -0x48t
        0xct
        0x0t
        -0x7t
        0xct
        -0x48t
        0x1t
        0xct
        -0x41t
        0xbt
        -0x48t
        0x1t
        0x6t
        -0x48t
        0x11t
        0x7t
        0xdt
        0xat
        -0x48t
        -0x27t
        0x6t
        -0x4t
        0xat
        0x7t
        0x1t
        -0x4t
        -0x1bt
        -0x7t
        0x6t
        0x1t
        -0x2t
        -0x3t
        0xbt
        0xct
        -0x3at
        0x10t
        0x5t
        0x4t
        -0x48t
        -0x2t
        0x1t
        0x4t
        -0x3t
        -0x3at
        -0x10t
        -0x14t
        -0x15t
        0x1ft
        0xet
        0x13t
        0xft
        0x18t
        0xdt
        0xft
        -0x8t
        0xft
        0x1et
        0x21t
        0x19t
        0x1ct
        0x15t
        -0x37t
        -0x30t
        -0x23t
        -0x32t
        -0x30t
        -0x2et
        -0x1dt
        -0x28t
        -0x1bt
        -0x28t
        -0x1dt
        -0x18t
        -0x1t
        -0x9t
        -0xat
        -0x5t
        -0xdt
        0x6t
        -0x5t
        0x1t
        0x0t
        -0x2at
        -0xdt
        0x6t
        -0xdt
        0x10t
        0xct
        0x1t
        0x3t
        0x5t
        0xdt
        0x5t
        0xet
        0x14t
        -0x17t
        0x4t
        -0x37t
        -0x35t
        -0x42t
        -0x43t
        -0x42t
        -0x41t
        -0x3et
        -0x39t
        -0x42t
        -0x43t
        -0x58t
        -0x35t
        -0x3et
        -0x42t
        -0x39t
        -0x33t
        -0x46t
        -0x33t
        -0x3et
        -0x38t
        -0x39t
        -0x5ct
        -0x42t
        -0x2et
        -0x7t
        -0x14t
        -0x8t
        -0x4t
        -0x14t
        -0x6t
        -0x5t
        -0x25t
        -0x10t
        -0xct
        -0x14t
        -0x6t
        -0xdt
        -0x12t
        -0xat
        -0x6t
        -0x16t
        -0x32t
        -0x17t
        0x22t
        0x15t
        0x11t
        0x23t
        0x0t
        0x25t
        0x1ct
        0x11t
        0xct
        -0x2t
        0x3t
        -0x7t
        0x4t
        0xct
    .end array-data
.end method

.method private A06(Landroid/content/Intent;)V
    .locals 5

    .line 86315
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iS;->A01:Lcom/facebook/ads/RewardData;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iS;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iS;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A06:Ljava/lang/String;

    .line 86316
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dI;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86317
    invoke-virtual {v4, p1, v3, v0}, Lcom/facebook/ads/redexgen/X/NH;->A0I(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V

    .line 86318
    return-void
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ma;Lcom/facebook/ads/redexgen/X/NU;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Lcom/facebook/ads/redexgen/X/Ma;",
            "Lcom/facebook/ads/redexgen/X/NU;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86319
    .local p4, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    new-instance v4, Lcom/facebook/ads/redexgen/X/NH;

    invoke-direct {v4, p1, p3, p0, p5}, Lcom/facebook/ads/redexgen/X/NH;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/NG;Ljava/lang/String;)V

    .line 86320
    .local v0, "delegate":Lcom/facebook/ads/redexgen/X/NH;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/NH;->A0D()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v3

    .line 86321
    .local v1, "adDataBundle":Lcom/facebook/ads/redexgen/X/Mo;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A0v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/hy;

    if-eqz v0, :cond_0

    .line 86322
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 86323
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A03()Lorg/json/JSONObject;

    move-result-object v1

    check-cast v3, Lcom/facebook/ads/redexgen/X/hy;

    .line 86324
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 86325
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->A01(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/io;

    move-result-object v1

    .line 86326
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    .line 86327
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->A06(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MK;Lcom/facebook/ads/redexgen/X/US;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4u()V

    .line 86329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Ma;->ADc(Lcom/facebook/ads/redexgen/X/iS;Lcom/facebook/ads/AdError;)V

    .line 86330
    return-void

    .line 86331
    :cond_0
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    .line 86332
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/NH;->A0E()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/iS;->A08(Lcom/facebook/ads/redexgen/X/Vb;)V

    .line 86333
    invoke-virtual {v4, p1, p4}, Lcom/facebook/ads/redexgen/X/NH;->A0J(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;)V

    .line 86334
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Vb;)V
    .locals 4

    .line 86335
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A04:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A05:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 86337
    :cond_0
    :goto_0
    return-void

    .line 86338
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A04:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto :goto_0

    .line 86340
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0B:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0B:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto :goto_0

    .line 86342
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0D:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0D:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto :goto_0

    .line 86344
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0C:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0C:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto :goto_0

    .line 86346
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A06:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Vb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NH;->A0K()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A08:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto :goto_0

    .line 86349
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iS;->A09()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/hy;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    .line 86350
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iS;->A09()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A0L(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const-string v1, "5zP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kcwn0HZtMTZNOx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0A:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto/16 :goto_0

    .line 86352
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A09:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A09()Lcom/facebook/ads/redexgen/X/Mo;
    .locals 1

    .line 86353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NH;->A0D()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ma;Lcom/facebook/ads/redexgen/X/NU;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Lcom/facebook/ads/redexgen/X/Ma;",
            "Lcom/facebook/ads/redexgen/X/NU;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/RewardData;",
            ")V"
        }
    .end annotation

    .line 86354
    .local p2, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 86355
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    .line 86356
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A08:Ljava/lang/String;

    .line 86357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A08:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iS;->A08:Ljava/lang/String;

    const/16 v2, 0x6b

    const/4 v1, 0x1

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A06:Ljava/lang/String;

    .line 86358
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A00:J

    .line 86359
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/iS;->A07:Ljava/lang/String;

    .line 86360
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/iS;->A01:Lcom/facebook/ads/RewardData;

    .line 86361
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/iS;->A07(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ma;Lcom/facebook/ads/redexgen/X/NU;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 86362
    return-void

    .line 86363
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 8

    .line 86364
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A09:Z

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 86365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    if-eqz v0, :cond_0

    .line 86366
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Ma;->ADc(Lcom/facebook/ads/redexgen/X/iS;Lcom/facebook/ads/AdError;)V

    .line 86367
    :cond_0
    return v7

    .line 86368
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WB;->A05(Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v3

    .line 86369
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iS;->A00()I

    move-result v4

    .line 86370
    const/16 v2, 0x8f

    const/16 v1, 0x18

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86371
    const/16 v2, 0xb2

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A0A:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86372
    const/16 v2, 0x84

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A08:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86373
    const/16 v2, 0xa7

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A00:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 86374
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iS;->A01()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v4

    .line 86375
    .local v2, "viewType":Lcom/facebook/ads/redexgen/X/Vb;
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/iS;->A08(Lcom/facebook/ads/redexgen/X/Vb;)V

    .line 86376
    const/16 v2, 0xba

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A07:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 86378
    const/16 v2, 0x77

    const/16 v1, 0xd

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A07:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86379
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/iS;->A06(Landroid/content/Intent;)V

    .line 86380
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-nez v0, :cond_4

    .line 86381
    const/high16 v4, 0x10000000

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const-string v1, "Sc68"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wieN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 86382
    :cond_4
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 86383
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WB;->A0I(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)Z

    move-result v0

    .line 86385
    .local v3, "launchResult":Z
    if-nez v0, :cond_7

    .line 86386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHS()V

    .line 86387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    if-eqz v0, :cond_5

    .line 86388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Ma;->ADc(Lcom/facebook/ads/redexgen/X/iS;Lcom/facebook/ads/AdError;)V

    .line 86389
    :cond_5
    return v7

    .line 86390
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WB;->A0B(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 86391
    :cond_7
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/W9; {:try_start_0 .. :try_end_0} :catch_0

    .line 86392
    :catch_0
    move-exception v5

    .line 86393
    .local v3, "anfe":Lcom/facebook/ads/redexgen/X/W9;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/W9;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/W9;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 86394
    .local v4, "e":Ljava/lang/Throwable;
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 86395
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 86396
    const/16 v2, 0x6c

    const/16 v1, 0xb

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 86397
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86398
    return v7
.end method

.method public final A7G()Ljava/lang/String;
    .locals 1

    .line 86399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NH;->A0G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 86400
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final ACF(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 86401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    if-eqz v0, :cond_0

    .line 86402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ma;->ADc(Lcom/facebook/ads/redexgen/X/iS;Lcom/facebook/ads/AdError;)V

    .line 86403
    :cond_0
    return-void
.end method

.method public final ACG()V
    .locals 1

    .line 86404
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iS;->A04()V

    .line 86405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Ma;->ADb(Lcom/facebook/ads/redexgen/X/iS;)V

    .line 86406
    return-void
.end method

.method public final AGo()V
    .locals 4

    .line 86407
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iS;->A05:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iS;->A0A:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iS;->A02:Lcom/facebook/ads/redexgen/X/Ma;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mb;

    invoke-direct {v0, v3, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/Mb;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/iS;Lcom/facebook/ads/redexgen/X/Ma;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A03:Lcom/facebook/ads/redexgen/X/Mb;

    .line 86408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A03:Lcom/facebook/ads/redexgen/X/Mb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mb;->A02()V

    .line 86409
    return-void
.end method

.method public final AJa()Z
    .locals 1

    .line 86410
    const/4 v0, 0x1

    return v0
.end method

.method public final AJm()V
    .locals 4

    .line 86411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A03:Lcom/facebook/ads/redexgen/X/Mb;

    if-eqz v0, :cond_1

    .line 86412
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iS;->A03:Lcom/facebook/ads/redexgen/X/Mb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A0C:[Ljava/lang/String;

    const-string v1, "DiF0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "lQT3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mb;->A03()V

    .line 86413
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 86414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    if-eqz v0, :cond_0

    .line 86415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/NH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NH;->A0H()V

    .line 86416
    :cond_0
    return-void
.end method
