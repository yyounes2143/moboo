.class public Lcom/facebook/ads/redexgen/X/By;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/f2;


# static fields
.field public static A05:[B


# instance fields
.field public A00:Lorg/json/JSONObject;

.field public A01:Lorg/json/JSONObject;

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/f3;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/f4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/By;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/f3;)V
    .locals 1

    .line 31647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31648
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/By;->A03:Lcom/facebook/ads/redexgen/X/f3;

    .line 31649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A04:Ljava/util/List;

    .line 31650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/By;->A02:Z

    .line 31651
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/By;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

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

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/By;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x4at
        -0x17t
        -0x1et
        -0x28t
        -0x20t
        -0x27t
        -0x6ct
        -0x67t
        -0x19t
        -0x6ct
        -0x28t
        -0x2bt
        -0x18t
        -0x2bt
        -0x6ct
        -0x17t
        -0x1ct
        -0x28t
        -0x2bt
        -0x18t
        -0x27t
        -0x52t
        0x7et
        -0x62t
        -0x62t
        -0x6ct
        -0x28t
        -0x2bt
        -0x18t
        -0x2bt
        -0x6ct
        -0x62t
        -0x62t
        0x7et
        -0x67t
        -0x19t
        0x7et
        -0x62t
        -0x62t
        -0x6ct
        -0x26t
        -0x23t
        -0x1et
        -0x25t
        -0x27t
        -0x1at
        -0x1ct
        -0x1at
        -0x23t
        -0x1et
        -0x18t
        -0x6ct
        -0x62t
        -0x62t
        0x7et
        -0x67t
        -0x19t
        0x7at
        -0x53t
        -0x5at
        -0x64t
        -0x5ct
        -0x63t
        0x58t
        -0x60t
        -0x67t
        -0x55t
        0x58t
        -0x5at
        -0x59t
        0x58t
        -0x62t
        -0x5ft
        -0x5at
        -0x61t
        -0x63t
        -0x56t
        -0x58t
        -0x56t
        -0x5ft
        -0x5at
        -0x54t
        0x6ft
        -0x5et
        -0x65t
        -0x6ft
        -0x67t
        -0x6et
        0x4dt
        -0x6at
        -0x60t
        0x4dt
        -0x65t
        -0x64t
        -0x5ft
        0x4dt
        -0x61t
        -0x6et
        -0x72t
        -0x6ft
        -0x5at
        -0x1ft
        -0x22t
        -0xft
        -0x22t
        -0x63t
        -0x46t
        -0x46t
        -0x63t
        -0x15t
        -0xet
        -0x17t
        -0x17t
        -0x2et
        -0x2bt
        -0x26t
        -0x2dt
        -0x2ft
        -0x22t
        -0x24t
        -0x22t
        -0x2bt
        -0x26t
        -0x20t
        -0x74t
        -0x73t
        -0x57t
        -0x74t
        -0x26t
        -0x1ft
        -0x28t
        -0x28t
        -0x6at
        -0x67t
        -0x62t
        -0x69t
        -0x6bt
        -0x5et
        -0x60t
        -0x5et
        -0x67t
        -0x62t
        -0x5ct
        0x50t
        0x6dt
        0x6dt
        0x50t
        -0x62t
        -0x5bt
        -0x64t
        -0x64t
        -0x27t
        -0x20t
        -0x29t
        -0x29t
    .end array-data
.end method

.method private A02(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 2

    .line 31652
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 31653
    const/4 v0, 0x0

    return v0

    .line 31654
    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 31655
    :cond_1
    return v1

    .line 31656
    :cond_2
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/f1;->A02(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    xor-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final declared-synchronized A03(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 10

    monitor-enter p0

    .line 31657
    if-eqz p1, :cond_9

    .line 31658
    if-nez p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A03:Lcom/facebook/ads/redexgen/X/f3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/f3;->A05()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 31659
    :cond_0
    const/16 v2, 0x84

    const/16 v1, 0x13

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31660
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/By;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A03:Lcom/facebook/ads/redexgen/X/f3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/f3;->A05()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31661
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A01:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/By;->A02(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A00:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/By;->A02(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31662
    :cond_3
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/By;->A00:Lorg/json/JSONObject;

    .line 31663
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/By;->A01:Lorg/json/JSONObject;

    .line 31664
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/facebook/ads/redexgen/X/By;->A02:Z

    .line 31665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/f4;

    .line 31666
    .local v3, "l":Lcom/facebook/ads/redexgen/X/f4;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/f4;->A4e()V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31667
    :cond_4
    :try_start_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x39

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/By;->A03:Lcom/facebook/ads/redexgen/X/f3;

    .line 31668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/By;->A00:Lorg/json/JSONObject;

    const/4 v5, 0x2

    if-nez v1, :cond_6

    const/16 v3, 0x97

    const/4 v2, 0x4

    const/16 v1, 0x4e

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v1

    .line 31669
    :goto_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/By;->A01:Lorg/json/JSONObject;

    if-nez v2, :cond_5

    const/16 v4, 0x97

    const/4 v3, 0x4

    const/16 v2, 0x4e

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v9

    aput-object v1, v3, v8

    aput-object v2, v3, v5

    .line 31670
    invoke-static {v7, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_4

    .line 31671
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/By;->A01:Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 31672
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/By;->A00:Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31673
    :catch_0
    :goto_4
    monitor-exit p0

    return v8

    .line 31674
    :cond_7
    monitor-exit p0

    return v9

    .line 31675
    :cond_8
    :try_start_2
    const/16 v2, 0x71

    const/16 v1, 0x13

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31676
    :cond_9
    const/16 v2, 0x65

    const/16 v1, 0xc

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31677
    .end local p1    # null:Lorg/json/JSONObject;
    .end local p2    # null:Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A3t(Lcom/facebook/ads/redexgen/X/f4;)V
    .locals 1

    monitor-enter p0

    .line 31678
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A04:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31679
    monitor-exit p0

    return-void

    .line 31680
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/By;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/f4;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7a()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    .line 31681
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A00:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 31682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A00:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 31683
    :cond_0
    :try_start_1
    const/16 v2, 0x52

    const/16 v1, 0x13

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A80()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    .line 31685
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A03:Lcom/facebook/ads/redexgen/X/f3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/f3;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A01:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 31687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A01:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 31688
    :cond_0
    :try_start_1
    const/16 v2, 0x52

    const/16 v1, 0x13

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31689
    :cond_1
    const/16 v2, 0x39

    const/16 v1, 0x19

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/By;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A87()Lcom/facebook/ads/redexgen/X/f3;
    .locals 1

    .line 31691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/By;->A03:Lcom/facebook/ads/redexgen/X/f3;

    return-object v0
.end method

.method public final declared-synchronized AAV()Z
    .locals 1

    monitor-enter p0

    .line 31692
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/By;->A02:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/By;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
