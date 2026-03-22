.class public abstract Lcom/facebook/ads/redexgen/X/NR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NP;,
        Lcom/facebook/ads/redexgen/X/hZ;,
        Lcom/facebook/ads/redexgen/X/NQ;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NR;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NR;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x73

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NR;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xbt
        0x4dt
        0x51t
        0x48t
        0x49t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;ZLcom/facebook/ads/redexgen/X/NP;)V
    .locals 11

    .line 54049
    move-object v7, p0

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/U7;->A27(Landroid/content/Context;)Z

    move-result v0

    move-object v8, p3

    if-eqz v0, :cond_0

    .line 54050
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/NP;->AEa()V

    .line 54051
    return-void

    .line 54052
    :cond_0
    new-instance v9, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v9, v7}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 54053
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/SF;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A07()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v10

    .line 54054
    .local v8, "playableAdData":Lcom/facebook/ads/redexgen/X/NB;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 54055
    .local v9, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0e(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 54056
    if-nez v10, :cond_1

    .line 54057
    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v8, v0}, Lcom/facebook/ads/redexgen/X/NP;->AEZ(Lcom/facebook/ads/AdError;)V

    .line 54058
    return-void

    .line 54059
    :cond_1
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/NB;->A0O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54060
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/NP;->AEa()V

    .line 54061
    return-void

    .line 54062
    :cond_2
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/NB;->A0F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/SB;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54063
    .local p0, "fileData":Lcom/facebook/ads/redexgen/X/SB;
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/SB;->A04:Z

    .line 54064
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SB;->A03:Ljava/lang/String;

    .line 54065
    sget-object v1, Lcom/facebook/ads/redexgen/X/NO;->A00:[I

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/NB;->A0A()Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 54066
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/SD;

    .line 54067
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v2

    .line 54068
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v5

    .line 54069
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 54070
    invoke-virtual {v9, v1}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 54071
    new-instance v0, Lcom/facebook/ads/redexgen/X/SD;

    .line 54072
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/NB;->A0E()Ljava/lang/String;

    move-result-object v1

    .line 54073
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v4

    .line 54074
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 54075
    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 54076
    new-instance v6, Lcom/facebook/ads/redexgen/X/hZ;

    move p0, p2

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/hZ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NP;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/NB;Z)V

    .line 54077
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S8;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54078
    invoke-virtual {v9, v6, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0X(Lcom/facebook/ads/redexgen/X/S7;Lcom/facebook/ads/redexgen/X/S8;)V

    .line 54079
    return-void

    .line 54080
    :pswitch_0
    invoke-virtual {v9, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0Y(Lcom/facebook/ads/redexgen/X/SB;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
