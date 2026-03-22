.class public final Lcom/facebook/ads/redexgen/X/nS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static A05:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Dn;

.field public final A01:I

.field public final A02:J

.field public final A03:Landroid/content/Context;

.field public final A04:Lcom/facebook/ads/redexgen/X/9U;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nS;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 100473
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/nS;-><init>(Landroid/content/Context;I)V

    .line 100474
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 100475
    const/4 v2, 0x0

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/nS;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/9U;IJ)V

    .line 100476
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/9U;IJ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100478
    new-instance v0, Lcom/facebook/ads/redexgen/X/nT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/nT;-><init>(Lcom/facebook/ads/redexgen/X/nS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nS;->A00:Lcom/facebook/ads/redexgen/X/Dn;

    .line 100479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nS;->A03:Landroid/content/Context;

    .line 100480
    iput p3, p0, Lcom/facebook/ads/redexgen/X/nS;->A01:I

    .line 100481
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/nS;->A02:J

    .line 100482
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nS;->A04:Lcom/facebook/ads/redexgen/X/9U;

    .line 100483
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nS;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x52

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

    const/16 v0, 0x22d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nS;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x4dt
        -0x2ct
        -0x2bt
        -0x30t
        -0x1ct
        -0x25t
        -0x1dt
        -0x3ft
        -0x2ct
        -0x23t
        -0x2dt
        -0x2ct
        -0x1ft
        -0x2ct
        -0x1ft
        -0x1et
        -0x4bt
        -0x30t
        -0x2et
        -0x1dt
        -0x22t
        -0x1ft
        -0x18t
        -0x5ft
        -0x32t
        -0x32t
        -0x35t
        -0x32t
        0x7ct
        -0x3bt
        -0x36t
        -0x31t
        -0x30t
        -0x43t
        -0x36t
        -0x30t
        -0x3bt
        -0x43t
        -0x30t
        -0x3bt
        -0x36t
        -0x3dt
        0x7ct
        -0x5et
        -0x5et
        -0x37t
        -0x34t
        -0x3ft
        -0x3dt
        0x7ct
        -0x3ft
        -0x2ct
        -0x30t
        -0x3ft
        -0x36t
        -0x31t
        -0x3bt
        -0x35t
        -0x36t
        -0x46t
        -0x19t
        -0x19t
        -0x1ct
        -0x19t
        -0x6bt
        -0x22t
        -0x1dt
        -0x18t
        -0x17t
        -0x2at
        -0x1dt
        -0x17t
        -0x22t
        -0x2at
        -0x17t
        -0x22t
        -0x1dt
        -0x24t
        -0x6bt
        -0x45t
        -0x3ft
        -0x4at
        -0x48t
        -0x6bt
        -0x26t
        -0x13t
        -0x17t
        -0x26t
        -0x1dt
        -0x18t
        -0x22t
        -0x1ct
        -0x1dt
        -0xct
        0x21t
        0x21t
        0x1et
        0x21t
        -0x31t
        0x18t
        0x1dt
        0x22t
        0x23t
        0x10t
        0x1dt
        0x23t
        0x18t
        0x10t
        0x23t
        0x18t
        0x1dt
        0x16t
        -0x31t
        -0x2t
        0x1ft
        0x24t
        0x22t
        -0x31t
        0x14t
        0x27t
        0x23t
        0x14t
        0x1dt
        0x22t
        0x18t
        0x1et
        0x1dt
        0x6t
        0x33t
        0x33t
        0x30t
        0x33t
        -0x1ft
        0x2at
        0x2ft
        0x34t
        0x35t
        0x22t
        0x2ft
        0x35t
        0x2at
        0x22t
        0x35t
        0x2at
        0x2ft
        0x28t
        -0x1ft
        0x17t
        0x11t
        -0x6t
        -0x1ft
        0x26t
        0x39t
        0x35t
        0x26t
        0x2ft
        0x34t
        0x2at
        0x30t
        0x2ft
        0x10t
        0x33t
        0x25t
        0x28t
        0x29t
        0x28t
        -0x1ct
        0xat
        0x2at
        0x31t
        0x34t
        0x29t
        0x2bt
        0x5t
        0x39t
        0x28t
        0x2dt
        0x33t
        0x16t
        0x29t
        0x32t
        0x28t
        0x29t
        0x36t
        0x29t
        0x36t
        -0xet
        0xet
        0x31t
        0x23t
        0x26t
        0x27t
        0x26t
        -0x1et
        0xet
        0x2bt
        0x24t
        0x28t
        0x2et
        0x23t
        0x25t
        0x3t
        0x37t
        0x26t
        0x2bt
        0x31t
        0x14t
        0x27t
        0x30t
        0x26t
        0x27t
        0x34t
        0x27t
        0x34t
        -0x10t
        0x6t
        0x29t
        0x1bt
        0x1et
        0x1ft
        0x1et
        -0x26t
        0x6t
        0x23t
        0x1ct
        0x29t
        0x2at
        0x2ft
        0x2dt
        -0x5t
        0x2ft
        0x1et
        0x23t
        0x29t
        0xct
        0x1ft
        0x28t
        0x1et
        0x1ft
        0x2ct
        0x1ft
        0x2ct
        -0x18t
        0x4t
        0x27t
        0x19t
        0x1ct
        0x1dt
        0x1ct
        -0x28t
        0x4t
        0x21t
        0x1at
        0x2et
        0x28t
        0x30t
        0xet
        0x21t
        0x1ct
        0x1dt
        0x27t
        0xat
        0x1dt
        0x26t
        0x1ct
        0x1dt
        0x2at
        0x1dt
        0x2at
        -0x1at
        -0x7t
        0x5t
        0x3t
        -0x3ct
        -0x4t
        -0x9t
        -0x7t
        -0x5t
        -0x8t
        0x5t
        0x5t
        0x1t
        -0x3ct
        -0x9t
        -0x6t
        0x9t
        -0x3ct
        -0x9t
        0x4t
        -0x6t
        0x8t
        0x5t
        -0x1t
        -0x6t
        0xet
        -0x3ct
        0x3t
        -0x5t
        -0x6t
        -0x1t
        -0x9t
        -0x37t
        -0x3ct
        -0x5t
        0xet
        0x5t
        0x6t
        0x2t
        -0x9t
        0xft
        -0x5t
        0x8t
        -0x3ct
        -0x5t
        0xet
        0xat
        -0x3ct
        -0x4t
        -0x4t
        0x3t
        0x6t
        -0x5t
        -0x3t
        -0x3ct
        -0x24t
        -0x4t
        0x3t
        0x6t
        -0x5t
        -0x3t
        -0x29t
        0xbt
        -0x6t
        -0x1t
        0x5t
        -0x18t
        -0x5t
        0x4t
        -0x6t
        -0x5t
        0x8t
        -0x5t
        0x8t
        0x1bt
        0x27t
        0x25t
        -0x1at
        0x1et
        0x19t
        0x1bt
        0x1dt
        0x1at
        0x27t
        0x27t
        0x23t
        -0x1at
        0x19t
        0x1ct
        0x2bt
        -0x1at
        0x19t
        0x26t
        0x1ct
        0x2at
        0x27t
        0x21t
        0x1ct
        0x30t
        -0x1at
        0x25t
        0x1dt
        0x1ct
        0x21t
        0x19t
        -0x15t
        -0x1at
        0x1dt
        0x30t
        0x27t
        0x28t
        0x24t
        0x19t
        0x31t
        0x1dt
        0x2at
        -0x1at
        0x1dt
        0x30t
        0x2ct
        -0x1at
        0x1et
        0x24t
        0x19t
        0x1bt
        -0x1at
        0x4t
        0x21t
        0x1at
        0x1et
        0x24t
        0x19t
        0x1bt
        -0x7t
        0x2dt
        0x1ct
        0x21t
        0x27t
        0xat
        0x1dt
        0x26t
        0x1ct
        0x1dt
        0x2at
        0x1dt
        0x2at
        -0x38t
        -0x2ct
        -0x2et
        -0x6dt
        -0x35t
        -0x3at
        -0x38t
        -0x36t
        -0x39t
        -0x2ct
        -0x2ct
        -0x30t
        -0x6dt
        -0x3at
        -0x37t
        -0x28t
        -0x6dt
        -0x3at
        -0x2dt
        -0x37t
        -0x29t
        -0x2ct
        -0x32t
        -0x37t
        -0x23t
        -0x6dt
        -0x2et
        -0x36t
        -0x37t
        -0x32t
        -0x3at
        -0x68t
        -0x6dt
        -0x36t
        -0x23t
        -0x2ct
        -0x2bt
        -0x2ft
        -0x3at
        -0x22t
        -0x36t
        -0x29t
        -0x6dt
        -0x36t
        -0x23t
        -0x27t
        -0x6dt
        -0x2ct
        -0x2bt
        -0x26t
        -0x28t
        -0x6dt
        -0x4ft
        -0x32t
        -0x39t
        -0x2ct
        -0x2bt
        -0x26t
        -0x28t
        -0x5at
        -0x26t
        -0x37t
        -0x32t
        -0x2ct
        -0x49t
        -0x36t
        -0x2dt
        -0x37t
        -0x36t
        -0x29t
        -0x36t
        -0x29t
        0x23t
        0x2ft
        0x2dt
        -0x12t
        0x26t
        0x21t
        0x23t
        0x25t
        0x22t
        0x2ft
        0x2ft
        0x2bt
        -0x12t
        0x21t
        0x24t
        0x33t
        -0x12t
        0x21t
        0x2et
        0x24t
        0x32t
        0x2ft
        0x29t
        0x24t
        0x38t
        -0x12t
        0x2dt
        0x25t
        0x24t
        0x29t
        0x21t
        -0xdt
        -0x12t
        0x25t
        0x38t
        0x2ft
        0x30t
        0x2ct
        0x21t
        0x39t
        0x25t
        0x32t
        -0x12t
        0x25t
        0x38t
        0x34t
        -0x12t
        0x36t
        0x30t
        -0x7t
        -0x12t
        0xct
        0x29t
        0x22t
        0x36t
        0x30t
        0x38t
        0x16t
        0x29t
        0x24t
        0x25t
        0x2ft
        0x12t
        0x25t
        0x2et
        0x24t
        0x25t
        0x32t
        0x25t
        0x32t
    .end array-data
.end method

.method private final A02(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/9U;JLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;ILjava/util/ArrayList;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/9U;",
            "J",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/Fo;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/nM;",
            ">;)V"
        }
    .end annotation

    .line 100484
    .local v29, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/Renderer;>;"
    new-instance v15, Lcom/facebook/ads/redexgen/X/0O;

    sget-object v17, Lcom/facebook/ads/redexgen/X/hv;->A0S:Lcom/facebook/ads/redexgen/X/hv;

    new-instance v2, Lcom/facebook/ads/redexgen/X/hs;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hs;-><init>(Lcom/facebook/ads/redexgen/X/hr;Z)V

    sget-object v19, Lcom/facebook/ads/redexgen/X/Ar;->A00:Lcom/facebook/ads/redexgen/X/Ar;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x32

    const/4 v14, 0x0

    const/16 v28, 0x5

    const/16 v29, 0x0

    move-object/from16 v25, p5

    move-wide/from16 v20, p3

    move-object/from16 v22, p2

    move-object/from16 v26, p6

    move-object/from16 v16, p1

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v31}, Lcom/facebook/ads/redexgen/X/0O;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hs;Lcom/facebook/ads/redexgen/X/Ar;JLcom/facebook/ads/redexgen/X/9U;ZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;IIIII)V

    move-object/from16 v8, p8

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100485
    move/from16 v0, p7

    if-nez v0, :cond_0

    .line 100486
    return-void

    .line 100487
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 100488
    .local v0, "extensionRendererIndex":I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_1

    .line 100489
    add-int/lit8 v9, v9, -0x1

    .line 100490
    .end local v0    # "extensionRendererIndex":I
    .local v4, "extensionRendererIndex":I
    :cond_1
    :try_start_0
    const/16 v2, 0x1e7

    const/16 v1, 0x46

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 100491
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 100492
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x6

    new-array v1, v12, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, v14

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x1

    aput-object v0, v1, v13

    const-class v0, Landroid/os/Handler;

    aput-object v0, v1, v10

    const-class v0, Lcom/facebook/ads/redexgen/X/Fo;

    const/4 v11, 0x3

    aput-object v0, v1, v11

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    aput-object v0, v1, v7

    const/4 v6, 0x5

    aput-object v0, v1, v6

    .line 100493
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 100494
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 100495
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 100496
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100497
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v12, [Ljava/lang/Object;

    aput-object v4, v0, v14

    aput-object v3, v0, v13

    aput-object v25, v0, v10

    aput-object v26, v0, v11

    aput-object v2, v0, v7

    aput-object v1, v0, v6

    .line 100498
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nM;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100499
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/nM;
    .end local v4    # "extensionRendererIndex":I
    .local v5, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v8, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100500
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf3

    const/16 v2, 0x1b

    const/16 v0, 0x66

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100501
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v5    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_1
    move-exception v3

    .line 100502
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/16 v2, 0x7f

    const/16 v1, 0x21

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 100503
    .end local v4    # "extensionRendererIndex":I
    .restart local v5    # "extensionRendererIndex":I
    :catch_2
    :goto_1
    return-void
.end method

.method private final A03(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/9U;[Lcom/facebook/ads/redexgen/X/38;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8D;ILjava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/9U;",
            "[",
            "Lcom/facebook/ads/redexgen/X/38;",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/8D;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/nM;",
            ">;)V"
        }
    .end annotation

    .line 100504
    .local p3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/Renderer;>;"
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/facebook/ads/redexgen/X/0Q;

    sget-object v12, Lcom/facebook/ads/redexgen/X/hv;->A0S:Lcom/facebook/ads/redexgen/X/hv;

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v13, Lcom/facebook/ads/redexgen/X/hs;

    invoke-direct {v13, v2, v0}, Lcom/facebook/ads/redexgen/X/hs;-><init>(Lcom/facebook/ads/redexgen/X/hr;Z)V

    sget-object v14, Lcom/facebook/ads/redexgen/X/Ar;->A00:Lcom/facebook/ads/redexgen/X/Ar;

    .line 100505
    move-object/from16 v11, p1

    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/7p;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/7p;

    move-result-object v21

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    move-object/from16 v20, p5

    move-object/from16 v19, p4

    move-object/from16 v22, p3

    move-object/from16 v15, p2

    invoke-direct/range {v10 .. v22}, Lcom/facebook/ads/redexgen/X/0Q;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hs;Lcom/facebook/ads/redexgen/X/Ar;Lcom/facebook/ads/redexgen/X/9U;ZZZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7p;[Lcom/facebook/ads/redexgen/X/38;)V

    .line 100506
    move-object/from16 v3, p7

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100507
    move/from16 v0, p6

    if-nez v0, :cond_0

    .line 100508
    return-void

    .line 100509
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 100510
    .local v0, "extensionRendererIndex":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 100511
    add-int/lit8 v6, v6, -0x1

    .line 100512
    .end local v0    # "extensionRendererIndex":I
    .local v2, "extensionRendererIndex":I
    :cond_1
    const/4 v5, 0x3

    const/4 v8, 0x1

    :try_start_0
    const/16 v7, 0x19f

    const/16 v2, 0x48

    const/16 v0, 0x13

    invoke-static {v7, v2, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 100513
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 100514
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v5, [Ljava/lang/Class;

    const-class v0, Landroid/os/Handler;

    aput-object v0, v2, v9

    const-class v0, Lcom/facebook/ads/redexgen/X/8D;

    aput-object v0, v2, v8

    const-class v0, [Lcom/facebook/ads/redexgen/X/38;

    aput-object v0, v2, v4

    .line 100515
    invoke-virtual {v7, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 100516
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v19, v0, v9

    aput-object v20, v0, v8

    aput-object v22, v0, v4

    .line 100517
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nM;

    .line 100518
    .local v6, "renderer":Lcom/facebook/ads/redexgen/X/nM;
    add-int/lit8 v7, v6, 0x1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "extensionRendererIndex":I
    .local v7, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v3, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100519
    const/16 v6, 0xd7

    const/16 v2, 0x1c

    const/16 v0, 0x68

    invoke-static {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100520
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v7    # "extensionRendererIndex":I
    .restart local v2    # "extensionRendererIndex":I
    :catch_1
    move-exception v3

    .line 100521
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/16 v2, 0x5d

    const/16 v1, 0x22

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 100522
    :catch_2
    move v6, v7

    .line 100523
    :catch_3
    move v7, v6

    .line 100524
    .end local v2    # "extensionRendererIndex":I
    .restart local v7    # "extensionRendererIndex":I
    :goto_1
    :try_start_2
    const/16 v6, 0x157

    const/16 v2, 0x48

    const/16 v0, 0x66

    invoke-static {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 100525
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 100526
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v5, [Ljava/lang/Class;

    const-class v0, Landroid/os/Handler;

    aput-object v0, v2, v9

    const-class v0, Lcom/facebook/ads/redexgen/X/8D;

    aput-object v0, v2, v8

    const-class v0, [Lcom/facebook/ads/redexgen/X/38;

    aput-object v0, v2, v4

    .line 100527
    invoke-virtual {v6, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 100528
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v19, v0, v9

    aput-object v20, v0, v8

    aput-object v22, v0, v4

    .line 100529
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nM;

    .line 100530
    .local v5, "renderer":Lcom/facebook/ads/redexgen/X/nM;
    add-int/lit8 v6, v7, 0x1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .end local v7    # "extensionRendererIndex":I
    .local v6, "extensionRendererIndex":I
    :try_start_3
    invoke-virtual {v3, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100531
    const/16 v7, 0xbb

    const/16 v2, 0x1c

    const/16 v0, 0x70

    invoke-static {v7, v2, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 100532
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v6    # "extensionRendererIndex":I
    .restart local v7    # "extensionRendererIndex":I
    :catch_5
    move-exception v3

    .line 100533
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/16 v2, 0x3b

    const/16 v1, 0x22

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 100534
    :catch_6
    move v7, v6

    .line 100535
    :catch_7
    move v6, v7

    .line 100536
    .end local v7    # "extensionRendererIndex":I
    .restart local v6    # "extensionRendererIndex":I
    :goto_3
    :try_start_4
    const/16 v7, 0x10e

    const/16 v2, 0x49

    const/16 v0, 0x44

    invoke-static {v7, v2, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 100537
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 100538
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v5, [Ljava/lang/Class;

    const-class v0, Landroid/os/Handler;

    aput-object v0, v2, v9

    const-class v0, Lcom/facebook/ads/redexgen/X/8D;

    aput-object v0, v2, v8

    const-class v0, [Lcom/facebook/ads/redexgen/X/38;

    aput-object v0, v2, v4

    .line 100539
    invoke-virtual {v7, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 100540
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v19, v0, v9

    aput-object v20, v0, v8

    aput-object v22, v0, v4

    .line 100541
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nM;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 100542
    .local v1, "renderer":Lcom/facebook/ads/redexgen/X/nM;
    .end local v6    # "extensionRendererIndex":I
    .local v3, "extensionRendererIndex":I
    :try_start_5
    invoke-virtual {v3, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100543
    const/16 v3, 0xa0

    const/16 v2, 0x1b

    const/16 v0, 0x72

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 100544
    :catch_8
    move-exception v3

    goto :goto_4

    .end local v3    # "extensionRendererIndex":I
    .restart local v6    # "extensionRendererIndex":I
    :catch_9
    move-exception v3

    .line 100545
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    const/16 v2, 0x17

    const/16 v1, 0x24

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nS;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 100546
    .end local v6    # "extensionRendererIndex":I
    .restart local v3    # "extensionRendererIndex":I
    :catch_a
    :goto_5
    return-void
.end method

.method private final A04(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/B3;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/B3;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/nM;",
            ">;)V"
        }
    .end annotation

    .line 100547
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/Renderer;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/13;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/13;-><init>(Lcom/facebook/ads/redexgen/X/B3;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100548
    return-void
.end method

.method private final A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dq;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Dq;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/nM;",
            ">;)V"
        }
    .end annotation

    .line 100549
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/Renderer;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nS;->A00:Lcom/facebook/ads/redexgen/X/Dn;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0z;

    invoke-direct {v0, p2, p3, v1}, Lcom/facebook/ads/redexgen/X/0z;-><init>(Lcom/facebook/ads/redexgen/X/Dq;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Dn;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100550
    return-void
.end method

.method private final A06()[Lcom/facebook/ads/redexgen/X/38;
    .locals 1

    .line 100551
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/38;

    return-object v0
.end method


# virtual methods
.method public final A5Q(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/Dq;Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/9U;)[Lcom/facebook/ads/redexgen/X/nM;
    .locals 20

    .line 100552
    move-object/from16 v5, p6

    move-object/from16 v2, p0

    if-nez v5, :cond_0

    .line 100553
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/nS;->A04:Lcom/facebook/ads/redexgen/X/9U;

    .line 100554
    .end local v18
    .local v0, "drmSessionManager":Lcom/facebook/ads/redexgen/X/9U;
    .end local v18
    .local v10, "drmSessionManager":Lcom/facebook/ads/redexgen/X/9U;
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 100555
    .local v11, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/Renderer;>;"
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/nS;->A03:Landroid/content/Context;

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/nS;->A02:J

    iget v10, v2, Lcom/facebook/ads/redexgen/X/nS;->A01:I

    move-object/from16 v3, p0

    move-object/from16 v9, p2

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/nS;->A02(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/9U;JLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;ILjava/util/ArrayList;)V

    .line 100556
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/nS;->A03:Landroid/content/Context;

    .line 100557
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/nS;->A06()[Lcom/facebook/ads/redexgen/X/38;

    move-result-object v15

    iget v0, v2, Lcom/facebook/ads/redexgen/X/nS;->A01:I

    .line 100558
    move-object/from16 v17, p3

    move-object v12, v3

    move-object v14, v5

    move-object/from16 v16, v8

    move/from16 v18, v0

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/facebook/ads/redexgen/X/nS;->A03(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/9U;[Lcom/facebook/ads/redexgen/X/38;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8D;ILjava/util/ArrayList;)V

    .line 100559
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/nS;->A03:Landroid/content/Context;

    .line 100560
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v15

    iget v0, v2, Lcom/facebook/ads/redexgen/X/nS;->A01:I

    .line 100561
    move-object/from16 v14, p4

    move-object v12, v3

    move/from16 v16, v0

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/nS;->A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dq;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 100562
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/nS;->A03:Landroid/content/Context;

    .line 100563
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget v0, v2, Lcom/facebook/ads/redexgen/X/nS;->A01:I

    .line 100564
    move-object/from16 v4, p5

    move-object v2, v3

    move-object v3, v1

    move v6, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/nS;->A04(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/B3;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 100565
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/nM;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/nM;

    return-object v0
.end method
