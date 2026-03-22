.class public final Lcom/facebook/ads/redexgen/X/RB;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1547
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "28H1kjICyCSP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QKFmg3qmSW84YfLR5DXewrEtWZ47Hzy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Em"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YyES7HR0UsWs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rGxFrAuyTsOha0QpVFZkpdTTHXBTZM0k"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CeAnScf1I32vhT13KQ6XZJy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RB;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;)Lcom/facebook/ads/redexgen/X/LH;
    .locals 1

    .line 62260
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/RB;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LH;
    .locals 0

    .line 62261
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/RB;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object p0

    .line 62262
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/SS;->A84(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/LL;

    move-result-object p0

    .line 62263
    .local p1, "funnelModule":Lcom/facebook/ads/redexgen/X/LL;
    if-eqz p0, :cond_1

    .line 62264
    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Lcom/facebook/ads/redexgen/X/LL;->ABo(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/j8;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/LL;->ABn()Lcom/facebook/ads/redexgen/X/j8;

    move-result-object p0

    goto :goto_0

    .line 62265
    :cond_1
    new-instance p0, Lcom/facebook/ads/redexgen/X/j3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/j3;-><init>()V

    return-object p0
.end method

.method public static A02(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 3

    .line 62266
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/RB;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/dL;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 62267
    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 3

    .line 62268
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/j3;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/j3;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/dL;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 3

    .line 62269
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A0w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62270
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/RB;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/dL;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 62271
    return-object v0

    .line 62272
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/RB;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/RB;->A00:[Ljava/lang/String;

    const-string v1, "B"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "J1bgC2YpAkuTguvKBul5HQJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 3

    .line 62273
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/RB;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 62274
    .local v0, "funnel":Lcom/facebook/ads/redexgen/X/LH;
    const/16 v0, 0x3e8

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/LH;->AIj(I)V

    .line 62275
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/redexgen/X/dL;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V

    return-object v0
.end method

.method public static A06(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 3

    .line 62276
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/RB;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/dL;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 62277
    return-object v0
.end method

.method public static A07(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 3

    .line 62278
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/RB;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/dL;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 62279
    return-object v0
.end method

.method public static A08(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/6M;
    .locals 3

    .line 62280
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/RB;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A84(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/LL;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LL;)V

    .line 62281
    return-object v0
.end method

.method public static A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;
    .locals 2

    .line 62282
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RB;->A0A()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cu;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/cu;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;)V

    return-object v0
.end method

.method public static declared-synchronized A0A()Lcom/facebook/ads/redexgen/X/Wt;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/RB;

    monitor-enter v1

    .line 62283
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wt;->A02()Lcom/facebook/ads/redexgen/X/Wt;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
