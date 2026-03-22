.class public final Lcom/facebook/ads/redexgen/X/ix;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/4t;

.field public A03:Lcom/facebook/ads/redexgen/X/4w;

.field public A04:Lcom/facebook/ads/redexgen/X/4w;

.field public A05:Lcom/facebook/ads/redexgen/X/Ln;

.field public A06:Lcom/facebook/ads/redexgen/X/Lw;

.field public A07:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3003
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FmqEYLEjOBovlIuvu7xTusZ6GIuR3pge"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QeU0DUuOAkxor0HSqOzEAO6P6r4bp110"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WNDsEfwHyCZVTn6rYNycLV5FNYvDeUGR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9kl6sBOZXnbWpCxdvxnR8wYz13jzyZGc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QdIGCZBZzwjOBdbigrYBFiKU6cV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZYM92CzuhlmQLmzBChoRToTytAMTrYW0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "W1yocJmlBB3ILJesLtmFt5l7ilHzoTT3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ix;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87339
    new-instance v0, Lcom/facebook/ads/redexgen/X/nh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ix;->A03:Lcom/facebook/ads/redexgen/X/4w;

    .line 87340
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A00:Lcom/facebook/ads/redexgen/X/Lw;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ix;->A06:Lcom/facebook/ads/redexgen/X/Lw;

    .line 87341
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/7S;
    .locals 3

    .line 87342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ix;->A04:Lcom/facebook/ads/redexgen/X/4w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ix;->A04:Lcom/facebook/ads/redexgen/X/4w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4w;->A5A()Lcom/facebook/ads/redexgen/X/nl;

    move-result-object v2

    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ix;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ix;->A01:I

    .line 87343
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ix;->A01(Lcom/facebook/ads/redexgen/X/nl;II)Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    return-object v0

    .line 87344
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/nl;II)Lcom/facebook/ads/redexgen/X/7S;
    .locals 15

    .line 87345
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/ix;->A05:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Ln;

    .line 87346
    .local v1, "cache":Lcom/facebook/ads/redexgen/X/Ln;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/ix;->A07:Z

    move-object/from16 v6, p1

    if-nez v0, :cond_0

    if-nez v6, :cond_1

    .line 87347
    .end local v2
    :cond_0
    const/4 v8, 0x0

    .line 87348
    .local v13, "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/4u;
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/7S;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/ix;->A03:Lcom/facebook/ads/redexgen/X/4w;

    .line 87349
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4w;->A5A()Lcom/facebook/ads/redexgen/X/nl;

    move-result-object v7

    iget-object v9, v3, Lcom/facebook/ads/redexgen/X/ix;->A06:Lcom/facebook/ads/redexgen/X/Lw;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p3

    move/from16 v10, p2

    invoke-direct/range {v4 .. v14}, Lcom/facebook/ads/redexgen/X/7S;-><init>(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/Lw;ILcom/facebook/ads/redexgen/X/31;ILcom/facebook/ads/redexgen/X/Lq;Lcom/facebook/ads/redexgen/X/Lo;)V

    .line 87350
    return-object v4

    .line 87351
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/ix;->A02:Lcom/facebook/ads/redexgen/X/4t;

    if-eqz v0, :cond_2

    .line 87352
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/ix;->A02:Lcom/facebook/ads/redexgen/X/4t;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ix;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ix;->A08:[Ljava/lang/String;

    const-string v1, "BsDku37cs2h0edzjFuAGMntAOCTwp5qB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0s0KxP1bBIf3QxkhX8XEl0TpXhOFUtvY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/4t;->A59()Lcom/facebook/ads/redexgen/X/iy;

    move-result-object v8

    .local v2, "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/4u;
    goto :goto_0

    .line 87353
    .end local v2    # "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/4u;
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/iz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/iz;-><init>()V

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/iz;->A00(Lcom/facebook/ads/redexgen/X/Ln;)Lcom/facebook/ads/redexgen/X/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iz;->A59()Lcom/facebook/ads/redexgen/X/iy;

    move-result-object v8

    .restart local v2    # "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/4u;
    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/31;
    .locals 1

    .line 87354
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A03(I)Lcom/facebook/ads/redexgen/X/ix;
    .locals 0

    .line 87355
    iput p1, p0, Lcom/facebook/ads/redexgen/X/ix;->A00:I

    .line 87356
    return-object p0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/4w;)Lcom/facebook/ads/redexgen/X/ix;
    .locals 0

    .line 87357
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ix;->A03:Lcom/facebook/ads/redexgen/X/4w;

    .line 87358
    return-object p0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/4w;)Lcom/facebook/ads/redexgen/X/ix;
    .locals 0

    .line 87359
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ix;->A04:Lcom/facebook/ads/redexgen/X/4w;

    .line 87360
    return-object p0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Ln;)Lcom/facebook/ads/redexgen/X/ix;
    .locals 0

    .line 87361
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ix;->A05:Lcom/facebook/ads/redexgen/X/Ln;

    .line 87362
    return-object p0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/7S;
    .locals 3

    .line 87363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ix;->A04:Lcom/facebook/ads/redexgen/X/4w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ix;->A04:Lcom/facebook/ads/redexgen/X/4w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4w;->A5A()Lcom/facebook/ads/redexgen/X/nl;

    move-result-object v2

    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ix;->A00:I

    or-int/lit8 v1, v0, 0x1

    .line 87364
    const/16 v0, -0x3e8

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ix;->A01(Lcom/facebook/ads/redexgen/X/nl;II)Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    return-object v0

    .line 87365
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic A5A()Lcom/facebook/ads/redexgen/X/nl;
    .locals 1

    .line 87366
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ix;->A00()Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    return-object v0
.end method
