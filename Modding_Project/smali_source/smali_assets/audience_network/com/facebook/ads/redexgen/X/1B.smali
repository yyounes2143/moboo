.class public final Lcom/facebook/ads/redexgen/X/1B;
.super Lcom/facebook/ads/redexgen/X/9l;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/nn;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/io/InputStream;

.field public A03:Z

.field public final A04:Landroid/content/res/AssetManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 51
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PTz87XAKzq7jvDXOa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sgpUZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Bde9N92B9PLOW1wkk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DRZuAIPcc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gakZC5ePxUI2GDKV9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pz9vQcEWFJbuREE6smExYo368tZlwkrG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "j43UPSzsV7IrH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "51Zh85ddLdY4jrUIDlK8L"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1B;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 8345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Z)V

    .line 8346
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A04:Landroid/content/res/AssetManager;

    .line 8347
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1B;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x71

    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    const-string v1, "rCVU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    int-to-byte v0, v3

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

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1B;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x7ct
        0x74t
        0x3at
        0x35t
        0x3ft
        0x29t
        0x34t
        0x32t
        0x3ft
        0x4t
        0x3at
        0x28t
        0x28t
        0x3et
        0x2ft
        0x74t
    .end array-data
.end method


# virtual methods
.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 8348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final AFy(Lcom/facebook/ads/redexgen/X/56;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/nn;
        }
    .end annotation

    .line 8349
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A01:Landroid/net/Uri;

    .line 8350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8351
    .local v0, "path":Ljava/lang/String;
    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/nn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v7, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    const-string v1, "3xdRIl55zUe0UeQhp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "pS29hwepCfn47vExr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    .line 8352
    :try_start_1
    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 8353
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8354
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 8355
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0G(Lcom/facebook/ads/redexgen/X/56;)V

    .line 8356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A04:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v3, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:Ljava/io/InputStream;

    .line 8357
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:Ljava/io/InputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 8358
    .local v3, "skipped":J
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_5

    .line 8359
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    const-wide/16 v5, -0x1

    cmp-long v0, v1, v5

    if-eqz v0, :cond_3

    .line 8360
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    goto :goto_1

    .line 8361
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    .line 8362
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    const-wide/32 v1, 0x7fffffff

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    .line 8363
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/nn; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8364
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    :cond_4
    :goto_1
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:Z

    .line 8365
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0H(Lcom/facebook/ads/redexgen/X/56;)V

    .line 8366
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    return-wide v0

    .line 8367
    :cond_5
    :try_start_2
    const/4 v2, 0x0

    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/nn;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/nn;-><init>(Ljava/lang/Throwable;I)V

    .end local p4
    throw v0
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/nn; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8368
    .end local v0
    .end local v3
    .restart local p4
    :catch_0
    move-exception v4

    .line 8369
    .local v0, "e":Ljava/io/IOException;
    instance-of v3, v4, Ljava/io/FileNotFoundException;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_6

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    const-string v1, "P3wDYI6sXfUMf"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    .line 8370
    const/16 v1, 0x7d5

    .line 8371
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/nn;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/nn;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_7
    const/16 v1, 0x7d0

    goto :goto_3

    .line 8372
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 8373
    .local v0, "e":Lcom/facebook/ads/redexgen/X/nn;
    throw v0
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/nn;
        }
    .end annotation

    .line 8374
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/1B;->A01:Landroid/net/Uri;

    .line 8375
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 8376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8377
    :cond_0
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:Ljava/io/InputStream;

    .line 8378
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:Z

    if-eqz v0, :cond_1

    .line 8379
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:Z

    .line 8380
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0E()V

    .line 8381
    :cond_1
    return-void

    .line 8382
    :catch_0
    move-exception v2

    .line 8383
    :try_start_1
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/nn;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/nn;-><init>(Ljava/lang/Throwable;I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8384
    :catchall_0
    move-exception v1

    .end local v2
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:Ljava/io/InputStream;

    .line 8385
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:Z

    if-eqz v0, :cond_2

    .line 8386
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:Z

    .line 8387
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0E()V

    .line 8388
    :cond_2
    throw v1
.end method

.method public final read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/nn;
        }
    .end annotation

    .line 8389
    if-nez p3, :cond_0

    .line 8390
    const/4 v0, 0x0

    return v0

    .line 8391
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    .line 8392
    return v4

    .line 8393
    :cond_1
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    .line 8394
    .local v0, "bytesToRead":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 8395
    .local v0, "bytesRead":I
    if-ne v5, v4, :cond_3

    goto :goto_1

    .line 8396
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_0

    .line 8397
    :goto_1
    return v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8398
    :cond_3
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A06:[Ljava/lang/String;

    const-string v1, "7Z6S4bUZVA19c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmp-long v0, v3, v6

    if-eqz v0, :cond_5

    .line 8399
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    int-to-long v0, v5

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:J

    .line 8400
    :cond_5
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/9l;->A0F(I)V

    .line 8401
    return v5

    .line 8402
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 8403
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/nn;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/nn;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method
