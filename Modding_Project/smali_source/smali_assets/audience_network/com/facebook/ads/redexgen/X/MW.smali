.class public final Lcom/facebook/ads/redexgen/X/MW;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A08:Lcom/facebook/ads/redexgen/X/MW;

.field public static A09:[B

.field public static final A0A:Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/MV;

.field public final A03:Lcom/facebook/ads/redexgen/X/SQ;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/util/concurrent/CountDownLatch;

.field public final A06:Ljava/util/concurrent/CountDownLatch;

.field public final A07:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1364
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MW;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/MW;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MW;->A0A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 2

    .line 52211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52212
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Ljava/util/concurrent/CountDownLatch;

    .line 52213
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Ljava/util/concurrent/CountDownLatch;

    .line 52214
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    .line 52215
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Ljava/lang/String;

    .line 52216
    new-instance v0, Lcom/facebook/ads/redexgen/X/MV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    .line 52217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Ljava/lang/String;

    .line 52218
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Ljava/util/concurrent/Executor;

    .line 52219
    if-eqz p2, :cond_0

    .line 52220
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0A()V

    .line 52221
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/MV;
    .locals 0

    .line 52222
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    return-object p0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/MW;
    .locals 5

    const-class v4, Lcom/facebook/ads/redexgen/X/MW;

    monitor-enter v4

    .line 52223
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/MW;->A08:Lcom/facebook/ads/redexgen/X/MW;

    if-nez v0, :cond_0

    .line 52224
    sget-object v3, Lcom/facebook/ads/redexgen/X/XU;->A06:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/MW;-><init>(Lcom/facebook/ads/redexgen/X/SQ;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/ads/redexgen/X/MW;->A08:Lcom/facebook/ads/redexgen/X/MW;

    .line 52225
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/MW;->A08:Lcom/facebook/ads/redexgen/X/MW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 52226
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/SQ;
    .locals 0

    .line 52227
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/MW;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 52228
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v6

    .line 52229
    .local v0, "fileContent":Ljava/lang/String;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52230
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52231
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 52232
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52233
    .local v2, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    new-array v3, v0, [B

    .line 52234
    .local v3, "data":[B
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 52235
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 52236
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v6, v1

    .line 52237
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "data":[B
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "fileContent":Ljava/lang/String;
    .end local p1    # null:Ljava/lang/String;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52238
    .restart local v0    # "fileContent":Ljava/lang/String;
    .restart local p1    # null:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 52239
    .local v1, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    .line 52240
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A19:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 52241
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    goto :goto_0

    .line 52242
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 52243
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    .line 52244
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A17:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 52245
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 52246
    :goto_0
    return-object v6
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/MW;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 52247
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/MW;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 52248
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private A07()V
    .locals 6

    .line 52249
    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/MV;->A08(Ljava/lang/String;)V

    .line 52250
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v0

    .line 52251
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52252
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/MV;->A0A(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/ads/redexgen/X/Sw; {:try_start_0 .. :try_end_0} :catch_0

    .line 52253
    :catch_0
    move-exception v2

    .line 52254
    .local v1, "e":Lcom/facebook/ads/redexgen/X/Sw;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0M()V

    .line 52255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    .line 52256
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Sv;->A18:I

    .line 52257
    invoke-interface {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    goto :goto_0

    .line 52258
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/Sw;
    :catch_1
    move-exception v3

    .line 52259
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0M()V

    .line 52260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    .line 52261
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 52262
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 52263
    :goto_0
    return-void
.end method

.method private A08()V
    .locals 3

    .line 52264
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    monitor-enter v2

    .line 52265
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MV;->A05()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52266
    .local v1, "adsFrequencyCappingDataList":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52267
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0K()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/MW;->A0G(Ljava/lang/String;Ljava/lang/String;)V

    .line 52268
    return-void

    .line 52269
    .end local v1    # "adsFrequencyCappingDataList":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MW;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x40t
        0x52t
        0x39t
        0x2ct
        0x5bt
        0x5et
        0x49t
        0x79t
        0x5bt
        0x4at
        0x4at
        0x53t
        0x54t
        0x5dt
        0x73t
        0x54t
        0x5ct
        0x55t
        0x14t
        0x4et
        0x42t
        0x4et
        0x48t
        0x4at
        0x5bt
        0x5bt
        0x4et
        0x4ft
        0x6at
        0x4ft
        0x58t
        0x5t
        0x5ft
        0x53t
        0x5ft
        0x42t
        0x56t
        0x41t
        0x55t
        0x51t
        0x41t
        0x4at
        0x47t
        0x5dt
        0x7bt
        0x47t
        0x45t
        0x54t
        0x54t
        0x4dt
        0x4at
        0x43t
    .end array-data
.end method

.method private final A0A()V
    .locals 2

    .line 52270
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ii;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ii;-><init>(Lcom/facebook/ads/redexgen/X/MW;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52271
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0

    .line 52272
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A07()V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0

    .line 52273
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A08()V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/MW;Lcom/facebook/ads/redexgen/X/N2;Ljava/lang/String;Z)V
    .locals 0

    .line 52274
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/MW;->A0E(Lcom/facebook/ads/redexgen/X/N2;Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized A0E(Lcom/facebook/ads/redexgen/X/N2;Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 52275
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/N2;->A07(Z)V

    .line 52276
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/N2;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/N2;->A09()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52277
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/MW;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;)V

    goto :goto_0

    .line 52278
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/MV;->A09(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52279
    :goto_0
    monitor-exit p0

    return-void

    .line 52280
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/N2;
    .end local p2    # null:Ljava/lang/String;
    .end local p3    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0F(Ljava/lang/String;)V
    .locals 2

    .line 52281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52282
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52283
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 52284
    :cond_0
    return-void
.end method

.method private final declared-synchronized A0G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 52285
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0H(Ljava/lang/String;[B)V

    .line 52286
    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/MW;->A0H(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52287
    monitor-exit p0

    return-void

    .line 52288
    .end local v2
    .end local v3
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/MW;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0H(Ljava/lang/String;[B)V
    .locals 5

    .line 52289
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52290
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52291
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52292
    .local v1, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 52293
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 52294
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    monitor-exit p0

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:[B
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52295
    .restart local p1    # null:Ljava/lang/String;
    .restart local p2    # null:[B
    :catch_0
    move-exception v4

    .line 52296
    .local v0, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    .line 52297
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A19:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 52298
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    goto :goto_0

    .line 52299
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 52300
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    .line 52301
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A17:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 52302
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 52303
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/MW;Ljava/lang/String;)Z
    .locals 0

    .line 52304
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MW;->A0J(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private A0J(Ljava/lang/String;)Z
    .locals 6

    .line 52305
    const/4 v5, 0x0

    .line 52306
    .local v0, "hasData":Z
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52307
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    .line 52308
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MV;->A05()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/facebook/ads/redexgen/X/N2;

    .line 52309
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "hasData":Z
    .end local p1    # null:Ljava/lang/String;
    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52310
    .restart local v0    # "hasData":Z
    .restart local p1    # null:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 52311
    .local v1, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    .line 52312
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 52313
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 52314
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v5
.end method


# virtual methods
.method public final A0K()Ljava/lang/String;
    .locals 1

    .line 52315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/MV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MV;->A04()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0L()V
    .locals 3

    .line 52316
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52317
    .end local v0
    :cond_0
    return-void

    .line 52318
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Ljava/lang/String;

    .line 52319
    .local v0, "encryptedAdId":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ie;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/ie;-><init>(Lcom/facebook/ads/redexgen/X/MW;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52320
    return-void
.end method

.method public final declared-synchronized A0M()V
    .locals 4

    monitor-enter p0

    .line 52321
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0F(Ljava/lang/String;)V

    .line 52322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0F(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52323
    monitor-exit p0

    return-void

    .line 52324
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0N(Ljava/lang/String;)V
    .locals 2

    .line 52325
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Z

    if-nez v0, :cond_0

    .line 52326
    return-void

    .line 52327
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Ljava/lang/String;

    .line 52328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/if;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/if;-><init>(Lcom/facebook/ads/redexgen/X/MW;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52329
    return-void
.end method

.method public final A0O(Lorg/json/JSONObject;)V
    .locals 2

    .line 52330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1D(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Z

    .line 52331
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Z

    if-nez v0, :cond_0

    .line 52332
    return-void

    .line 52333
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ih;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ih;-><init>(Lcom/facebook/ads/redexgen/X/MW;Lorg/json/JSONObject;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52334
    return-void
.end method
